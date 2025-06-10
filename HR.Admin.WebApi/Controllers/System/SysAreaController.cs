using HR.Model.System.Model;
using HR.Model.System.Model.Dto;
using HR.ServiceCore.Services.IService;
using Microsoft.AspNetCore.Mvc;

namespace HR.Admin.WebApi.Controllers.System
{
    /// <summary>
    /// 行政区域
    /// </summary>
    [Route("System/SysArea")]
    public class SysAreaController : BaseController
    {
        /// <summary>
        /// 行政区域接口
        /// </summary>
        private readonly ISysAreaService _SysAreaService;

        public SysAreaController(ISysAreaService SysAreaService)
        {
            _SysAreaService = SysAreaService;
        }

        /// <summary>
        /// 查询行政区域列表
        /// </summary>
        /// <param name="parm"></param>
        /// <returns></returns>
        [HttpGet("list")]
        [ActionPermissionFilter(Permission = "area:list")]
        public IActionResult QuerySysArea([FromQuery] SysAreaQueryDto parm)
        {
            var response = _SysAreaService.GetList(parm);
            return SUCCESS(response);
        }

        /// <summary>
        /// 查询行政区域列表树
        /// </summary>
        /// <param name="parm"></param>
        /// <returns></returns>
        [HttpGet("treeList")]
        [ActionPermissionFilter(Permission = "area:list")]
        public IActionResult QueryTreeSysArea([FromQuery] SysAreaQueryDto parm)
        {
            var response = _SysAreaService.GetTreeList(parm);
            return SUCCESS(response);
        }

        /// <summary>
        /// 查询行政区域详情
        /// </summary>
        /// <param name="Id"></param>
        /// <returns></returns>
        [HttpGet("{Id}")]
        [ActionPermissionFilter(Permission = "area:query")]
        public IActionResult GetSysArea(string Id)
        {
            var response = _SysAreaService.GetInfo(Id);

            var info = response.Adapt<SysAreaDto>();
            return SUCCESS(info);
        }

        /// <summary>
        /// 添加行政区域
        /// </summary>
        /// <returns></returns>
        [HttpPost]
        [ActionPermissionFilter(Permission = "area:add")]
        [Log(Title = "行政区域", BusinessType = BusinessType.INSERT)]
        public IActionResult AddSysArea([FromBody] SysAreaDto parm)
        {
            var modal = parm.Adapt<SysArea>().ToCreate(HttpContext);

            var response = _SysAreaService.AddSysArea(modal);

            return SUCCESS(response);
        }

        /// <summary>
        /// 更新行政区域
        /// </summary>
        /// <returns></returns>
        [HttpPut]
        [ActionPermissionFilter(Permission = "area:edit")]
        [Log(Title = "行政区域", BusinessType = BusinessType.UPDATE)]
        public IActionResult UpdateSysArea([FromBody] SysAreaDto parm)
        {
            var modal = parm.Adapt<SysArea>().ToUpdate(HttpContext);
            var response = _SysAreaService.UpdateSysArea(modal);

            return ToResponse(response);
        }

        /// <summary>
        /// 删除行政区域
        /// </summary>
        /// <returns></returns>
        [HttpPost("delete/{ids}")]
        [ActionPermissionFilter(Permission = "area:delete")]
        [Log(Title = "行政区域", BusinessType = BusinessType.DELETE)]
        public IActionResult DeleteSysArea([FromRoute] string ids)
        {
            var idArr = Tools.SplitAndConvert<string>(ids);

            return ToResponse(_SysAreaService.Delete(idArr));
        }

        /// <summary>
        /// 导出行政区域
        /// </summary>
        /// <returns></returns>
        [Log(Title = "行政区域", BusinessType = BusinessType.EXPORT, IsSaveResponseData = false)]
        [HttpGet("export")]
        [ActionPermissionFilter(Permission = "area:export")]
        public IActionResult Export([FromQuery] SysAreaQueryDto parm)
        {
            parm.PageNum = 1;
            parm.PageSize = 100000;
            var list = _SysAreaService.ExportList(parm).Result;
            if (list == null || list.Count <= 0)
            {
                return ToResponse(ResultCode.FAIL, "没有要导出的数据");
            }
            var result = ExportExcelMini(list, "行政区域", "行政区域");
            return ExportExcel(result.Item2, result.Item1);
        }

    }
}
