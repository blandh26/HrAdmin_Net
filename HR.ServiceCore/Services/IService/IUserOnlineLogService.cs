using HR.Model;
using HR.Model.Dto;
using HR.Model.Models;
using HR.ServiceCore.Signalr;

namespace HR.ServiceCore.Monitor.IMonitorService
{
    /// <summary>
    /// 用户在线时长service接口
    /// </summary>
    public interface IUserOnlineLogService : IBaseService<UserOnlineLog>
    {
        PagedInfo<UserOnlineLogDto> GetList(UserOnlineLogQueryDto parm);

        Task<UserOnlineLog> AddUserOnlineLog(UserOnlineLog parm, OnlineUsers onlineUsers);

        PagedInfo<UserOnlineLogDto> ExportList(UserOnlineLogQueryDto parm);
    }
}
