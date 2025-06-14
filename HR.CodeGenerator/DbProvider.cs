﻿using Infrastructure;
using Infrastructure.Model;
using SqlSugar;
using System;
using System.Collections.Generic;
using System.Text.RegularExpressions;

namespace HR.CodeGenerator
{
    /// <summary>
    /// 代码生成数据库连接
    /// </summary>
    public class DbProvider
    {
        protected static SqlSugarClient CodeDb;

        /// <summary>
        /// 获取动态连接字符串
        /// </summary>
        /// <param name="dbName">数据库名</param>
        /// <returns></returns>
        public SqlSugarClient GetSugarDbContext(string dbName = "")
        {
            DbConfigs configs = AppSettings.Get<DbConfigs>("CodeGenDbConfig");

            string connStr = configs.Conn;

            if (!string.IsNullOrEmpty(dbName))
            {
                configs.DbName = dbName;
            }
            connStr = connStr.Replace("{dbName}", configs.DbName, StringComparison.OrdinalIgnoreCase);

            var db = new SqlSugarClient(new List<ConnectionConfig>()
            {
                new ConnectionConfig(){
                    ConnectionString = connStr,
                    DbType = (DbType)configs.DbType,
                    IsAutoCloseConnection = true,//开启自动释放模式和EF原理一样
                    InitKeyType = InitKeyType.Attribute,//从特性读取主键和自增列信息
                },
            });

            CodeDb = db;
            return db;
        }

        /// <summary>
        /// 获得字符串中开始和结束字符串中间得值
        /// </summary>
        /// <param name="str">字符串</param>
        /// <param name="s">开始</param>
        /// <param name="e">结束</param>
        /// <returns></returns> 
        public static string GetValue(string str, string s, string e)
        {
            Regex rg = new("(?<=(" + s + "))[.\\s\\S]*?(?=(" + e + "))", RegexOptions.Multiline | RegexOptions.Singleline);
            return rg.Match(str).Value;
        }
    }
}
