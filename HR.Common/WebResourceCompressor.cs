using System;
using System.Collections.Concurrent;
using System.Collections.Generic;
using System.IO;
using System.Text;
using System.Threading;
using WebMarkupMin.Core;

namespace HR.Common
{
    /// <summary>
    /// .NET 无损资源压缩帮助类
    /// 提供 JS/CSS/HTML 文件的压缩功能
    /// 默认删除所有注释并执行无损压缩
    /// </summary>
    public static class WebResourceCompressor
    {
        #region JS 压缩
        /// <summary>
        /// 压缩 JavaScript 内容
        /// 1. 无损压缩代码
        /// 2. 删除所有注释（包括单行和多行注释）
        /// </summary>
        /// <param name="input">JS 内容或文件路径</param>
        /// <returns>压缩后的 JS 内容</returns>
        public static string MinifyJs(string input)
        {
            // 如果是文件路径
            if (File.Exists(input))
            {
                // 读取文件内容
                string content = File.ReadAllText(input, Encoding.UTF8);
                // 压缩内容
                return MinifyJsContent(content);
            }
            // 如果是内容
            return MinifyJsContent(input);
        }

        /// <summary>
        /// JS 内容压缩核心方法（私有）
        /// </summary>
        private static string MinifyJsContent(string jsContent)
        {
            // 创建 JS 压缩器
            var minifier = new CrockfordJsMinifier();
            // 执行压缩
            var result = minifier.Minify(jsContent, true);
            // 返回压缩内容
            return result.MinifiedContent;
        }
        #endregion

        #region CSS 压缩
        /// <summary>
        /// 压缩 CSS 内容
        /// 1. 无损压缩代码
        /// 2. 删除所有注释（包括重要注释）
        /// </summary>
        /// <param name="input">CSS 内容或文件路径</param>
        /// <returns>压缩后的 CSS 内容</returns>
        public static string MinifyCss(string input)
        {
            // 如果是文件路径
            if (File.Exists(input))
            {
                // 读取文件内容
                string content = File.ReadAllText(input, Encoding.UTF8);
                // 压缩内容
                return MinifyCssContent(content);
            }
            // 如果是内容
            return MinifyCssContent(input);
        }

        /// <summary>
        /// CSS 内容压缩核心方法（私有）
        /// </summary>
        private static string MinifyCssContent(string cssContent)
        {
            // 创建 CSS 压缩器
            var minifier = new KristensenCssMinifier();
            // 执行压缩
            var result = minifier.Minify(cssContent, true);
            // 返回压缩内容
            return result.MinifiedContent;
        }
        #endregion

        #region HTML 压缩
        /// <summary>
        /// 压缩 HTML 内容
        /// 1. 无损压缩代码
        /// 2. 删除所有注释（包括条件注释）
        /// 3. 压缩内联 JS 和 CSS
        /// </summary>
        /// <param name="input">HTML 内容或文件路径</param>
        /// <returns>压缩后的 HTML 内容</returns>
        public static string MinifyHtml(string input)
        {
            // 如果是文件路径
            if (File.Exists(input))
            {
                // 读取文件内容
                string content = File.ReadAllText(input, Encoding.UTF8);
                // 压缩内容
                return MinifyHtmlContent(content);
            }
            // 如果是内容
            return MinifyHtmlContent(input);
        }

        /// <summary>
        /// HTML 内容压缩核心方法（私有）
        /// </summary>
        private static string MinifyHtmlContent(string htmlContent)
        {
            // 创建 HTML 压缩设置
            var settings = new HtmlMinificationSettings
            {
                // 压缩内联 CSS
                MinifyEmbeddedCssCode = true,
                // 压缩内联 JS
                MinifyInlineJsCode = true,
                // 中等强度的空白压缩
                WhitespaceMinificationMode = WhitespaceMinificationMode.Medium,
                // 删除所有 HTML 注释
                RemoveHtmlComments = true
            };

            // 创建 HTML 压缩器
            var minifier = new HtmlMinifier(settings);
            // 执行压缩
            var result = minifier.Minify(htmlContent);
            // 返回压缩内容
            return result.MinifiedContent;
        }
        #endregion

