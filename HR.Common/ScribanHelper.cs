using System;
using System.Collections.Concurrent;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks; // 添加 using 解决 ValueTask 问题
using Scriban;
using Scriban.Parsing;
using Scriban.Runtime;
using NLog;
using System.Text.RegularExpressions;

namespace HR.Common
{
    /// <summary>
    /// ScribanHelper 2.5 - .NET 8 完全兼容版
    /// 修复所有编译错误，特别是 ValueTask 相关问题
    /// </summary>
    public static class ScribanHelper
    {
        #region 全局配置

        /// <summary>
        /// 缓存类型枚举
        /// </summary>
        public enum CacheType { None, Memory, Html }

        /// <summary>
        /// 全局配置选项
        /// </summary>
        public static class GlobalConfig
        {
            public static int MaxRecursionDepth { get; set; } = 15; // 最大递归深度
            public static string BaseRoot { get; set; } = AppDomain.CurrentDomain.BaseDirectory; // 根目录
            public static string TemplateRoot { get; set; } = Path.Combine(BaseRoot, "Template"); // 模板根目录
            public static string HtmlCacheRoot { get; set; } = Path.Combine(BaseRoot, "wwwroot", "Html"); // HTML缓存目录
            public static int DefaultCacheExpiryMinutes { get; set; } = 60; // 默认缓存过期时间（分钟）
            public static int CacheCleanupInterval { get; set; } = 30; // 缓存清理间隔（分钟）
            public static long MaxMemoryCacheSize { get; set; } = 100 * 1024 * 1024; // 内存缓存最大大小（100MB）
            public static long MinDiskFreeSpace { get; set; } = 1000 * 1024 * 1024; // 最小磁盘空间（100MB）
            public static bool EnableLz4Compression { get; set; } = true; // 是否启用LZ4压缩
            public static string TempFilePrefix { get; set; } = "_tmp_"; // 临时文件前缀
            public static bool EnableSafeWriteMode { get; set; } = true; // 是否启用安全写入模式
            public static int MaxCacheRetryCount { get; set; } = 3; // 最大缓存重试次数
            public static bool EnableTempFileCheck { get; set; } = true; // 是否启用临时文件检查
            public static int TempFileExpirySeconds { get; set; } = 300; // 临时文件过期时间（秒）
            public static int TempFileCleanupInterval { get; set; } = 60; // 临时文件清理间隔（分钟）
            public static bool EnableDoubleCheckOptimization { get; set; } = true; // 是否启用双重检查优化
            public static bool EnableDetailedLogging { get; set; } = true; // 是否启用详细日志
            public static NLog.LogLevel MinLogLevel { get; set; } = NLog.LogLevel.Debug; // 最小日志级别
        }

        #endregion

        #region NLog日志系统

        /// <summary>
        /// NLog日志记录器实例
        /// </summary>
        private static readonly Logger _logger = LogManager.GetCurrentClassLogger();

        /// <summary>
        /// 记录格式化日志
        /// </summary>
        /// <param name="level">日志级别</param>
        /// <param name="format">格式化字符串</param>
        /// <param name="args">日志参数</param>
        private static void Log(NLog.LogLevel level, string format, params object[] args)
        {
            // 检查是否启用了详细日志和日志级别
            if (!GlobalConfig.EnableDetailedLogging) return;
            if (level < GlobalConfig.MinLogLevel) return;

            // 创建带前缀的日志消息
            string prefix = $"[Scriban][{Thread.CurrentThread.ManagedThreadId}]";
            string message = prefix + " " + string.Format(format, args);
            _logger.Log(level, message);
        }

        /// <summary>
        /// 记录带异常的日志
        /// </summary>
        /// <param name="level">日志级别</param>
        /// <param name="ex">异常对象</param>
        /// <param name="format">格式化字符串</param>
        /// <param name="args">日志参数</param>
        private static void LogException(NLog.LogLevel level, Exception ex, string format, params object[] args)
        {
            // 检查是否启用了详细日志和日志级别
            if (!GlobalConfig.EnableDetailedLogging) return;
            if (level < GlobalConfig.MinLogLevel) return;

            // 创建带前缀的日志消息
            string prefix = $"[Scriban][{Thread.CurrentThread.ManagedThreadId}]";
            string message = prefix + " " + string.Format(format, args);
            _logger.Log(level, ex, message);
        }

        #endregion

        #region 核心缓存结构

        /// <summary>
        /// LRU缓存实现（最近最少使用缓存）
        /// </summary>
        private class LruCache
        {
            private readonly long _maxSize; // 缓存最大大小（字节）
            private long _currentSize; // 当前缓存大小（字节）
            private readonly ConcurrentDictionary<string, CacheItem> _cache = new ConcurrentDictionary<string, CacheItem>(); // 缓存存储
            private readonly LinkedList<string> _accessOrder = new LinkedList<string>(); // 访问顺序链表

            /// <summary>
            /// 构造函数
            /// </summary>
            /// <param name="maxSize">最大缓存大小（字节）</param>
            public LruCache(long maxSize)
            {
                _maxSize = maxSize;
            }

