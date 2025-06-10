using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HR.Model.System.Model
{
    /// <summary>
    /// 行政区域
    /// </summary>
    [SugarTable("sys_area")]
    public class SysArea
    {
        /// <summary>
        /// 主键ID 
        /// </summary>
        [SugarColumn(IsPrimaryKey = true, IsIdentity = true)]
        public string Id { get; set; }

        /// <summary>
        /// 所属国家ID 
        /// </summary>
        public string Country { get; set; }

        /// <summary>
        /// 父级区域ID 
        /// </summary>
        public string ParentId { get; set; }

        /// <summary>
        /// 区域等级（如1=国家，2=省，3=市，4=区） 
        /// </summary>
        public string Level { get; set; }

        /// <summary>
        /// 区域名称（如：北京） 
        /// </summary>
        public string Name { get; set; }

        /// <summary>
        /// 完整名称（如：中国北京市朝阳区） 
        /// </summary>
        public string WholeName { get; set; }

        /// <summary>
        /// 区号/行政区编码 
        /// </summary>
        public string AreaCode { get; set; }

        /// <summary>
        /// 排序值，越小越靠前 
        /// </summary>
        public string Order { get; set; }

        [SugarColumn(IsIgnore = true)]
        public List<SysArea> Children { get; set; }
    }
}