        #region 文件夹压缩
        /// <summary>
        /// 压缩整个文件夹（递归处理）
        /// 1. 强制使用 UTF-8 编码处理
        /// 2. 删除所有 JS/CSS/HTML 文件的注释
        /// 3. 返回处理结果统计
        /// </summary>
        /// <param name="sourceDir">源文件夹路径</param>
        /// <param name="targetDir">目标文件夹路径</param>
        /// <returns>处理结果字符串（格式：检索到 xx 文件，成功处理 xx 文件）</returns>
        public static string CompressFolder(string sourceDir, string targetDir)
        {
            // 文件计数器
            int totalFileCount = 0;
            int successFileCount = 0;

            try
            {
                // 验证源目录是否存在
                if (!Directory.Exists(sourceDir))
                    throw new DirectoryNotFoundException($"源文件夹不存在: {sourceDir}");

                // 获取文件夹锁（最多等待30秒）
                if (!_folderLock.Wait(TimeSpan.FromSeconds(30)))
                    throw new TimeoutException("获取文件夹锁超时");

                try
                {
                    // 创建临时文件夹
                    string tempDir = Path.Combine(
                        Path.GetDirectoryName(targetDir) ?? string.Empty,
                        $"{Path.GetFileName(targetDir)}_temp"
                    );

                    // 创建临时目录
                    Directory.CreateDirectory(tempDir);

                    try
                    {
                        // 处理所有文件
                        ProcessDirectory(sourceDir, sourceDir, tempDir, ref totalFileCount, ref successFileCount);

                        // 替换目标目录
                        ReplaceTargetDirectory(targetDir, tempDir);
                    }
                    finally
                    {
                        // 确保清理临时目录
                        if (Directory.Exists(tempDir))
                        {
                            try { Directory.Delete(tempDir, true); } catch { /* 忽略清理错误 */ }
                        }
                    }
                }
                finally
                {
                    // 释放文件夹锁
                    _folderLock.Release();
                }

                // 返回中文统计结果
                return $"检索到 {totalFileCount} 文件数量，处理成功 {successFileCount} 数量";
            }
            catch (Exception ex)
            {
                // 封装并抛出异常
                throw new ApplicationException($"压缩文件夹失败: {sourceDir} -> {targetDir}", ex);
            }
        }

        /// <summary>
        /// 递归处理目录中的所有文件
        /// </summary>
        private static void ProcessDirectory(string rootDir, string currentDir, string targetDir,
            ref int totalFileCount, ref int successFileCount)
        {
            // 处理当前目录的所有文件
            foreach (string filePath in Directory.GetFiles(currentDir))
            {
                // 增加总文件数
                totalFileCount++;

                try
                {
                    // 计算相对路径
                    string relativePath = Path.GetRelativePath(rootDir, filePath);
                    // 目标文件路径
                    string targetPath = Path.Combine(targetDir, relativePath);
                    // 目标目录路径
                    string targetDirPath = Path.GetDirectoryName(targetPath) ?? string.Empty;

                    // 确保目标目录存在
                    if (!Directory.Exists(targetDirPath))
                        Directory.CreateDirectory(targetDirPath);

                    // 获取文件扩展名
                    string extension = Path.GetExtension(filePath).ToLower();

                    // 处理可压缩文件
                    if (IsCompressibleFile(extension))
                    {
                        // 获取文件锁
                        SemaphoreSlim fileLock = GetFileLock(filePath);
                        // 等待获取锁
                        fileLock.Wait();

                        try
                        {
                            // 根据文件类型压缩内容
                            string compressed = MinifyFile(filePath, extension);
                            // 写入目标文件（UTF-8 编码）
                            File.WriteAllText(targetPath, compressed, Encoding.UTF8);
                            // 增加成功计数
                            successFileCount++;
                        }
                        finally
                        {
                            // 释放锁
                            fileLock.Release();
                            // 清理未使用的锁
                            CleanupFileLock(filePath);
                        }
                    }
                    else
                    {
                        // 直接复制非压缩文件
                        File.Copy(filePath, targetPath, true);
                        // 增加成功计数
                        successFileCount++;
                    }
                }
                catch (Exception ex)
                {
                    // 记录错误（实际项目中应使用日志系统）
                    Console.WriteLine($"处理失败: {filePath} - {ex.Message}");
                }
            }

            // 递归处理子目录
            foreach (string subDir in Directory.GetDirectories(currentDir))
            {
                ProcessDirectory(rootDir, subDir, targetDir, ref totalFileCount, ref successFileCount);
            }
        }

