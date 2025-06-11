using HR.Model.FrontEnd;
using HR.Model.FrontEnd.Dto;
using HR.Service.FrontEnd.IService;
using Infrastructure.Attribute;
using HR.Repository;
using Infrastructure.Extensions;

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

            predicate = predicate.AndIF(parm.Id != null, it => it.Id == parm.Id);
            predicate = predicate.AndIF(!string.IsNullOrEmpty(parm.Module), it => it.Module == parm.Module);
            predicate = predicate.AndIF(parm.ActionType != null, it => it.ActionType == parm.ActionType);
            predicate = predicate.AndIF(parm.ScoreType != null, it => it.ScoreType == parm.ScoreType);
            if (parm.UserId != null)
            {
                predicate = predicate.AndIF(parm.UserId != null, it => it.UserId == Convert.ToInt64(parm.UserId));
            }
            predicate = predicate.AndIF(!string.IsNullOrEmpty(parm.Operator), it => it.Operator == parm.Operator);
            predicate = predicate.AndIF(parm.BeginCreateTime == null, it => it.CreateTime >= DateTime.Now.ToShortDateString().ParseToDateTime());
            predicate = predicate.AndIF(parm.BeginCreateTime != null, it => it.CreateTime >= parm.BeginCreateTime);
            predicate = predicate.AndIF(parm.EndCreateTime != null, it => it.CreateTime <= parm.EndCreateTime);
            return predicate;
        }
    }
}
