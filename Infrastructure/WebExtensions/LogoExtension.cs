using Infrastructure.Helper;
using JinianNet.JNTemplate;
using Microsoft.Extensions.DependencyInjection;
using System;

namespace Infrastructure
{
    public static class LogoExtension
    {
        public static void AddLogo(this IServiceCollection services)
        {
            Console.ForegroundColor = ConsoleColor.Blue;
            var contentTpl = JnHelper.ReadTemplate("", "logo.txt");
            var content = contentTpl?.Render();
            var url = AppSettings.GetConfig("urls");
            Console.WriteLine(content);
            Console.ForegroundColor = ConsoleColor.Blue;
            Console.WriteLine("github: https://github.com/blandh26/HrAdmin_Net");
            Console.WriteLine($"Swagger：{url}/swagger/index.html");
            Console.WriteLine($"InitSeedData：{url}/common/InitSeedData");
        }
    }
}
