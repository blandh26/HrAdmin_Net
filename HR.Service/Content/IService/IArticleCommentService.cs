using HR.Model;
using HR.Model.Content;
using HR.Model.Content.Dto;

namespace HR.Service.Content.IService
{
    public interface IArticleCommentService
    {
        PagedInfo<ArticleCommentDto> GetMessageList(MessageQueryDto dto);
        ArticleComment AddMessage(ArticleComment message);
        int PraiseMessage(long mid);
        int DeleteMessage(long mid, long userId);
        PagedInfo<ArticleCommentDto> GetReplyComments(long mid, MessageQueryDto pager);
        PagedInfo<ArticleCommentDto> GetMyMessageList(MessageQueryDto dto);
        long TopMessage(long commentId, long top);
    }
}