            /// <summary>
            /// 尝试从缓存中获取值
            /// </summary>
            /// <param name="key">缓存键</param>
            /// <param name="value">输出值</param>
            /// <returns>是否找到有效缓存项</returns>
            public bool TryGet(string key, out string value)
            {
                if (_cache.TryGetValue(key, out var item) && item.Expiry > DateTime.UtcNow)
                {
                    // 更新访问顺序：将该项移到链表头部
                    lock (_accessOrder)
                    {
                        _accessOrder.Remove(key);
                        _accessOrder.AddFirst(key);
                    }
                    value = item.Value;
                    return true;
                }
                value = null;
                return false;
            }

            /// <summary>
            /// 设置缓存值
            /// </summary>
            /// <param name="key">缓存键</param>
            /// <param name="value">缓存值</param>
            /// <param name="expiryMinutes">过期时间（分钟）</param>
            public void Set(string key, string value, int expiryMinutes)
            {
                var size = Encoding.UTF8.GetByteCount(value);
                // 如果单个值超过最大缓存大小，直接跳过
                if (size > _maxSize) return;

                lock (this)
                {
                    // 清理缓存空间直到满足需求
                    while (_currentSize + size > _maxSize && _accessOrder.Count > 0)
                    {
                        var last = _accessOrder.Last?.Value;
                        if (last != null && _cache.TryRemove(last, out var removed))
                        {
                            _currentSize -= Encoding.UTF8.GetByteCount(removed.Value);
                            lock (_accessOrder) _accessOrder.RemoveLast();
                        }
                    }

                    // 添加新项
                    var expiry = DateTime.UtcNow.AddMinutes(expiryMinutes);
                    var newItem = new CacheItem { Value = value, Expiry = expiry };

                    // 添加或更新缓存项
                    _cache[key] = newItem;
                    _currentSize += size;

                    // 添加到访问顺序链表头部
                    lock (_accessOrder)
                    {
                        _accessOrder.AddFirst(key);
                    }
                }
            }

            /// <summary>
            /// 清理过期缓存项
            /// </summary>
            /// <returns>清理的缓存项数量</returns>
            public int Cleanup()
            {
                int removedCount = 0;
                var now = DateTime.UtcNow;

                // 遍历所有缓存键
                foreach (var key in _cache.Keys.ToList())
                {
                    // 检查缓存项是否过期
                    if (_cache.TryGetValue(key, out var item) && item.Expiry <= now)
                    {
                        // 尝试移除过期项
                        if (_cache.TryRemove(key, out _))
                        {
                            // 更新当前缓存大小
                            _currentSize -= Encoding.UTF8.GetByteCount(item.Value);
                            // 从访问顺序链表中移除
                            lock (_accessOrder) _accessOrder.Remove(key);
                            removedCount++;
                        }
                    }
                }

                return removedCount;
            }

            /// <summary>
            /// 缓存项内部类
            /// </summary>
            private class CacheItem
            {
                public string Value { get; set; } // 缓存值
                public DateTime Expiry { get; set; } // 过期时间
            }


            /// <summary>
            /// 内部清理方法
            /// </summary>
            public void ClearInternal()
            {
                lock (this)
                {
                    _cache.Clear();
                    _accessOrder.Clear();
                    _currentSize = 0;
                }
            }

            /// <summary>
            /// 清理缓存
            /// </summary>
            public void Clear()
            {
                ClearInternal();
            }
        }

        /// <summary>
        /// 线程安全的模板编译器
        /// </summary>
        private static class TemplateCompiler
        {
            private static readonly ConcurrentDictionary<string, Template> _cache = new ConcurrentDictionary<string, Template>(); // 模板缓存
            private static readonly Dictionary<string, DateTime> _expiryTimes = new Dictionary<string, DateTime>(); // 过期时间字典
            private static readonly object _lock = new object(); // 同步锁

            /// <summary>
            /// 获取或编译模板
            /// </summary>
            /// <param name="fullPath">模板文件完整路径</param>
            /// <returns>编译后的模板对象</returns>
            public static Template GetCompiledTemplate(string fullPath)
            {
                string key = $"Template_{fullPath}";

                lock (_lock)
                {
                    // 检查缓存是否存在且未过期
                    if (_cache.TryGetValue(key, out var template))
                    {
                        if (_expiryTimes.TryGetValue(key, out var expiry) && expiry > DateTime.UtcNow)
                        {
                            return template;
                        }
                    }

                    // 清理过期项
                    Cleanup();

                    // 读取模板文件内容
                    string templateText = File.ReadAllText(fullPath, Encoding.UTF8);

                    // 编译模板
                    template = Template.Parse(templateText);

                    // 添加到缓存
                    _cache[key] = template;

                    // 设置10分钟有效期
                    _expiryTimes[key] = DateTime.UtcNow.AddMinutes(10);

                    return template;
                }
            }

