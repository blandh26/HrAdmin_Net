using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HR.Model.System.Model.Dto
{
    /// <summary>
    /// 用户扩展信息表查询对象
    /// </summary>
    public class sysUserExtendQueryDto : PagerInfo
    {
    }

    /// <summary>
    /// 用户扩展信息表输入输出对象
    /// </summary>
    public class sysUserExtendDto
    {
        [Required(ErrorMessage = "用户ID，主键不能为空")]
        public string UserId { get; set; }

        public string PromotePhone { get; set; }

        public string PromoteWechat { get; set; }

        public string PromoteQq { get; set; }

        public string PromoteKakao { get; set; }

        public string PromoteEmail { get; set; }

        public string PromoteOther { get; set; }

        public string Level { get; set; }

        public string Gold { get; set; }

        public string Experience { get; set; }

        public string QaScore { get; set; }

        public string LifePhotos { get; set; }

        public string CompanyName { get; set; }

        public string CorporateCountry { get; set; }

        public string EnterpriseQualifications { get; set; }

        public int? EnterpriseZoneId { get; set; }

        public string RelationshipStatus { get; set; }

        public string Interests { get; set; }

        public DateTime? Birthday { get; set; }

        public string RealName { get; set; }

        public string IdCardNumber { get; set; }

        public string EducationLevel { get; set; }

        public string Introduction { get; set; }

        public int? CurrentAddress { get; set; }

        public int? Hometown { get; set; }

        public string DetailVerified { get; set; }

        public string PhoneVerified { get; set; }

        public string IdCardVerified { get; set; }

        public string LifePhotoVerified { get; set; }

        public string EnterpriseVerified { get; set; }

        public DateTime? CreatedAt { get; set; }

        public DateTime? UpdatedAt { get; set; }



        [ExcelColumn(Name = "企业验证版区")]
        public string EnterpriseZoneIdLabel { get; set; }
        [ExcelColumn(Name = "情感状态")]
        public string RelationshipStatusLabel { get; set; }
        [ExcelColumn(Name = "学历")]
        public string EducationLevelLabel { get; set; }
    }
}
