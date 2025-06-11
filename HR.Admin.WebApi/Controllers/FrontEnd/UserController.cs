using HR.Model.Models;
using HR.Model.System.Dto;
using HR.Model.System;
using HR.ServiceCore.Model.Dto;
using Lazy.Captcha.Core;
using Microsoft.AspNetCore.Mvc;

namespace HR.Admin.WebApi.Controllers.FrontEnd
{
    /// <summary>
    /// 前台用户有关
    /// </summary>
    [Route("[controller]/[action]")]
    [AllowAnonymous]
    [ApiExplorerSettings(GroupName = "frontEnd")]
    public class UserController : BaseController
    {
        private readonly ISysUserService sysUserService;
        private readonly ISysMenuService sysMenuService;
        private readonly ISysLoginService sysLoginService;
        private readonly ISysPermissionService permissionService;
        private readonly ICaptcha SecurityCodeHelper;
        private readonly ISysConfigService sysConfigService;
        private readonly ISysRoleService roleService;
        private readonly ISmsCodeLogService smsCodeLogService;

        public UserController(
            ISysMenuService sysMenuService,
            ISysUserService sysUserService,
            ISysLoginService sysLoginService,
            ISysPermissionService permissionService,
            ISysConfigService configService,
            ISysRoleService sysRoleService,
            ISmsCodeLogService smsCodeLogService,
            ICaptcha captcha)
        {
            SecurityCodeHelper = captcha;
            this.sysMenuService = sysMenuService;
            this.sysUserService = sysUserService;
            this.sysLoginService = sysLoginService;
            this.permissionService = permissionService;
            this.sysConfigService = configService;
            this.smsCodeLogService = smsCodeLogService;
            roleService = sysRoleService;
        }

        /// <summary>
        /// 注册
        /// </summary>
        /// <param name="dto"></param>
        /// <returns></returns>
        [HttpPost("/register")]
        [AllowAnonymous]
        [Log(Title = "注册", BusinessType = BusinessType.INSERT)]
        public IActionResult Register([FromBody] RegisterDto dto)
        {
            SysConfig config = sysConfigService.GetSysConfigByKey("sys.account.register");
            if (config?.ConfigValue != "true")
            {
                return ToResponse(ResultCode.CUSTOM_ERROR, "当前系统没有开启注册功能！");
            }
            SysConfig sysConfig = sysConfigService.GetSysConfigByKey("sys.account.captchaOnOff");
            if (sysConfig?.ConfigValue != "off" && !SecurityCodeHelper.Validate(dto.Uuid, dto.Code))
            {
                return ToResponse(ResultCode.CAPTCHA_ERROR, "验证码错误");
            }
            dto.UserIP = HttpContext.GetClientUserIp();
            SysUser user = sysUserService.Register(dto);
            if (user.UserId > 0)
            {
                return SUCCESS(user);
            }
            return ToResponse(ResultCode.CUSTOM_ERROR, "注册失败，请联系管理员");
        }

        /// <summary>
        /// 登录
        /// </summary>
        /// <param name="loginBody">登录对象</param>
        /// <returns></returns>
        [Route("login")]
        [HttpPost]
        [Log(Title = "登录")]
        [AllowAnonymous]
        public IActionResult Login([FromBody] LoginBodyDto loginBody)
        {
            if (loginBody == null) { throw new CustomException("请求参数错误"); }
            loginBody.LoginIP = HttpContextExtension.GetClientUserIp(HttpContext);
            SysConfig sysConfig = sysConfigService.GetSysConfigByKey("sys.account.captchaOnOff");
            if (sysConfig?.ConfigValue != "off" && !SecurityCodeHelper.Validate(loginBody.Uuid, loginBody.Code))
            {
                return ToResponse(ResultCode.CAPTCHA_ERROR, "验证码错误");
            }

            sysLoginService.CheckLockUser(loginBody.Username);
            string location = HttpContextExtension.GetIpInfo(loginBody.LoginIP);
            var user = sysLoginService.Login(loginBody, new SysLogininfor() { LoginLocation = location });

            List<SysRole> roles = roleService.SelectUserRoleListByUserId(user.UserId);
            //权限集合 eg *:*:*,system:user:list
            List<string> permissions = permissionService.GetMenuPermission(user);

            TokenModel loginUser = new(user.Adapt<TokenModel>(), roles.Adapt<List<Roles>>())
            {
                TenantId = loginBody.TenantId
            };
            CacheService.SetUserPerms(GlobalConstant.UserPermKEY + user.UserId, permissions);
            return SUCCESS(JwtUtil.GenerateJwtToken(JwtUtil.AddClaims(loginUser)));
        }

