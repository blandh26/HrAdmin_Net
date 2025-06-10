using Infrastructure.Model;
using HR.Model;
using HR.Model.Dto;
using HR.Model.Models;

namespace HR.ServiceCore.Services
{
    /// <summary>
    /// 邮件发送记录service接口
    /// </summary>
    public interface IEmailLogService : IBaseService<EmailLog>
    {
        PagedInfo<EmailLogDto> GetList(EmailLogQueryDto parm);

        EmailLog GetInfo(long Id);

        EmailLog AddEmailLog(SendEmailDto parm, string result);

        int UpdateEmailLog(EmailLog parm);
    }
}