            /// <summary>
            /// 清理过期模板
            /// </summary>
            /// <returns>清理的模板数量</returns>
            public static int Cleanup()
            {
                int removed = 0;
                var now = DateTime.UtcNow;

                lock (_lock)
                {
                    // 遍历所有过期时间记录
                    foreach (var key in _expiryTimes.Keys.ToList())
                    {
                        // 检查是否过期
                        if (_expiryTimes[key] <= now)
                        {
                            // 移除缓存项
                            _cache.TryRemove(key, out _);
                            // 移除过期时间记录
                            _expiryTimes.Remove(key);
                            removed++;
                        }
                    }
                }

                return removed;
            }

            /// <summary>
            /// 清理模板缓存
            /// </summary>
            public static void Clear()
            {
                lock (_lock)
                {
                    _cache.Clear();
                    _expiryTimes.Clear();
                }
            }
        }

        /// <summary>
        /// 运行后台任务
        /// </summary>
        /// <param name="action">要执行的操作</param>
        private static void RunBackgroundTask(Action action)
        {
            // 创建后台线程执行任务
            new Thread(() =>
            {
                try
                {
                    action(); // 执行任务
                }
                catch (Exception ex)
                {
                    // 记录任务执行异常
                    LogException(LogLevel.Error, ex, "后台任务执行失败");
                }
            })
            {
                IsBackground = true // 设置为后台线程
            }.Start();
        }

        #endregion

        #region 核心渲染方法

        /// <summary>
        /// 渲染模板主入口方法
        /// </summary>
        /// <param name="templatePath">模板路径</param>
        /// <param name="model">数据模型</param>
        /// <param name="lang">语言代码</param>
        /// <param name="cacheType">缓存类型</param>
        /// <param name="cacheExpiryMinutes">缓存过期时间（分钟）</param>
        /// <returns>渲染后的HTML内容</returns>
        public static string RenderTemplate(
            string templatePath,
            object model = null,
            string lang = "cn",
            CacheType cacheType = CacheType.None,
            int cacheExpiryMinutes = 0)
        {
            try
            {
                // 记录渲染开始日志
                Log(NLog.LogLevel.Debug, "开始渲染 | 模板: {0} | 语言: {1} | 缓存类型: {2}",
                    templatePath, lang, cacheType);

                // 设置默认缓存过期时间
                if (cacheExpiryMinutes <= 0)
                {
                    cacheExpiryMinutes = GlobalConfig.DefaultCacheExpiryMinutes;
                }

                // 运行后台清理任务
                RunBackgroundTask(CleanupExpiredResources);

                // 创建缓存键
                string cacheKey = $"{lang}_{templatePath}";

                // 根据缓存类型选择渲染方式
                switch (cacheType)
                {
                    case CacheType.None:
                        return RenderWithoutCache(templatePath, model, lang);
                    case CacheType.Memory:
                        // 检查磁盘空间
                        CheckDiskSpace();
                        return RenderWithMemoryCache(cacheKey, templatePath, model, lang, cacheExpiryMinutes);
                    case CacheType.Html:
                        return RenderWithHtmlCache(cacheKey, templatePath, model, lang, cacheExpiryMinutes);
                    default:
                        throw new ArgumentException("不支持的缓存类型");
                }
            }
            catch (Exception ex)
            {
                // 记录渲染失败异常
                LogException(NLog.LogLevel.Error, ex, "渲染失败 | 模板: {0}", templatePath);
                throw new TemplateRenderingException(
                    $"渲染失败: {templatePath}",
                    ex,
                    templatePath,
                    lang,
                    cacheType);
            }
        }

        /// <summary>
        /// HTML缓存模式渲染
        /// </summary>
        /// <param name="cacheKey">缓存键</param>
        /// <param name="templatePath">模板路径</param>
        /// <param name="model">数据模型</param>
        /// <param name="lang">语言代码</param>
        /// <param name="cacheExpiryMinutes">缓存过期时间（分钟）</param>
        /// <returns>渲染后的HTML内容</returns>
        private static string RenderWithHtmlCache(
            string cacheKey,
            string templatePath,
            object model,
            string lang,
            int cacheExpiryMinutes)
        {
            // 记录处理开始日志
            Log(NLog.LogLevel.Debug, "HTML缓存处理开始 | Key: {0}", cacheKey);

            // 路径消毒处理
            string safePath = SanitizePath(templatePath);
            // 生成缓存文件路径
            string cachePath = Path.Combine(GlobalConfig.HtmlCacheRoot, lang, safePath);

            // 第一重快速检查：缓存文件是否存在
            if (CheckFileExists(cachePath))
            {
                // 记录缓存命中
                Log(NLog.LogLevel.Trace, "缓存命中 | 文件: {0}", cachePath);
                return ReadCacheFile(cachePath);
            }

            // 如果启用了临时文件检查
            if (GlobalConfig.EnableTempFileCheck)
            {
                // 生成临时文件路径
                string tempFilePath = GetTempFilePath(cachePath);

                // 检查临时文件是否存在
                if (CheckTempFileExists(tempFilePath))
                {
                    // 记录检测到临时文件
                    Log(NLog.LogLevel.Info, "检测到临时文件 | 路径: {0}", tempFilePath);
                    return RenderTemplateCore(templatePath, model, lang);
                }
            }

            // 获取分区锁（每个缓存键一个锁）
            object partitionLock = _partitionLocks.GetOrAdd(cacheKey, key => new object());

            // 进入锁区域
            lock (partitionLock)
            {
                // 第三重检查：缓存文件是否存在
                if (CheckFileExists(cachePath))
                {
                    // 记录锁内缓存命中
                    Log(NLog.LogLevel.Trace, "锁内缓存命中 | 文件: {0}", cachePath);
                    return ReadCacheFile(cachePath);
                }

                // 如果启用了临时文件检查和双重检查优化
                if (GlobalConfig.EnableTempFileCheck && GlobalConfig.EnableDoubleCheckOptimization)
                {
                    // 生成临时文件路径
                    string tempFilePath = GetTempFilePath(cachePath);
                    // 再次检查临时文件是否存在
                    if (CheckTempFileExists(tempFilePath))
                    {
                        // 记录锁内检测到临时文件
                        Log(NLog.LogLevel.Info, "锁内检测到临时文件 | 路径: {0}", tempFilePath);
                        return RenderTemplateCore(templatePath, model, lang);
                    }
                }

                // 记录缓存未命中
                Log(NLog.LogLevel.Debug, "缓存未命中 | 开始渲染模板");

                // 执行核心渲染
                string renderedHtml = RenderTemplateCore(templatePath, model, lang);
                // HTML压缩处理
                string compressedHtml = WebResourceCompressor.MinifyHtml(renderedHtml);

                // 安全生成缓存文件
                GenerateHtmlCacheSafely(cachePath, compressedHtml);

                // 记录缓存生成成功
                Log(NLog.LogLevel.Info, "缓存生成成功 | 路径: {0} | 大小: {1}KB",
                    cachePath, compressedHtml.Length / 1024);

                return compressedHtml;
            }
        }

