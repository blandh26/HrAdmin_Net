using Infrastructure.Model;
using Microsoft.AspNetCore.Mvc;
using HR.Model.Content;
using HR.Model.System.Dto;

namespace HR.Service.IService
{
    /// <summary>
    /// Hello接口
    /// </summary>
    public interface IHelloService : IBaseService<ArticleCategory>
    {
        /// <summary>
        /// 
        /// </summary>
        /// <param name="name"></param>
        /// <returns></returns>
        string SayHello(string name);
        ApiResult SayHello2([FromBody] SysUserDto userDto);
        ApiResult SayHello3();
        ApiResult SayHelloJson([FromBody] SysUserDto userDto);
    }
}
