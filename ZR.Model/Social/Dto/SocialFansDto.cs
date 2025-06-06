using ZR.Model.Content.Dto;

namespace ZR.Model.social
{
    /// <summary>
    /// 粉丝表
    /// </summary>
    public class SocialFansDto
    {
        [JsonIgnore]
        public long PId { get; set; }
        public long Userid { get; set; }
        public long ToUserid { get; set; }
        [JsonIgnore]
        public DateTime FollowTime { get; set; }
        [JsonIgnore]
        public string UserIP { get; set; }
        public int Status { get; set; }

        public ArticleUser User { get; set; }
    }

    public class FansQueryDto : PagerInfo
    {
        public int SelectType { get; set; }
    }
}