        /// <summary>
        /// 安全生成HTML缓存文件
        /// </summary>
        /// <param name="cachePath">缓存文件路径</param>
        /// <param name="content">缓存内容</param>
        private static void GenerateHtmlCacheSafely(string cachePath, string content)
        {
            // 生成临时文件路径
            string tempFilePath = GetTempFilePath(cachePath);

            try
            {
                // 确保目录存在
                string dir = Path.GetDirectoryName(cachePath);
                if (!Directory.Exists(dir))
                {
                    Directory.CreateDirectory(dir);
                }

                // 1. 先写入临时文件
                File.WriteAllText(tempFilePath, content, Encoding.UTF8);

                // 2. 重命名为最终文件
                File.Move(tempFilePath, cachePath);

                // 记录安全写入完成
                Log(NLog.LogLevel.Trace, "安全写入完成 | 临时文件: {0}", tempFilePath);
            }
            catch (Exception ex)
            {
                // 记录缓存生成失败
                LogException(NLog.LogLevel.Error, ex, "缓存生成失败 | 路径: {0}", cachePath);
                throw new CacheGenerationException("缓存生成失败", ex, tempFilePath);
            }
        }

        #endregion

        #region 辅助方法

        /// <summary>
        /// 路径消毒处理
        /// </summary>
        /// <param name="path">原始路径</param>
        /// <returns>消毒后的安全路径</returns>
        private static string SanitizePath(string path)
        {
            // 获取操作系统无效字符
            char[] invalidChars = Path.GetInvalidFileNameChars();
            // 替换无效字符为下划线
            string cleaned = string.Concat(path.Select(c => invalidChars.Contains(c) ? '_' : c));

            // 防止目录遍历攻击
            string[] parts = cleaned.Split(new[] { '/', '\\' }, StringSplitOptions.RemoveEmptyEntries);
            // 重新组合为安全路径
            return Path.Combine(parts);
        }

        /// <summary>
        /// 内部模板加载器实现
        /// 完全支持 .NET 8 的 ITemplateLoader 接口
        /// </summary>
        private class InternalTemplateLoader : ITemplateLoader
        {
            private readonly string _templateRoot; // 模板根目录
            private readonly string _lang; // 当前语言

            /// <summary>
            /// 构造函数
            /// </summary>
            /// <param name="templateRoot">模板根目录</param>
            /// <param name="lang">语言代码</param>
            /// <param name="_">占位参数（保持接口兼容）</param>
            public InternalTemplateLoader(string templateRoot, string lang, int _)
            {
                _templateRoot = templateRoot;
                _lang = lang;
            }

            /// <summary>
            /// 获取模板路径
            /// </summary>
            public string GetPath(TemplateContext context, SourceSpan callerSpan, string templateName)
            {
                // 1. 标准化路径（去除非前缀斜杠）
                string normalized = templateName.TrimStart('/', '\\');

                // 2. 应用平台分隔符
                string platformPath = normalized.Replace("/", Path.DirectorySeparatorChar.ToString())
                                              .Replace("\\", Path.DirectorySeparatorChar.ToString());

                // 3. 安全组合路径（保证相对路径）
                string fullPath = Path.Combine(_templateRoot, platformPath);
                return fullPath;
            }

            /// <summary>
            /// 同步加载模板
            /// </summary>
            public string Load(TemplateContext context, SourceSpan callerSpan, string templatePath)
            {
                // 检查文件是否存在
                if (!File.Exists(templatePath))
                {
                    throw new FileNotFoundException($"模板文件不存在: {templatePath}");
                }
                // 读取文件内容
                return File.ReadAllText(templatePath, Encoding.UTF8);
            }

