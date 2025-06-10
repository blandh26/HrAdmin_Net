using HR.Model;
using HR.Model.System.Model;
using HR.Model.System.Model.Dto;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HR.ServiceCore.Services.IService
{
    /// <summary>
    /// 行政区域service接口
    /// </summary>
    public interface ISysAreaService : IBaseService<SysArea>
    {
        PagedInfo<SysAreaDto> GetList(SysAreaQueryDto parm);

        SysArea GetInfo(string Id);

        List<SysArea> GetTreeList(SysAreaQueryDto parm);

        SysArea AddSysArea(SysArea parm);
        int UpdateSysArea(SysArea parm);


        PagedInfo<SysAreaDto> ExportList(SysAreaQueryDto parm);
    }
}
