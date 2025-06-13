using Infrastructure;
using Infrastructure.Model;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.Extensions.Logging;
using System.Security.Claims;
using HR.Common;
using System.Net;
using Microsoft.AspNetCore.Mvc.Controllers;
using Microsoft.AspNetCore.Mvc.RazorPages;

namespace HR.ServiceCore.Middleware
{
    /// <summary>
    /// jwt认证中间件
    /// </summary>
    public class JwtAuthMiddleware
    {
        private readonly RequestDelegate _next;
        private readonly ILogger<JwtAuthMiddleware> _logger;
        private static readonly string[] _whitelistPaths = new[]
        {
            ".png",
            "/msgHub"
        };

        public JwtAuthMiddleware(RequestDelegate next, ILogger<JwtAuthMiddleware> logger)
        {
            _next = next;
            _logger = logger;
        }

        public async Task InvokeAsync(HttpContext context)
        {
            var path = context.Request.Path.Value;
            
            // 如果请求是带扩展名的（即包含 .）
            if (path.Contains('.'))
            {
                await _next(context);
                return;
            }
            // 白名单路径放行
            if (_whitelistPaths.Any(p => path.StartsWith(p, StringComparison.OrdinalIgnoreCase)))
            {
                await _next(context);
                return;
            }
            // 允许匿名访问的端点
            var endpoint = context.GetEndpoint();
            var allowAnonymous = endpoint?.Metadata?.GetMetadata<AllowAnonymousAttribute>() != null;

            if (allowAnonymous)
            {
                await _next(context);
                return;
            }
            // 获取客户端信息
            string ip = HttpContextExtension.GetClientUserIp(context);
            string url = context.Request.Path;
            string osType = context.Request.Headers["os"];
            // 核心验证逻辑
            TokenModel loginUser = JwtUtil.GetLoginUser(context);

            if (loginUser != null)// 令牌有效
            {
                // 令牌刷新机制 (5分钟内过期时)
                var now = DateTime.UtcNow;
                var ts = loginUser.ExpireTime - now;
                var cacheKey = $"token_{loginUser.UserId}";

                if (!CacheHelper.Exists(cacheKey) && ts.TotalMinutes < 5 && ts.TotalMinutes > 0)
                {
                    // 生成新令牌
                    var newToken = JwtUtil.GenerateJwtToken(JwtUtil.AddClaims(loginUser));
                    // 缓存防重复刷新
                    CacheHelper.SetCache(cacheKey, cacheKey, 1);
                    // 设置响应头
                    if (!string.IsNullOrEmpty(osType))
                    {
                        context.Response.Headers.Append("Access-Control-Expose-Headers", "X-Refresh-Token");
                    }
                    // 身份挂载
                    context.Response.Headers.Append("X-Refresh-Token", newToken);
                    _logger.LogInformation($"刷新Token: {loginUser.UserName}");
                }

                // 还可以挂载到 context.User
                var identity = new ClaimsIdentity(JwtUtil.AddClaims(loginUser), "jwt");
                context.User = new ClaimsPrincipal(identity);

                await _next(context);// 放行请求
            }
            else// 令牌无效
            {
                // 1. 后台API请求（以/dev-api开头）
                if (context.Request.Path.StartsWithSegments("/dev-api"))
                {
                    string msg = $"请求访问[{url}]失败，Token无效或未登录";
                    _logger.LogWarning(msg);
                    //context.Response.StatusCode = StatusCodes.Status401Unauthorized;
                    await context.Response.WriteAsJsonAsync(ApiResult.Error(ResultCode.DENY, msg));
                }
                // 2. 前台页面请求
                else
                {
                    if (endpoint == null || !IsValidEndpoint(endpoint)) // 路径无效 → 直接返回404
                    {
                        Console.WriteLine($"有效页面但未认证，重定向登录");
                        context.Response.StatusCode = 404;
                        context.Response.Redirect($"/error/404");
                        return;
                    }
                    if (allowAnonymous) // 路径无效 → 直接返回404
                    {
                        await _next(context);
                    }
                    else // 路径有效但需要认证 → 重定向登录
                    {
                        Console.WriteLine($"有效页面但未认证，重定向登录");
                        context.Response.Redirect($"/login?returnUrl={GetFullUrl(context)}");
                        return;
                    }
                }
            }            
        }

        private bool IsValidEndpoint(Endpoint endpoint)
        {
            // 1. 检查是否有实际请求委托
            if (endpoint.RequestDelegate == null)
                return false;

            // 2. 检查是否是框架特殊端点
            if (endpoint.DisplayName?.Contains("Fallback") == true || endpoint.DisplayName?.Contains("Dummy") == true)
            {
                return false;
            }

            // 3. 检查MVC终点的Controller/Action是否存在
            var actionDescriptor = endpoint.Metadata.GetMetadata<ControllerActionDescriptor>();
            if (actionDescriptor != null)
            {
                try
                {
                    // 获取控制器类型
                    var controllerType = Type.GetType(actionDescriptor.ControllerTypeInfo.FullName);
                    if (controllerType == null)
                        return false;

                    // 检查方法是否存在
                    var method = controllerType.GetMethod(actionDescriptor.ActionName);
                    return method != null;
                }
                catch
                {
                    return false;
                }
            }

            // 4. 检查Razor Pages
            var pageDescriptor = endpoint.Metadata.GetMetadata<PageActionDescriptor>();
            if (pageDescriptor != null)
            {
                return File.Exists(pageDescriptor.RelativePath);
            }

            // 5. 其他类型端点默认为有效
            return true;
        }

        /// <summary>
        /// 完整实现 GetFullUrl
        /// </summary>
        /// <param name="context"></param>
        /// <returns></returns>
        private string GetFullUrl(HttpContext context)
        {
            // 获取原始请求路径
            var path = context.Request.Path;

            // 获取查询字符串（如果有）
            var queryString = context.Request.QueryString;

            // 拼接完整URL
            var fullUrl = path.HasValue ? path.Value : "/";

            // 如果存在查询字符串，则附加
            if (queryString.HasValue)
            {
                fullUrl += queryString.Value;
            }

            // URL编码返回
            return WebUtility.UrlEncode(fullUrl);
        }
    }
}
