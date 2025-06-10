using Infrastructure.Attribute;
using Infrastructure.Model;
using HR.Model;
using HR.Model.Dto;
using HR.Model.Models;
using HR.Repository;
using HR.ServiceCore.Services.IService;
using HR.Model.System.Model;
using HR.Model.System.Model.Dto;

namespace HR.ServiceCore.Services
{
    /// <summary>
    /// 行政区域Service业务层处理
    /// </summary>
    [AppService(ServiceType = typeof(ISysAreaService), ServiceLifetime = LifeTime.Transient)]
    public class SysAreaService : BaseService<SysArea>, ISysAreaService
    {
        /// <summary>
        /// 查询行政区域列表
        /// </summary>
        /// <param name="parm"></param>
        /// <returns></returns>
        public PagedInfo<SysAreaDto> GetList(SysAreaQueryDto parm)
        {
            var predicate = QueryExp(parm);

            var response = Queryable()
                //.OrderBy("Order asc")
                .Where(predicate.ToExpression())
                .ToPage<SysArea, SysAreaDto>(parm);

            return response;
        }

        /// <summary>
        /// 查询行政区域树列表
        /// </summary>
        /// <param name="parm"></param>
        /// <returns></returns>
        public List<SysArea> GetTreeList(SysAreaQueryDto parm)
        {
            var predicate = Expressionable.Create<SysArea>();


            var response = Queryable()
                .Where(predicate.ToExpression())
                .ToTree(it => it.Children, it => it.ParentId, 0);

            return response;
        }

        /// <summary>
        /// 获取详情
        /// </summary>
        /// <param name="Id"></param>
        /// <returns></returns>
        public SysArea GetInfo(string Id)
        {
            var response = Queryable()
                .Where(x => x.Id == Id)
                .First();

            return response;
        }

        /// <summary>
        /// 添加行政区域
        /// </summary>
        /// <param name="model"></param>
        /// <returns></returns>
        public SysArea AddSysArea(SysArea model)
        {
            return Insertable(model).ExecuteReturnEntity();
        }

        /// <summary>
        /// 修改行政区域
        /// </summary>
        /// <param name="model"></param>
        /// <returns></returns>
        public int UpdateSysArea(SysArea model)
        {
            return Update(model, true);
        }

        /// <summary>
        /// 导出行政区域
        /// </summary>
        /// <param name="parm"></param>
        /// <returns></returns>
        public PagedInfo<SysAreaDto> ExportList(SysAreaQueryDto parm)
        {
            var predicate = QueryExp(parm);

            var response = Queryable()
                .Where(predicate.ToExpression())
                .Select((it) => new SysAreaDto()
                {
                }, true)
                .ToPage(parm);

            return response;
        }

        /// <summary>
        /// 查询导出表达式
        /// </summary>
        /// <param name="parm"></param>
        /// <returns></returns>
        private static Expressionable<SysArea> QueryExp(SysAreaQueryDto parm)
        {
            var predicate = Expressionable.Create<SysArea>();

            return predicate;
        }
    }
}