            /// <summary>
            /// 异步加载模板实现（符合 .NET 8 要求）
            /// 修复：使用 ValueTask<string> 作为返回类型
            /// </summary>
            public ValueTask<string> LoadAsync(TemplateContext context, SourceSpan callerSpan, string templatePath)
            {
                // 检查文件是否存在
                if (!File.Exists(templatePath))
                {
                    throw new FileNotFoundException($"模板文件不存在: {templatePath}");
                }
                // 异步读取文件内容
                return new ValueTask<string>(File.ReadAllTextAsync(templatePath, Encoding.UTF8));
            }
        }

        /// <summary>
        /// 无缓存模式渲染
        /// </summary>
        private static string RenderWithoutCache(string templatePath, object model, string lang)
        {
            // 记录无缓存模式渲染
            Log(NLog.LogLevel.Trace, "无缓存模式渲染 | 模板: {0}", templatePath);
            return RenderTemplateCore(templatePath, model, lang);
        }

        /// <summary>
        /// 内存缓存模式渲染
        /// </summary>
        private static string RenderWithMemoryCache(
            string cacheKey, string templatePath, object model, string lang, int cacheExpiryMinutes)
        {
            // 尝试从内存缓存获取
            if (_lruCache.TryGet(cacheKey, out string cachedContent))
            {
                // 记录内存缓存命中
                Log(NLog.LogLevel.Trace, "内存缓存命中 | Key: {0}", cacheKey);
                return cachedContent;
            }

            // 获取分区锁
            object partitionLock = _partitionLocks.GetOrAdd(cacheKey, key => new object());

            // 进入锁区域
            lock (partitionLock)
            {
                // 再次尝试从内存缓存获取
                if (_lruCache.TryGet(cacheKey, out cachedContent))
                {
                    // 记录锁内内存缓存命中
                    Log(NLog.LogLevel.Trace, "锁内内存缓存命中 | Key: {0}", cacheKey);
                    return cachedContent;
                }

                // 执行核心渲染
                string renderedHtml = RenderTemplateCore(templatePath, model, lang);
                // 设置内存缓存
                _lruCache.Set(cacheKey, renderedHtml, cacheExpiryMinutes);

                // 记录缓存设置完成
                Log(NLog.LogLevel.Debug, "内存缓存设置完成 | Key: {0} | 有效期: {1}分",
                    cacheKey, cacheExpiryMinutes);

                return renderedHtml;
            }
        }

        #endregion

        #region 文件操作和临时文件处理

        // 分区锁字典（每个缓存键一个锁）
        private static readonly ConcurrentDictionary<string, object> _partitionLocks = new ConcurrentDictionary<string, object>();
        // 最后临时文件清理时间
        private static DateTime _lastTempFileCleanup = DateTime.MinValue;
        // LRU缓存实例
        private static readonly LruCache _lruCache = new LruCache(GlobalConfig.MaxMemoryCacheSize);

        /// <summary>
        /// 获取临时文件路径
        /// </summary>
        /// <param name="cachePath">缓存文件路径</param>
        /// <returns>临时文件路径</returns>
        private static string GetTempFilePath(string cachePath)
        {
            return $"{cachePath}{GlobalConfig.TempFilePrefix}";
        }

        /// <summary>
        /// 创建临时文件标记
        /// </summary>
        /// <param name="tempFilePath">临时文件路径</param>
        private static void CreateTempFileMarker(string tempFilePath)
        {
            if (!GlobalConfig.EnableTempFileCheck) return;

            try
            {
                // 确保目录存在
                string dir = Path.GetDirectoryName(tempFilePath);
                if (!Directory.Exists(dir))
                {
                    Directory.CreateDirectory(dir);
                    Log(NLog.LogLevel.Trace, "创建缓存目录 | 路径: {0}", dir);
                }

                // 写入临时文件
                File.WriteAllText(tempFilePath, DateTime.UtcNow.ToString("O"));
                Log(NLog.LogLevel.Trace, "临时文件创建成功 | 路径: {0}", tempFilePath);
            }
            catch (Exception ex)
            {
                // 记录创建失败警告
                LogException(NLog.LogLevel.Warn, ex, "临时文件创建失败 | 路径: {0}", tempFilePath);
            }
        }

        /// <summary>
        /// 检查临时文件是否存在且未过期
        /// </summary>
        /// <param name="tempFilePath">临时文件路径</param>
        /// <returns>是否存在有效临时文件</returns>
        private static bool CheckTempFileExists(string tempFilePath)
        {
            if (!GlobalConfig.EnableTempFileCheck) return false;

            try
            {
                // 文件不存在直接返回false
                if (!File.Exists(tempFilePath)) return false;

                // 获取文件创建时间
                var creationTime = File.GetCreationTimeUtc(tempFilePath);
                // 检查文件是否未过期
                return (DateTime.UtcNow - creationTime).TotalSeconds <= GlobalConfig.TempFileExpirySeconds;
            }
            catch (Exception ex)
            {
                // 记录检查失败调试信息
                LogException(NLog.LogLevel.Debug, ex, "临时文件检查失败");
                return false;
            }
        }

