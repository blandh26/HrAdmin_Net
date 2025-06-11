using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HR.Model.FrontEnd.Dto
{
    /// <summary>
    /// 积分记录表查询对象
    /// </summary>
    public class PointslogQueryDto : PagerInfo
    {
        public long? Id { get; set; }
        public string Module { get; set; }
        public int? ActionType { get; set; }
        public int? ScoreType { get; set; }
        public decimal? Amount { get; set; }
        public long? UserId { get; set; }
        public string Operator { get; set; }
        public DateTime? BeginCreateTime { get; set; }
        public DateTime? EndCreateTime { get; set; }
    }

    /// <summary>
    /// 积分记录表输入输出对象
    /// </summary>
    public class PointslogDto
    {
        [Required(ErrorMessage = "主键ID不能为空")]
        public long Id { get; set; }

        [Required(ErrorMessage = "模块不能为空")]
        public string Module { get; set; }

        [Required(ErrorMessage = "操作类型不能为空")]
        public int ActionType { get; set; }

        [Required(ErrorMessage = "积分类型不能为空")]
        public int ScoreType { get; set; }

        [Required(ErrorMessage = "操作前余额不能为空")]
        public decimal BeforeAmount { get; set; }

        [Required(ErrorMessage = "变动金额（正负）不能为空")]
        public decimal Amount { get; set; }

        [Required(ErrorMessage = "操作后余额不能为空")]
        public decimal AfterAmount { get; set; }

        [Required(ErrorMessage = "用户ID不能为空")]
        public long UserId { get; set; }

        [Required(ErrorMessage = "操作人不能为空")]
        public string Operator { get; set; }

        [Required(ErrorMessage = "操作时间不能为空")]
        public DateTime? CreateTime { get; set; }

        public string Remark { get; set; }



    }
}