        /// <summary>
        /// 注销
        /// </summary>
        /// <returns></returns>
        [Log(Title = "注销")]
        [HttpPost("logout")]
        [AllowAnonymous]
        public IActionResult LogOut()
        {
            var userid = HttpContext.GetUId();
            var name = HttpContext.GetName();

            CacheService.RemoveUserPerms(GlobalConstant.UserPermKEY + userid);
            return SUCCESS(new { name, id = userid });
        }

        /// <summary>
        /// 生成图片验证码
        /// </summary>
        /// <returns></returns>
        [HttpGet("captchaImage")]
        [AllowAnonymous]
        public IActionResult CaptchaImage()
        {
            string uuid = Guid.NewGuid().ToString().Replace("-", "");

            SysConfig sysConfig = sysConfigService.GetSysConfigByKey("sys.account.captchaOnOff");
            var captchaOff = sysConfig?.ConfigValue ?? "0";
            var info = SecurityCodeHelper.Generate(uuid, 60);
            var obj = new { captchaOff, uuid, img = info.Base64 };// File(stream, "image/png")

            return SUCCESS(obj);
        }

        ///// <summary>
        ///// 发送短息
        ///// </summary>
        ///// <param name="dto"></param>
        ///// <returns></returns>
        //[HttpPost("/checkMobile")]
        //[Log(Title = "发送短息", BusinessType = BusinessType.INSERT)]
        //[AllowAnonymous]
        //public IActionResult CheckMobile([FromBody] PhoneLoginDto dto)
        //{
        //    dto.LoginIP = HttpContextExtension.GetClientUserIp(HttpContext);
        //    var uid = HttpContext.GetUId();
        //    //SysConfig sysConfig = sysConfigService.GetSysConfigByKey("sys.account.captchaOnOff");
        //    //if (!SecurityCodeHelper.Validate(dto.Uuid, dto.Code, false))
        //    //{
        //    //    return ToResponse(ResultCode.CUSTOM_ERROR, "验证码错误");
        //    //}
        //    if (dto.SendType == 0)
        //    {
        //        var info = sysUserService.GetFirst(f => f.Phonenumber == dto.PhoneNum) ?? throw new CustomException(ResultCode.CUSTOM_ERROR, "该手机号不存在", false);
        //        uid = info.UserId;
        //    }
        //    if (dto.SendType == 1)
        //    {
        //        if (sysUserService.CheckPhoneBind(dto.PhoneNum).Count > 0)
        //        {
        //            return ToResponse(ResultCode.CUSTOM_ERROR, "手机号已绑定其他账号");
        //        }
        //    }

        //    string location = HttpContextExtension.GetIpInfo(dto.LoginIP);

        //    smsCodeLogService.AddSmscodeLog(new SmsCodeLog()
        //    {
        //        Userid = uid,
        //        PhoneNum = dto.PhoneNum.ParseToLong(),
        //        SendType = dto.SendType,
        //        UserIP = dto.LoginIP,
        //        Location = location,
        //    });

        //    return SUCCESS(1);
        //}

        /// <summary>
        /// 发送邮件
        /// </summary>
        /// <param name="dto"></param>
        /// <returns></returns>
        [HttpPost("/checkEmail")]
        [Log(Title = "发送邮件", BusinessType = BusinessType.INSERT)]
        [AllowAnonymous]
        public IActionResult CheckEmail([FromBody] PhoneLoginDto dto)
        {
            return null;
        }

        /// <summary>
        /// 找回密码
        /// </summary>
        /// <param name="dto"></param>
        /// <returns></returns>
        [HttpPost("/RetrievePsw")]
        [AllowAnonymous]
        public IActionResult RetrievePsw([FromBody] PhoneLoginDto dto)
        {
            return null;
        }

        /// <summary>
        /// 找回ID
        /// </summary>
        /// <param name="dto"></param>
        /// <returns></returns>
        [HttpPost("/RetrieveId")]
        [AllowAnonymous]
        public IActionResult RetrieveId([FromBody] PhoneLoginDto dto)
        {
            return null;
        }

        /// <summary>
        /// 修改密码
        /// </summary>
        /// <param name="dto"></param>
        /// <returns></returns>
        [HttpPost("/changePassword")]
        public IActionResult changePassword([FromBody] PhoneLoginDto dto)
        {
            return null;
        }

        /// <summary>
        /// 修改头像
        /// </summary>
        /// <param name="dto"></param>
        /// <returns></returns>
        [HttpPost("/changeAvatar")]
        public IActionResult changeAvatar([FromBody] PhoneLoginDto dto)
        {
            return null;
        }

        /// <summary>
        /// 修改信息
        /// </summary>
        /// <param name="dto"></param>
        /// <returns></returns>
        [HttpPost("/changeInformation")]
        public IActionResult changeInformation([FromBody] PhoneLoginDto dto)
        {
            return null;
        }
    }
}
