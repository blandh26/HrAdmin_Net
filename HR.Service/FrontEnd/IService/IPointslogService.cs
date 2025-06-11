using HR.Model.FrontEnd;
using HR.Model.FrontEnd.Dto;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HR.Service.FrontEnd.IService
{
    /// <summary>
    /// 积分记录表service接口
    /// </summary>
    public interface IPointslogService : IBaseService<Pointslog>
    {
        PagedInfo<PointslogDto> GetList(PointslogQueryDto parm);

        Pointslog GetInfo(long Id);


        Pointslog AddPointslog(Pointslog parm);


    }
}
