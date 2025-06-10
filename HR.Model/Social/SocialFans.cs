namespace HR.Model.social
{
    /// <summary>
    /// 粉丝表
    /// </summary>
    [SugarTable("social_fans")]
    public class SocialFans
    {
        [SugarColumn(IsPrimaryKey = true)]
        public long PId { get; set; }
        public long Userid { get; set; }
        public long ToUserid { get; set; }
        /// <summary>
        /// 备注名
        /// </summary>
        public string RemarkName { get; set; }
        public DateTime FollowTime { get; set; }
        public string UserIP { get; set; }
    }
}
