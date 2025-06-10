using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HR.Model.System.Model.Dto
{
    /// <summary>
    /// 行政区域查询对象
    /// </summary>
    public class SysAreaQueryDto : PagerInfo
    {
    }

    /// <summary>
    /// 行政区域输入输出对象
    /// </summary>
    public class SysAreaDto
    {
        [Required(ErrorMessage = "主键ID不能为空")]
        [ExcelColumn(Name = "主键ID")]
        [ExcelColumnName("主键ID")]
        public string Id { get; set; }

        [Required(ErrorMessage = "所属国家ID不能为空")]
        [ExcelColumn(Name = "所属国家ID")]
        [ExcelColumnName("所属国家ID")]
        public string Country { get; set; }

        [Required(ErrorMessage = "父级区域ID不能为空")]
        [ExcelColumn(Name = "父级区域ID")]
        [ExcelColumnName("父级区域ID")]
        public string ParentId { get; set; }

        [Required(ErrorMessage = "区域等级（如1=国家，2=省，3=市，4=区）不能为空")]
        [ExcelColumn(Name = "区域等级（如1=国家，2=省，3=市，4=区）")]
        [ExcelColumnName("区域等级（如1=国家，2=省，3=市，4=区）")]
        public string Level { get; set; }

        [Required(ErrorMessage = "区域名称（如：北京）不能为空")]
        [ExcelColumn(Name = "区域名称（如：北京）")]
        [ExcelColumnName("区域名称（如：北京）")]
        public string Name { get; set; }

        [ExcelColumn(Name = "完整名称（如：中国北京市朝阳区）")]
        [ExcelColumnName("完整名称（如：中国北京市朝阳区）")]
        public string WholeName { get; set; }

        [ExcelColumn(Name = "区号/行政区编码")]
        [ExcelColumnName("区号/行政区编码")]
        public string AreaCode { get; set; }

        [ExcelColumn(Name = "排序值，越小越靠前")]
        [ExcelColumnName("排序值，越小越靠前")]
        public string Order { get; set; }



    }
}
