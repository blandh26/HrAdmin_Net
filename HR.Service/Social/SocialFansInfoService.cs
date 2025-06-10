using Infrastructure.Attribute;
using HR.Model.social;
using HR.Service.Social.IService;

namespace HR.Service.Social
{
    [AppService(ServiceType = typeof(ISocialFansInfoService), ServiceLifetime = LifeTime.Transient)]
    public class SocialFansInfoService : BaseService<SocialFansInfo>, ISocialFansInfoService
    {
    }
}
