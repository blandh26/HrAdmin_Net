using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HR.Model.System.Model
{
    /// <summary>
    /// 用户扩展信息表
    /// </summary>
    [SugarTable("sys_user_extend")]
    public class sysUserExtend
    {
        /// <summary>
        /// 用户ID，主键 
        /// </summary>
        [SugarColumn(IsPrimaryKey = true, IsIdentity = false)]
        public string UserId { get; set; }

        /// <summary>
        /// 宣传手机号 
        /// </summary>
        public string PromotePhone { get; set; }

        /// <summary>
        /// 宣传微信 
        /// </summary>
        public string PromoteWechat { get; set; }

        /// <summary>
        /// 宣传QQ 
        /// </summary>
        public string PromoteQq { get; set; }

        /// <summary>
        /// 宣传Kakao 
        /// </summary>
        public string PromoteKakao { get; set; }

        /// <summary>
        /// 宣传邮箱 
        /// </summary>
        public string PromoteEmail { get; set; }

        /// <summary>
        /// 宣传其他联系方式 
        /// </summary>
        public string PromoteOther { get; set; }

        /// <summary>
        /// 级别 
        /// </summary>
        public string Level { get; set; }

        /// <summary>
        /// 金币 
        /// </summary>
        public string Gold { get; set; }

        /// <summary>
        /// 经验 
        /// </summary>
        public string Experience { get; set; }

        /// <summary>
        /// 问答分数 
        /// </summary>
        public string QaScore { get; set; }

        /// <summary>
        /// 生活照 
        /// </summary>
        public string LifePhotos { get; set; }

        /// <summary>
        /// 企业名称 
        /// </summary>
        public string CompanyName { get; set; }

        /// <summary>
        /// 企业所在国 
        /// </summary>
        public string CorporateCountry { get; set; }

        /// <summary>
        /// 企业资质图片 
        /// </summary>
        public string EnterpriseQualifications { get; set; }

        /// <summary>
        /// 企业验证版区 
        /// </summary>
        public int? EnterpriseZoneId { get; set; }

        /// <summary>
        /// 情感状态 
        /// </summary>
        public string RelationshipStatus { get; set; }

        /// <summary>
        /// 兴趣爱好 
        /// </summary>
        public string Interests { get; set; }

        /// <summary>
        /// 出生年月日 
        /// </summary>
        public DateTime? Birthday { get; set; }

        /// <summary>
        /// 真实姓名 
        /// </summary>
        public string RealName { get; set; }

        /// <summary>
        /// 身份证号码 
        /// </summary>
        public string IdCardNumber { get; set; }

        /// <summary>
        /// 学历 
        /// </summary>
        public string EducationLevel { get; set; }

        /// <summary>
        /// 简介 
        /// </summary>
        public string Introduction { get; set; }

        /// <summary>
        /// 现住地址 
        /// </summary>
        public int? CurrentAddress { get; set; }

        /// <summary>
        /// 故乡 
        /// </summary>
        public int? Hometown { get; set; }

        /// <summary>
        /// 详细信息验证（0否，1是） 
        /// </summary>
        public string DetailVerified { get; set; }

        /// <summary>
        /// 手机号码验证状态 
        /// </summary>
        public string PhoneVerified { get; set; }

        /// <summary>
        /// 身份证验证状态 
        /// </summary>
        public string IdCardVerified { get; set; }

        /// <summary>
        /// 生活照验证状 
        /// </summary>
        public string LifePhotoVerified { get; set; }

        /// <summary>
        /// 企业验证信息状态 
        /// </summary>
        public string EnterpriseVerified { get; set; }

        /// <summary>
        /// 创建时间 
        /// </summary>
        public DateTime? CreatedAt { get; set; }

        /// <summary>
        /// 更新时间 
        /// </summary>
        public DateTime? UpdatedAt { get; set; }

    }
}
