using HR.Model.FrontEnd.Dto;
using HR.Service.FrontEnd.IService;
using Microsoft.AspNetCore.Mvc;

namespace HR.Admin.WebApi.Controllers.FrontEnd
{
    /// <summary>
    /// 积分记录表
    /// </summary>
    [Route("frontEnd/FPointslog")]
    [ApiExplorerSettings(GroupName = "frontEnd")]
    public class PointslogController : BaseController
    {
        /// <summary>
        /// 积分记录表接口
        /// </summary>
        private readonly IPointslogService _PointslogService;

        public PointslogController(IPointslogService PointslogService)
        {
            _PointslogService = PointslogService;
        }

        /// <summary>
        /// 查询积分记录表列表(用户用)
        /// </summary>
        /// <param name="parm"></param>
        /// <returns></returns>
        [HttpGet("listByUserId")]
        public IActionResult QueryPointslogByUserId(long userid)
        {
            PointslogQueryDto parm = new PointslogQueryDto();
            parm.UserId = userid;
            var response = _PointslogService.GetList(parm);
            return SUCCESS(response);
        }

        /// <summary>
        /// 查询积分记录表列表
        /// </summary>
        /// <param name="parm"></param>
        /// <returns></returns>
        [HttpGet("list")]
        [ActionPermissionFilter(Permission = "fpointslog:list")]
        public IActionResult QueryPointslog([FromQuery] PointslogQueryDto parm)
        {
            var response = _PointslogService.GetList(parm);
            return SUCCESS(response);
        }


        /// <summary>
        /// 查询积分记录表详情
        /// </summary>
        /// <param name="Id"></param>
        /// <returns></returns>
        [HttpGet("{Id}")]
        [ActionPermissionFilter(Permission = "fpointslog:query")]
        public IActionResult GetPointslog(long Id)
        {
            var response = _PointslogService.GetInfo(Id);

            var info = response.Adapt<PointslogDto>();
            return SUCCESS(info);
        }

    }
}
