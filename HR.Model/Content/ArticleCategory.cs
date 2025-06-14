﻿namespace HR.Model.Content
{
    /// <summary>
    /// 文章目录
    /// </summary>
    [SugarTable("article_Category", "文章目录")]
    [Tenant("0")]
    public class ArticleCategory
    {
        /// <summary>
        /// 目录id
        /// </summary>
        [SugarColumn(IsPrimaryKey = true, IsIdentity = true, ColumnName = "category_id")]
        public int CategoryId { get; set; }

        [SugarColumn(ColumnDescription = "目录名", Length = 20, ExtendedAttribute = ProteryConstant.NOTNULL)]
        public string Name { get; set; }
        [SugarColumn(ColumnDescription = "图标")]
        public string Icon { get; set; }
        /// <summary>
        /// 排序id
        /// </summary>
        public int OrderNum { get; set; }
        public int? ParentId { get; set; }
        /// <summary>
        /// 背景图
        /// </summary>
        public string BgImg { get; set; }
        /// <summary>
        /// 介绍
        /// </summary>
        public string Introduce { get; set; }
        /// <summary>
        /// 分类类型 0、文章  1、圈子
        /// </summary>
        public int CategoryType { get; set; }
        /// <summary>
        /// 文章数
        /// </summary>
        [SugarColumn(DefaultValue = "0")]
        public int ArticleNum { get; set; }
        /// <summary>
        /// 加入人数
        /// </summary>
        [SugarColumn(DefaultValue = "0")]
        public int JoinNum { get; set; }
        /// <summary>
        /// 创建时间
        /// </summary>
        [SugarColumn(ColumnDescription = "创建时间", ColumnName = "create_time", InsertServerTime = true)]
        public DateTime? CreateTime { get; set; }

        [JsonProperty(NullValueHandling = NullValueHandling.Ignore)]
        [SugarColumn(IsIgnore = true)]
        public List<ArticleCategory> Children { get; set; }

        /// <summary>
        /// 栏目属性json
        /// </summary>
        [SugarColumn(ColumnDescription = "栏目属性json", ColumnDataType = StaticConfig.CodeFirst_BigString)]
        public string AttributeJson { get; set; }
        /// <summary>
        /// 栏目模板路径
        /// </summary>
        [SugarColumn(ColumnDescription = "栏目模板路径", ExtendedAttribute = ProteryConstant.NOTNULL)]
        public string TemplatePath { get; set; }
        /// <summary>
        /// 栏目属性值表
        /// </summary>
        [SugarColumn(ColumnDescription = "栏目属性值表", ExtendedAttribute = ProteryConstant.NOTNULL)]
        public string AttributeTable { get; set; }
    }
}