        /// <summary>
        /// 安全删除临时文件
        /// </summary>
        /// <param name="tempFilePath">临时文件路径</param>
        private static void SafeDeleteTempFile(string tempFilePath)
        {
            if (!GlobalConfig.EnableTempFileCheck) return;

            try
            {
                // 文件存在才删除
                if (File.Exists(tempFilePath))
                {
                    File.Delete(tempFilePath);
                    Log(NLog.LogLevel.Trace, "临时文件删除成功 | 路径: {0}", tempFilePath);
                }
            }
            catch (Exception ex)
            {
                // 记录删除失败调试信息
                LogException(NLog.LogLevel.Debug, ex, "临时文件删除失败 | 路径: {0}", tempFilePath);
            }
        }

        /// <summary>
        /// 清理过期临时文件
        /// </summary>
        /// <returns>清理的文件数量</returns>
        private static int CleanupExpiredTempFiles()
        {
            // 检查清理间隔
            if ((DateTime.UtcNow - _lastTempFileCleanup).TotalMinutes < GlobalConfig.TempFileCleanupInterval)
                return 0;

            // 更新最后清理时间
            _lastTempFileCleanup = DateTime.UtcNow;
            int cleanedCount = 0;

            // 记录清理开始
            Log(NLog.LogLevel.Info, "开始清理过期临时文件");

            try
            {
                string cacheRoot = GlobalConfig.HtmlCacheRoot;

                // 检查缓存根目录是否存在
                if (!Directory.Exists(cacheRoot)) return 0;

                // 查找所有临时文件
                var tempFiles = Directory.GetFiles(cacheRoot, $"*{GlobalConfig.TempFilePrefix}", SearchOption.AllDirectories);

                // 记录找到的临时文件数量
                Log(NLog.LogLevel.Debug, "扫描到临时文件数量: {0}", tempFiles.Length);

                // 遍历处理每个临时文件
                foreach (string filePath in tempFiles)
                {
                    try
                    {
                        // 获取文件创建时间
                        var creationTime = File.GetCreationTimeUtc(filePath);
                        // 检查是否过期
                        if ((DateTime.UtcNow - creationTime).TotalSeconds > GlobalConfig.TempFileExpirySeconds)
                        {
                            // 删除过期文件
                            File.Delete(filePath);
                            cleanedCount++;
                            Log(NLog.LogLevel.Trace, "删除过期临时文件 | 路径: {0}", filePath);
                        }
                    }
                    catch (Exception ex)
                    {
                        // 记录删除失败警告
                        LogException(NLog.LogLevel.Warn, ex, "临时文件删除失败 | 路径: {0}", filePath);
                    }
                }
            }
            catch (Exception ex)
            {
                // 记录清理失败错误
                LogException(NLog.LogLevel.Error, ex, "临时文件清理失败");
            }

            // 记录清理完成
            Log(NLog.LogLevel.Info, "临时文件清理完成 | 清理数量: {0}", cleanedCount);
            return cleanedCount;
        }

        /// <summary>
        /// 检查文件是否存在
        /// </summary>
        /// <param name="path">文件路径</param>
        /// <returns>是否存在</returns>
        private static bool CheckFileExists(string path)
        {
            try
            {
                return File.Exists(path);
            }
            catch (Exception ex)
            {
                // 记录检查失败调试信息
                LogException(NLog.LogLevel.Debug, ex, "文件存在检查失败 | 路径: {0}", path);
                return false;
            }
        }

        /// <summary>
        /// 读取缓存文件
        /// </summary>
        /// <param name="path">缓存文件路径</param>
        /// <returns>文件内容</returns>
        private static string ReadCacheFile(string path)
        {
            try
            {
                // 读取文件内容
                return File.ReadAllText(path, Encoding.UTF8);
            }
            catch (Exception ex)
            {
                // 记录读取失败警告
                LogException(NLog.LogLevel.Warn, ex, "缓存文件读取失败 | 路径: {0}", path);
                return null;
            }
        }

        /// <summary>
        /// 检查磁盘空间
        /// </summary>
        private static void CheckDiskSpace()
        {
            if (!GlobalConfig.EnableSafeWriteMode) return;

            try
            {
                // 记录检查开始
                Log(NLog.LogLevel.Trace, "开始磁盘空间检查");

                string cacheRoot = GlobalConfig.HtmlCacheRoot;

                // 查找缓存根目录所在的磁盘
                var drive = DriveInfo.GetDrives()
                    .FirstOrDefault(d => cacheRoot.StartsWith(d.Name, StringComparison.OrdinalIgnoreCase));

                if (drive != null)
                {
                    // 计算可用空间（MB）
                    long freeSpaceMB = drive.AvailableFreeSpace / (1024 * 1024);
                    // 记录磁盘空间信息
                    Log(NLog.LogLevel.Debug, "磁盘空间检查 | 磁盘: {0} | 可用空间: {1}MB",
                        drive.Name, freeSpaceMB);

                    // 检查空间是否不足
                    if (drive.AvailableFreeSpace < GlobalConfig.MinDiskFreeSpace)
                    {
                        // 准备错误信息
                        string error = $"磁盘空间不足: {drive.Name} (可用: {freeSpaceMB}MB)";
                        // 记录错误
                        Log(NLog.LogLevel.Error, error);
                        // 抛出异常
                        throw new InsufficientDiskSpaceException(error);
                    }
                }
                else
                {
                    // 记录无法找到磁盘警告
                    Log(NLog.LogLevel.Warn, "无法找到磁盘 | 缓存目录: {0}", cacheRoot);
                }
            }
            catch (Exception ex)
            {
                // 记录磁盘检查失败警告
                LogException(NLog.LogLevel.Warn, ex, "磁盘空间检查失败");
            }
        }

