using Infrastructure.Attribute;
using ZR.Model.social;
using ZR.Service.Social.IService;

namespace ZR.Service.Social
{
    [AppService(ServiceType = typeof(ISocialFansInfoService), ServiceLifetime = LifeTime.Transient)]
    public class SocialFansInfoService : BaseService<SocialFansInfo>, ISocialFansInfoService
    {
    }
}
