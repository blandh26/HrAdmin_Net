﻿using AspNetCoreRateLimit;
using Microsoft.AspNetCore.Builder;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using System;

namespace HR.Infrastructure.WebExtensions
{
    public static class IPRateExtension
    {
        public static void AddIPRate(this IServiceCollection services, IConfiguration configuration)
        {
            ArgumentNullException.ThrowIfNull(services);

            //从appsettings.json中加载常规配置，IpRateLimiting与配置文件中节点对应
            services.Configure<IpRateLimitOptions>(configuration.GetSection("IpRateLimiting"));

            //从appsettings.json中加载Ip规则
            services.Configure<IpRateLimitPolicies>(configuration.GetSection("IpRateLimitPolicies"));
            //注入计数器和规则存储
            services.AddSingleton<IIpPolicyStore, MemoryCacheIpPolicyStore>();
            services.AddSingleton<IRateLimitCounterStore, MemoryCacheRateLimitCounterStore>();
            //配置（解析器、计数器密钥生成器）
            services.AddSingleton<IRateLimitConfiguration, RateLimitConfiguration>();
            services.AddSingleton<IProcessingStrategy, AsyncKeyLockProcessingStrategy>();

            services.AddRateLimiter(limiterOptions =>
            {
                // 配置限流策略
            });
        }
    }
}