        /// <summary>
        /// 清理过期资源
        /// </summary>
        private static void CleanupExpiredResources()
        {
            // 记录清理开始
            Log(NLog.LogLevel.Info, "开始资源清理任务");

            try
            {
                // 清理内存缓存
                int memCount = _lruCache.Cleanup();
                Log(NLog.LogLevel.Debug, "内存缓存清理 | 释放条目: {0}", memCount);

                // 清理模板缓存
                int templateCount = TemplateCompiler.Cleanup();
                Log(NLog.LogLevel.Debug, "模板缓存清理 | 释放模板: {0}", templateCount);

                // 清理临时文件
                int tempFileCount = CleanupExpiredTempFiles();
                Log(NLog.LogLevel.Info, "临时文件清理 | 删除文件: {0}", tempFileCount);
            }
            catch (Exception ex)
            {
                // 记录清理失败错误
                LogException(NLog.LogLevel.Error, ex, "资源清理失败");
            }
            finally
            {
                // 记录清理完成
                Log(NLog.LogLevel.Info, "资源清理完成");
            }
        }

        /// <summary>
        /// 模板核心渲染方法
        /// </summary>
        /// <param name="templatePath">模板路径</param>
        /// <param name="model">数据模型</param>
        /// <param name="lang">语言代码</param>
        /// <returns>渲染结果</returns>
        private static string RenderTemplateCore(string templatePath, object model, string lang)
        {
            // 生成完整模板路径
            string fullPath = Path.Combine(GlobalConfig.TemplateRoot, templatePath);
            // 记录路径定位
            Log(NLog.LogLevel.Trace, "定位模板文件 | 完整路径: {0}", fullPath);

            // 检查路径是否有效
            if (!IsValidTemplatePath(fullPath))
            {
                // 记录无效路径错误
                Log(NLog.LogLevel.Error, "无效模板路径 | 路径: {0}", fullPath);
                throw new FileNotFoundException($"无效的模板路径: {templatePath}", fullPath);
            }

            // 检查文件是否存在
            if (!File.Exists(fullPath))
            {
                // 记录文件不存在错误
                Log(NLog.LogLevel.Error, "模板文件不存在 | 路径: {0}", fullPath);
                throw new FileNotFoundException($"模板文件不存在: {templatePath}", fullPath);
            }

            // 获取编译后的模板
            Template template = TemplateCompiler.GetCompiledTemplate(fullPath);

            // 创建模板上下文
            var context = new TemplateContext
            {
                // 设置模板加载器
                TemplateLoader = new InternalTemplateLoader(GlobalConfig.BaseRoot, lang, 0)
            };

            // 如果有数据模型，注入全局对象
            if (model != null)
            {
                // 记录模型注入
                Log(NLog.LogLevel.Trace, "注入数据模型 | 类型: {0}", model.GetType().Name);
                context.PushGlobal(CreateScriptObject(model));
            }

            // 记录渲染执行
            Log(NLog.LogLevel.Trace, "执行模板渲染 | 模板: {0}", templatePath);
            // 执行渲染并返回结果
            return template.Render(context);
        }

