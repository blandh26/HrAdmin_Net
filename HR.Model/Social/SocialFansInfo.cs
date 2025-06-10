namespace HR.Model.social
{
    /// <summary>
    /// 粉丝信息表
    /// </summary>
    [SugarTable("social_fans_info")]
    public class SocialFansInfo
    {
        [SugarColumn(IsPrimaryKey = true)]
        public long Userid { get; set; }
        /// <summary>
        /// 关注数
        /// </summary>
        public int FollowNum { get; set; }
        /// <summary>
        /// 粉丝数
        /// </summary>
        public int FansNum { get; set; }
        [JsonIgnore]
        public DateTime UpdateTime { get; set; }
    }
}
