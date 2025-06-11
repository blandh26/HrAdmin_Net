using HR.Model.FrontEnd;
using HR.Model.FrontEnd.Dto;
using HR.Service.FrontEnd.IService;
using Infrastructure.Attribute;
using HR.Repository;

namespace HR.Service.FrontEnd
{
    /// <summary>
    /// 积分记录表Service业务层处理
    /// </summary>
    [AppService(ServiceType = typeof(IPointslogService), ServiceLifetime = LifeTime.Transient)]
    public class PointslogService : BaseService<Pointslog>, IPointslogService
    {
        /// <summary>
        /// 查询积分记录表列表
        /// </summary>
        /// <param name="parm"></param>
        /// <returns></returns>
        public PagedInfo<PointslogDto> GetList(PointslogQueryDto parm)
        {
            var predicate = QueryExp(parm);

            var response = Queryable()
                .Where(predicate.ToExpression())
                .ToPage<Pointslog, PointslogDto>(parm);

            return response;
        }


        /// <summary>
        /// 获取详情
        /// </summary>
        /// <param name="Id"></param>
        /// <returns></returns>
        public Pointslog GetInfo(long Id)
        {
            var response = Queryable()
                .Where(x => x.Id == Id)
                .First();

            return response;
        }

        /// <summary>
        /// 添加积分记录表
        /// </summary>
        /// <param name="model"></param>
        /// <returns></returns>
        public Pointslog AddPointslog(Pointslog model)
        {
            return Insertable(model).ExecuteReturnEntity();
        }

        /// <summary>
        /// 查询导出表达式
        /// </summary>
        /// <param name="parm"></param>
        /// <returns></returns>
        private static Expressionable<Pointslog> QueryExp(PointslogQueryDto parm)
        {
            var predicate = Expressionable.Create<Pointslog>();

            return predicate;
        }
    }
}