        /// <summary>
        /// 根据文件类型压缩内容
        /// </summary>
        private static string MinifyFile(string filePath, string extension)
        {
            // 读取文件内容（UTF-8 编码）
            string content = File.ReadAllText(filePath, Encoding.UTF8);

            // 根据文件类型选择压缩方法
            return extension switch
            {
                ".js" => MinifyJsContent(content),
                ".css" => MinifyCssContent(content),
                ".html" or ".htm" => MinifyHtmlContent(content),
                _ => content
            };
        }
        #endregion

        #region 辅助函数
        /// <summary>
        /// 判断文件是否可压缩
        /// </summary>
        private static bool IsCompressibleFile(string extension)
        {
            return extension == ".js" ||
                   extension == ".css" ||
                   extension == ".html" ||
                   extension == ".htm";
        }

        /// <summary>
        /// 替换目标目录
        /// </summary>
        private static void ReplaceTargetDirectory(string targetDir, string tempDir)
        {
            // 确保目标父目录存在
            string? parentDir = Path.GetDirectoryName(targetDir);
            if (!string.IsNullOrEmpty(parentDir) && !Directory.Exists(parentDir))
            {
                Directory.CreateDirectory(parentDir);
            }

            // 删除已存在的目标目录
            if (Directory.Exists(targetDir))
            {
                Directory.Delete(targetDir, true);
            }

            // 移动临时目录为目标目录
            Directory.Move(tempDir, targetDir);
        }
        #endregion

        #region 文件锁管理
        /// <summary>
        /// 文件锁字典（每个文件路径对应一个信号量）
        /// </summary>
        private static readonly ConcurrentDictionary<string, SemaphoreSlim> _fileLocks =
            new ConcurrentDictionary<string, SemaphoreSlim>();

        /// <summary>
        /// 文件夹操作锁（确保文件夹操作原子性）
        /// </summary>
        private static readonly SemaphoreSlim _folderLock = new SemaphoreSlim(1, 1);

        /// <summary>
        /// 获取特定文件的信号量锁
        /// </summary>
        private static SemaphoreSlim GetFileLock(string filePath)
        {
            // 规范化文件路径（确保大小写一致）
            string normalized = Path.GetFullPath(filePath).ToLower();
            // 获取或创建锁对象
            return _fileLocks.GetOrAdd(normalized, _ => new SemaphoreSlim(1, 1));
        }

        /// <summary>
        /// 清理未使用的文件锁
        /// </summary>
        private static void CleanupFileLock(string filePath)
        {
            // 规范化文件路径
            string normalized = Path.GetFullPath(filePath).ToLower();
            // 尝试从字典中移除
            if (_fileLocks.TryRemove(normalized, out var lockObj))
            {
                try
                {
                    // 确保锁被正确释放
                    if (lockObj.CurrentCount == 0)
                        lockObj.Release();
                }
                catch { /* 忽略释放错误 */ }
            }
        }
        #endregion
    }
}
