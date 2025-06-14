﻿using Infrastructure;
using Infrastructure.Attribute;
using Infrastructure.Model;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Http.Features;
using NLog;
using System.Text.Encodings.Web;
using HR.Common;
using HR.Infrastructure.IPTools;
using HR.Model.System;
using HR.ServiceCore.Services;
using textJson = System.Text.Json;
using System.Net;

namespace HR.ServiceCore.Middleware
{
    /// <summary>
    /// 全局异常处理中间件
    /// 调用 app.UseMiddlewareGlobalExceptionMiddleware>();
    /// </summary>
    public class GlobalExceptionMiddleware
    {
        private readonly RequestDelegate next;
        private readonly ISysOperLogService SysOperLogService;

        static readonly Logger Logger = LogManager.GetCurrentClassLogger();
        private readonly textJson.JsonSerializerOptions options = new()
        {
            Encoder = JavaScriptEncoder.UnsafeRelaxedJsonEscaping,
            PropertyNamingPolicy = textJson.JsonNamingPolicy.CamelCase,
            WriteIndented = true
        };

        /// <summary>
        /// 
        /// </summary>
        /// <param name="next"></param>
        /// <param name="sysOperLog"></param>
        public GlobalExceptionMiddleware(RequestDelegate next, ISysOperLogService sysOperLog)
        {
            this.next = next;
            this.SysOperLogService = sysOperLog;
        }

        public async Task Invoke(HttpContext context)
        {
            try
            {
                await next(context);
            }
            catch (Exception ex)
            {
                await HandleExceptionAsync(context, ex);
            }
        }

        private async Task HandleExceptionAsync(HttpContext context, Exception ex)
        {
            // 1. 初始化变量
            LogLevel logLevel = LogLevel.Info;
            int code = (int)ResultCode.GLOBAL_ERROR;
            string msg;
            string error = string.Empty;
            bool notice = true;
            // 2. 自定义异常处理
            if (ex is CustomException customException)
            {
                code = customException.Code;
                msg = customException.Message;
                error = customException.LogMsg;
                notice = customException.Notice;
            }
            else if (ex is ArgumentException)//参数异常
            {
                code = (int)ResultCode.PARAM_ERROR;
                msg = ex.Message;
            }
            else // 其他异常
            {
                var q1 = "Exception has been thrown by the target of an invocation";
                var an1 = string.Empty;
                if (ex.Message.Contains(q1))
                {
                    an1 = $"====请查看issue：https://github.com/blandh26/HrAdmin_Net/issues";
                }
                msg = "服务器好像出了点问题，请联系系统管理员...";
                error = $"异常原因：{ex.Message}{an1}";
                logLevel = LogLevel.Error;
                context.Response.StatusCode = 500;
            }
            // 3. 创建API响应对象（即使前台请求也需要创建用于日志记录）
            ApiResult apiResult = new(code, msg);
#if DEBUG
            if (logLevel == LogLevel.Error)
            {
                apiResult.Add("error", "请在issue里面寻找答案或者官方文档查看常见问题：https://github.com/blandh26/HrAdmin_Net/issues");
            }
#endif
            string responseResult = textJson.JsonSerializer.Serialize(apiResult, options);
            string ip = HttpContextExtension.GetClientUserIp(context);
            var ip_info = IpTool.Search(ip);
            // 4. 创建操作日志
            SysOperLog sysOperLog = new()
            {
                Status = 1,
                OperIp = ip,
                OperUrl = HttpContextExtension.GetRequestUrl(context),
                RequestMethod = context.Request.Method,
                JsonResult = responseResult,
                ErrorMsg = string.IsNullOrEmpty(error) ? msg : error,
                OperName = HttpContextExtension.GetName(context),
                OperLocation = ip_info.Province + " " + ip_info.City,
                OperTime = DateTime.Now,
                OperParam = HttpContextExtension.GetRequestValue(context, context.Request.Method)
            };
            // 5. 获取端点信息
            var endpoint = GetEndpoint(context);
            if (endpoint != null)
            {
                var logAttribute = endpoint.Metadata.GetMetadata<LogAttribute>();
                if (logAttribute != null)
                {
                    sysOperLog.BusinessType = (int)logAttribute.BusinessType;
                    sysOperLog.Title = logAttribute?.Title;
                    sysOperLog.OperParam = logAttribute.IsSaveRequestData ? sysOperLog.OperParam : "";
                    sysOperLog.JsonResult = logAttribute.IsSaveResponseData ? sysOperLog.JsonResult : "";
                }
            }
            // 6. 记录日志事件
            LogEventInfo ei = new(logLevel, "GlobalExceptionMiddleware", error)
            {
                Exception = ex,
                Message = error
            };
            ei.Properties["status"] = 1;//走正常返回都是通过走GlobalExceptionFilter不通过
            ei.Properties["jsonResult"] = responseResult;
            ei.Properties["requestParam"] = sysOperLog.OperParam;
            ei.Properties["user"] = sysOperLog.OperName;

            Logger.Log(ei);

            // 7. 准备通知消息
            string errorMsg = $"> 操作人：{sysOperLog.OperName}" +
                $"\n> 操作地区：{sysOperLog.OperIp}({sysOperLog.OperLocation})" +
                $"\n> 操作模块：{sysOperLog.Title}" +
                $"\n> 操作地址：{sysOperLog.OperUrl}" +
                $"\n> 错误信息：{msg}\n\n> {error}";
            // 8. 插入操作日志
            SysOperLogService.InsertOperlog(sysOperLog);
            // 9. 发送通知
            if (notice)
            {
                WxNoticeHelper.SendMsg("系统异常", errorMsg, msgType: WxNoticeHelper.MsgType.markdown);
            }
            // 前台异常处理（以/dev-api开头）
            if (!context.Request.Path.StartsWithSegments("/dev-api"))
            {
                // 重定向到500错误页面
                context.Response.Redirect("/500");
                return;
            }
            else
            {
                context.Response.ContentType = "text/json;charset=utf-8";
                await context.Response.WriteAsync(responseResult, System.Text.Encoding.UTF8);
            }
        }

        public static Endpoint GetEndpoint(HttpContext context)
        {
            if (context == null)
            {
                throw new ArgumentNullException(nameof(context));
            }

            return context.Features.Get<IEndpointFeature>()?.Endpoint;
        }
    }
}
