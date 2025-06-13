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
    /// <summary>
    /// Scriban 模板帮助类（支持语言切换、include、自定义函数）
    /// </summary>
    public static class ScribanHelper
    {
        /// <summary>
        /// 渲染 Scriban 模板（支持自动语言切换、include、自定义函数）
        /// </summary>
        /// <param name="templateBasePath">模板路径，如 Template/login.html（自动加 _kr 或 _cn）</param>
        /// <param name="model">模板数据对象</param>
        /// <param name="lang">语言代码（kr / cn），默认 cn</param>
        /// <returns>渲染后的 HTML 字符串</returns>
        public static string RenderTemplate(string templateBasePath, object model, string lang = "cn")
        {
            try
            {
                string rootPath = Path.Combine(Directory.GetCurrentDirectory(), "Template");
                var finalPath = Path.Combine(rootPath, templateBasePath);

                if (!File.Exists(finalPath))
                    throw new FileNotFoundException($"模板文件不存在: {templateBasePath}");

                // 读取模板内容并解析
                var content = File.ReadAllText(finalPath);
                var template = Template.Parse(content);

                // 创建上下文，支持 include、自定义函数
                var context = new TemplateContext();

                // 加载 Template 根目录下的 include 文件
                context.TemplateLoader = new InternalTemplateLoader(Directory.GetCurrentDirectory());

                // 注入数据对象和自定义函数
                if (model != null)
                {
                    context.PushGlobal(CreateScriptObject(model));
                }

                return template.Render(context);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        /// <summary>
        /// 构建用于 Scriban 渲染的数据对象，包含模型属性 + 自定义函数
        /// </summary>
        private static ScriptObject CreateScriptObject(object model)
        {
            var script = new ScriptObject();

            // 导入模型属性，字段名保持原样
            script.Import(model, renamer: member => member.Name);

            // 自定义常用函数
            script.Import("now", () => DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss"));

            script.Import("truncate", (Func<string, int, string>)((text, len) =>
                string.IsNullOrEmpty(text) ? text : text.Length > len ? text.Substring(0, len) + "..." : text));

            return script;
        }

        /// <summary>
        /// 内部实现的模板加载器，用于支持 Scriban 中的 include 语法
        /// </summary>
        private class InternalTemplateLoader : ITemplateLoader
        {
            private readonly string _basePath;

            public InternalTemplateLoader(string basePath)
            {
                _basePath = basePath;
            }

            /// <summary>
            /// 获取 include 模板的物理路径
            /// </summary>
            public string GetPath(TemplateContext context, SourceSpan callerSpan, string templateName)
            {
                // 1. 标准化路径（去除非前缀斜杠）
                string normalized = templateName.TrimStart('/', '\\');

                // 2. 应用平台分隔符
                string platformPath = normalized.Replace("/", Path.DirectorySeparatorChar.ToString())
                                              .Replace("\\", Path.DirectorySeparatorChar.ToString());

                // 3. 安全组合路径（保证相对路径）
                string fullPath = Path.Combine(_basePath, platformPath);
                return fullPath;
            }

            /// <summary>
            /// 同步加载模板内容
            /// </summary>
            public string Load(TemplateContext context, SourceSpan callerSpan, string templatePath)
            {
                return File.ReadAllText(templatePath, Encoding.UTF8);
            }

            /// <summary>
            /// 异步加载模板内容
            /// </summary>
            public async ValueTask<string> LoadAsync(TemplateContext context, SourceSpan callerSpan, string templatePath)
            {
                return await File.ReadAllTextAsync(templatePath, Encoding.UTF8);
            }
        }
    }
}