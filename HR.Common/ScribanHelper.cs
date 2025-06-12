using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.DependencyInjection;
using Scriban.Parsing;
using Scriban.Runtime;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Scriban;

namespace HR.Common
{

    public static class ScribanHelper
    {
        /// <summary>
        /// 渲染 Scriban 模板
        /// </summary>
        /// <param name="templateBasePath">模板基础路径，如 Template/login.html（会自动加语言后缀）</param>
        /// <param name="model">模板数据</param>
        /// <param name="lang">语言（kr 或 cn），为空时尝试自动识别</param>
        /// <param name="requestHost">请求域名，用于自动识别语言</param>
        public static string RenderTemplate(string templateBasePath, object model, string lang = null, string requestHost = null)
        {
            // 自动识别语言
            if (string.IsNullOrEmpty(lang) && !string.IsNullOrEmpty(requestHost))
            {
                lang = requestHost.StartsWith("kr.") ? "kr" :
                       requestHost.StartsWith("cn.") ? "cn" : "cn";
            }

            lang ??= "cn"; // 默认中文

            // 根据语言生成模板路径，如：Template/login_kr.html
            var ext = Path.GetExtension(templateBasePath); // .html
            var pathWithoutExt = templateBasePath.Substring(0, templateBasePath.Length - ext.Length);
            var finalPath = $"{pathWithoutExt}_{lang}{ext}";

            if (!File.Exists(finalPath))
            {
                throw new FileNotFoundException($"模板文件不存在: {finalPath}");
            }

            var content = File.ReadAllText(finalPath);
            var template = Scriban.Template.Parse(content);

            return template.Render(model, member => member.Name);
        }

        public static string RenderTemplate(string templatePath, string lang, object model = null)
        {
            // 替换语言目录
            if (lang == "kr")
                templatePath = templatePath.Replace("Template/", "Template/");
            else
                templatePath = templatePath.Replace("Template/", "Template/");

            if (!File.Exists(templatePath))
                return $"模板文件不存在: {templatePath}";

            string content = File.ReadAllText(templatePath);
            var template = Template.Parse(content);

            if (model == null)
                model = new { };

            return template.Render(model);
        }
    }
}

