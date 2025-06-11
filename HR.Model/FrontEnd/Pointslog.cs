using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HR.Model.FrontEnd
{
    /// <summary>
    /// 积分记录表
    /// </summary>
    [SugarTable("f_pointslog")]
    public class Pointslog
    {
        /// <summary>
        /// 主键ID 
        /// </summary>
        [SugarColumn(IsPrimaryKey = true, IsIdentity = true)]
        public long Id { get; set; }

        /// <summary>
        /// 模块 
        /// </summary>
        public string Module { get; set; }

        /// <summary>
        /// 操作类型 
        /// </summary>
        public int ActionType { get; set; }

        /// <summary>
        /// 积分类型 
        /// </summary>
        public int ScoreType { get; set; }

        /// <summary>
        /// 操作前余额 
        /// </summary>
        public decimal BeforeAmount { get; set; }

        /// <summary>
        /// 变动金额（正负） 
        /// </summary>
        public decimal Amount { get; set; }

        /// <summary>
        /// 操作后余额 
        /// </summary>
        public decimal AfterAmount { get; set; }

        /// <summary>
        /// 用户ID 
        /// </summary>
        public long UserId { get; set; }

        /// <summary>
        /// 操作人 
        /// </summary>
        public string Operator { get; set; }

        /// <summary>
        /// 操作时间 
        /// </summary>
        public DateTime? CreateTime { get; set; }

        /// <summary>
        /// 备注 
        /// </summary>
        public string Remark { get; set; }

    }
}
