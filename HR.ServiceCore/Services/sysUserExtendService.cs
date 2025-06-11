using Infrastructure.Attribute;
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
    /// 用户扩展信息表Service业务层处理
    /// </summary>
    [AppService(ServiceType = typeof(IsysUserExtendService), ServiceLifetime = LifeTime.Transient)]
    public class sysUserExtendService : BaseService<sysUserExtend>, IsysUserExtendService
    {
        /// <summary>
        /// 查询用户扩展信息表列表
        /// </summary>
        /// <param name="parm"></param>
        /// <returns></returns>
        public PagedInfo<sysUserExtendDto> GetList(sysUserExtendQueryDto parm)
        {
            var predicate = QueryExp(parm);

            var response = Queryable().Where(predicate.ToExpression())
                .ToPage<sysUserExtend, sysUserExtendDto>(parm);

            return response;
        }


        /// <summary>
        /// 获取详情
        /// </summary>
        /// <param name="UserId"></param>
        /// <returns></returns>
        public sysUserExtend GetInfo(string UserId)
        {
            var response = Queryable()
                .Where(x => x.UserId == UserId)
                .First();

            return response;
        }

        /// <summary>
        /// 添加用户扩展信息表
        /// </summary>
        /// <param name="model"></param>
        /// <returns></returns>
        public sysUserExtend AddsysUserExtend(sysUserExtend model)
        {
            return Insertable(model).ExecuteReturnEntity();
        }

        /// <summary>
        /// 修改用户扩展信息表
        /// </summary>
        /// <param name="model"></param>
        /// <returns></returns>
        public int UpdatesysUserExtend(sysUserExtend model)
        {
            return Update(model, true, "修改用户扩展信息表");
        }

        /// <summary>
        /// 查询导出表达式
        /// </summary>
        /// <param name="parm"></param>
        /// <returns></returns>
        private static Expressionable<sysUserExtend> QueryExp(sysUserExtendQueryDto parm)
        {
            var predicate = Expressionable.Create<sysUserExtend>();

            return predicate;
        }
    }
}
