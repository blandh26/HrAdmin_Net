using HR.Model.Content.Dto;
using HR.Model.Content;

namespace HR.Service.Content.IService
{
    /// <summary>
    /// 用户加入圈子service接口
    /// </summary>
    public interface IArticleUserCirclesService : IBaseService<ArticleUserCircles>
    {
        PagedInfo<ArticleUserCirclesDto> GetList(ArticleUserCirclesQueryDto parm);

        ArticleUserCircles GetInfo(int Id);

        int JoinCircle(int userId, int categoryId);
        int RemoveCircle(int userId, int categoryId);
        int IsJoin(int userId, int categoryId);
        List<ArticleCategoryDto> GetMyJoinCircles(int userId);
    }
}
