using HR.Model.System.Model;
using HR.Model.System.Model.Dto;
using HR.ServiceCore.Services.IService;
using Microsoft.AspNetCore.Mvc;

namespace HR.Admin.WebApi.Controllers.System
{
    /// <summary>
    /// 用户扩展信息表
    /// </summary>
    [Route("system/sysUserExtend")]
    [ApiExplorerSettings(GroupName = "sys")]
    public class sysUserExtendController : BaseController
    {
        /// <summary>
        /// 用户扩展信息表接口
        /// </summary>
        private readonly IsysUserExtendService _sysUserExtendService;

        public sysUserExtendController(IsysUserExtendService sysUserExtendService)
        {
            _sysUserExtendService = sysUserExtendService;
        }

        /// <summary>
        /// 查询用户扩展信息表列表
        /// </summary>
        /// <param name="parm"></param>
        /// <returns></returns>
        [HttpGet("list")]
        [ActionPermissionFilter(Permission = "sysUserExtend:list")]
        public IActionResult QuerysysUserExtend([FromQuery] sysUserExtendQueryDto parm)
        {
            var response = _sysUserExtendService.GetList(parm);
            return SUCCESS(response);
        }


        /// <summary>
        /// 查询用户扩展信息表详情
        /// </summary>
        /// <param name="UserId"></param>
        /// <returns></returns>
        [HttpGet("{UserId}")]
        [ActionPermissionFilter(Permission = "sysUserExtend:query")]
        public IActionResult GetsysUserExtend(string UserId)
        {
            var response = _sysUserExtendService.GetInfo(UserId);

            var info = response.Adapt<sysUserExtendDto>();
            return SUCCESS(info);
        }

        /// <summary>
        /// 更新用户扩展信息表
        /// </summary>
        /// <returns></returns>
        [HttpPut]
        [ActionPermissionFilter(Permission = "sysUserExtend:edit")]
        [Log(Title = "用户扩展信息表", BusinessType = BusinessType.UPDATE)]
        public IActionResult UpdatesysUserExtend([FromBody] sysUserExtendDto parm)
        {
            var modal = parm.Adapt<sysUserExtend>().ToUpdate(HttpContext);
            var response = _sysUserExtendService.UpdatesysUserExtend(modal);

            return ToResponse(response);
        }
    }
}
