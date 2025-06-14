﻿using System.ComponentModel;

namespace Infrastructure
{
    public enum ResultCode
    {
        [Description("success")]
        SUCCESS = 200,

        [Description("没有更多数据")]
        NO_DATA = 210,

        [Description("参数错误")]
        PARAM_ERROR = 101,

        [Description("验证码错误")]
        CAPTCHA_ERROR = 103,

        [Description("登录错误")]
        LOGIN_ERROR = 105,

        [Description("操作失败")]
        FAIL = 1,

        [Description("服务端出错啦")]
        GLOBAL_ERROR = 500,

        [Description("自定义异常")]
        CUSTOM_ERROR = 110,

        [Description("非法请求")]
        INVALID_REQUEST = 116,

        [Description("授权失败")]
        OAUTH_FAIL = 201,

        [Description("请先绑定手机号")]
        PHONE_BIND = 202,

        [Description("未授权")]
        DENY = 401,

        [Description("授权访问失败")]
        FORBIDDEN = 403,

        [Description("Bad Request")]
        BAD_REQUEST = 400,

        [Description("Not Found")]
        NOT_FOUND = 404,

        [Description("Too Many Requests")]
        TOO_MANY_REQUESTS = 429
    }
}
