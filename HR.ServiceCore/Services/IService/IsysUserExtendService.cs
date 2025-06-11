using HR.Model;
using HR.Model.System.Model;
using HR.Model.System.Model.Dto;

namespace HR.ServiceCore.Services.IService
{
    /// <summary>
    /// 用户扩展信息表service接口
    /// </summary>
    public interface IsysUserExtendService : IBaseService<sysUserExtend>
    {
        PagedInfo<sysUserExtendDto> GetList(sysUserExtendQueryDto parm);

        sysUserExtend GetInfo(string UserId);


        sysUserExtend AddsysUserExtend(sysUserExtend parm);
        int UpdatesysUserExtend(sysUserExtend parm);


    }
}
