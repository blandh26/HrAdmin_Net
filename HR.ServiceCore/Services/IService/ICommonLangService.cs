using HR.Model;
using HR.Model.Dto;
using HR.Model.Models;

namespace HR.ServiceCore.Services
{
    /// <summary>
    /// 多语言配置service接口
    ///
    /// @author blandh
    /// @date 2022-05-06
    /// </summary>
    public interface ICommonLangService : IBaseService<CommonLang>
    {
        PagedInfo<CommonLang> GetList(CommonLangQueryDto parm);
        List<CommonLang> GetLangList(CommonLangQueryDto parm);
        dynamic GetListToPivot(CommonLangQueryDto parm);
        void StorageCommonLang(CommonLangDto parm);
        Dictionary<string, object> SetLang(List<CommonLang> msgList);

        (string, object, object) ImportCommonLang(List<CommonLang> list);
    }
}
