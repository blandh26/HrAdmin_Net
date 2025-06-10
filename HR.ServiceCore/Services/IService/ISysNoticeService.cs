using HR.Model;
using HR.Model.System;
using HR.Model.System.Dto;

namespace HR.ServiceCore.Services
{
    /// <summary>
    /// 通知公告表service接口
    ///
    /// @author blandh
    /// @date 2021-12-15
    /// </summary>
    public interface ISysNoticeService : IBaseService<SysNotice>
    {
        List<SysNotice> GetSysNotices();

        PagedInfo<SysNotice> GetPageList(SysNoticeQueryDto parm);
        PagedInfo<SysNoticeDto> ExportList(SysNoticeQueryDto parm);
    }
}