        /// <summary>
        /// 创建脚本对象（包含模型和自定义函数）
        /// </summary>
        /// <param name="model">数据模型</param>
        /// <returns>脚本对象</returns>
        private static ScriptObject CreateScriptObject(object model)
        {
            // 创建脚本对象
            var script = new ScriptObject();
            // 导入模型属性
            script.Import(model, renamer: m => m.Name);
            // 添加自定义函数：获取当前时间
            script.Import("now", () => DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss"));
            // 添加自定义函数：截断字符串
            script.Import("truncate", (Func<string, int, string>)((t, l) =>
                string.IsNullOrEmpty(t) ? t : t.Length > l ? t[..l] + "..." : t));
            return script;
        }

        /// <summary>
        /// 验证模板路径是否有效
        /// </summary>
        /// <param name="fullPath">完整路径</param>
        /// <returns>是否有效</returns>
        private static bool IsValidTemplatePath(string fullPath)
        {
            // 非空检查
            if (string.IsNullOrWhiteSpace(fullPath)) return false;
            // 防止目录遍历
            if (fullPath.Contains("..")) return false;
            // 检查目录深度
            if (fullPath.Count(c => c == Path.DirectorySeparatorChar) > GlobalConfig.MaxRecursionDepth)
                return false;
            return true;
        }

        #endregion

        #region 异常类实现

        /// <summary>
        /// 模板渲染异常
        /// </summary>
        public class TemplateRenderingException : Exception
        {
            public string TemplatePath { get; } // 模板路径
            public string Language { get; } // 语言代码
            public CacheType CacheType { get; } // 缓存类型

            public TemplateRenderingException(
                string message, Exception inner, string templatePath = null,
                string lang = null, CacheType cacheType = CacheType.None)
                : base(message, inner)
            {
                TemplatePath = templatePath;
                Language = lang;
                CacheType = cacheType;

                // 记录异常
                ScribanHelper.LogException(NLog.LogLevel.Error, inner,
                    "模板渲染异常 | 路径: {0} | 消息: {1}", templatePath, message);
            }
        }

        /// <summary>
        /// 磁盘空间不足异常
        /// </summary>
        public class InsufficientDiskSpaceException : Exception
        {
            public InsufficientDiskSpaceException(string message) : base(message)
            {
                // 记录异常
                ScribanHelper.Log(NLog.LogLevel.Error, "磁盘空间异常: {0}", message);
            }
        }

        /// <summary>
        /// 缓存生成异常
        /// </summary>
        public class CacheGenerationException : Exception
        {
            public string TempFilePath { get; } // 临时文件路径

            public CacheGenerationException(string message, Exception inner, string tempPath = null)
                : base(message, inner)
            {
                TempFilePath = tempPath;

                // 记录异常
                ScribanHelper.LogException(NLog.LogLevel.Error, inner,
                    "缓存生成异常 | 临时文件: {0} | 消息: {1}", tempPath, message);
            }
        }

        #endregion

        #region 全局清理方法

        /// <summary>
        /// 清除所有缓存和状态（系统级重置）
        /// </summary>
        public static void Clear()
        {
            try
            {
                Log(NLog.LogLevel.Info, "开始全局清理");

                // 2. 清除内存缓存
                ClearMemoryCache();

                // 3. 清除文件缓存
                ClearFileCache();

                // 4. 清除模板缓存
                ClearTemplateCache();

                // 5. 清除分区锁
                ClearPartitionLocks();

                // 6. 清除LRU链表
                ClearLruStructures();

                Log(NLog.LogLevel.Info, "全局清理完成");
            }
            catch (Exception ex)
            {
                LogException(NLog.LogLevel.Error, ex, "全局清理失败");
            }
        }

        /// <summary>
        /// 清理内存缓存
        /// </summary>
        private static void ClearMemoryCache()
        {
            _lruCache?.Clear();
            Log(NLog.LogLevel.Debug, "内存缓存已清除");
        }

        /// <summary>
        /// 清理模板缓存
        /// </summary>
        private static void ClearTemplateCache()
        {
            TemplateCompiler.Clear();
            Log(NLog.LogLevel.Debug, "模板缓存已清除");
        }

        /// <summary>
        /// 清理文件缓存
        /// </summary>
        private static void ClearFileCache()
        {
            ClearHtmlCacheFiles();
            ClearTempFiles();
        }

        /// <summary>
        /// 清理HTML缓存文件
        /// </summary>
        private static void ClearHtmlCacheFiles()
        {
            try
            {
                string cacheRoot = GlobalConfig.HtmlCacheRoot;
                if (Directory.Exists(cacheRoot))
                {
                    // 删除所有缓存文件
                    foreach (string file in Directory.GetFiles(cacheRoot, "*.*", SearchOption.AllDirectories))
                    {
                        try
                        {
                            File.Delete(file);
                        }
                        catch { }
                    }
                    Log(NLog.LogLevel.Debug, "HTML缓存文件已清除");
                }
            }
            catch (Exception ex)
            {
                LogException(NLog.LogLevel.Warn, ex, "HTML缓存清理失败");
            }
        }

        /// <summary>
        /// 清理临时文件
        /// </summary>
        private static void ClearTempFiles()
        {
            try
            {
                string cacheRoot = GlobalConfig.HtmlCacheRoot;
                if (Directory.Exists(cacheRoot))
                {
                    // 删除所有临时文件
                    foreach (string file in Directory.GetFiles(cacheRoot, $"*{GlobalConfig.TempFilePrefix}", SearchOption.AllDirectories))
                    {
                        try
                        {
                            File.Delete(file);
                        }
                        catch { }
                    }
                    Log(NLog.LogLevel.Debug, "临时文件已清除");
                }
            }
            catch (Exception ex)
            {
                LogException(NLog.LogLevel.Warn, ex, "临时文件清理失败");
            }
        }

        /// <summary>
        /// 清理分区锁
        /// </summary>
        private static void ClearPartitionLocks()
        {
            _partitionLocks.Clear();
            Log(NLog.LogLevel.Debug, "分区锁已清除");
        }

        /// <summary>
        /// 清理LRU数据结构
        /// </summary>
        private static void ClearLruStructures()
        {
            // LRU内部清理
            _lruCache?.ClearInternal();
            Log(NLog.LogLevel.Debug, "LRU结构已清除");
        }
        #endregion
    }
}