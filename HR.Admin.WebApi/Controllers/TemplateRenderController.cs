using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Routing.Template;

namespace HR.Admin.WebApi.Controllers
{
    [AllowAnonymous]
    public class TemplateRenderController : BaseController
    {
        private readonly IWebHostEnvironment _env;

        public TemplateRenderController(IWebHostEnvironment env)
        {
            _env = env;
        }

        [HttpGet("")]
        [HttpGet("index")]
        [HttpGet("index.html")]
        public IActionResult Index()
        {
            string html = ScribanHelper.RenderTemplate("index.html", null, GetLang());
            return Content(html, "text/html");
        }

        #region 注册、登录、找回密码、会员页面、修改密码、修改信息、短消息、积分、评论、文章、新增文章
        [HttpGet("register")]
        public IActionResult Register()
        {
            string html = ScribanHelper.RenderTemplate("register.html", null, GetLang(),ScribanHelper.CacheType.Memory);
            return Content(html, "text/html");
        }

        [HttpGet("login")]
        public IActionResult Login()
        {
            string html = ScribanHelper.RenderTemplate("login.html", null, GetLang(), ScribanHelper.CacheType.Html);
            return Content(html, "text/html");
        }

        [HttpGet("resetpsd")]
        public IActionResult Resetpsd()
        {
            string html = ScribanHelper.RenderTemplate("resetpsd.html", null, GetLang());
            return Content(html, "text/html");
        }

        [HttpGet("member")]
        public IActionResult Member()
        {
            string html = ScribanHelper.RenderTemplate(Path.Combine("member", "index.html"), null, GetLang());
            return Content(html, "text/html");
        }

        [HttpGet("member/password")]
        public IActionResult MemberPassword()
        {
            string html = ScribanHelper.RenderTemplate(Path.Combine("member", "password.html"), null, GetLang());
            return Content(html, "text/html");
        }

        [HttpGet("member/info")]
        public IActionResult MemberInfo()
        {
            string html = ScribanHelper.RenderTemplate(Path.Combine("member", "info.html"), null, GetLang());
            return Content(html, "text/html");
        }

        [HttpGet("member/messages")]
        public IActionResult MemberMessages()
        {
            string html = ScribanHelper.RenderTemplate(Path.Combine("member", "messages.html"), null, GetLang());
            return Content(html, "text/html");
        }

        [HttpGet("member/points")]
        public IActionResult MemberPoints()
        {
            string html = ScribanHelper.RenderTemplate(Path.Combine("member", "points.html"), GetLang());
            return Content(html, "text/html");
        }

        [HttpGet("member/comments")]
        public IActionResult MemberComments()
        {
            string html = ScribanHelper.RenderTemplate(Path.Combine("member", "comments.html"), null, GetLang());
            return Content(html, "text/html");
        }

        [HttpGet("member/articles")]
        public IActionResult MemberArticles()
        {
            string html = ScribanHelper.RenderTemplate(Path.Combine("member", "articlesList.html"), null, GetLang());
            return Content(html, "text/html");
        }

        [HttpGet("member/articlesAdd")]
        public IActionResult MemberArticlesAdd()
        {
            string html = ScribanHelper.RenderTemplate(Path.Combine("member", "articlesAdd.html"), null, GetLang());
            return Content(html, "text/html");
        }
        #endregion

        #region 房屋
        [HttpGet("house.html")]
        public IActionResult HouseList()
        {
            string html = ScribanHelper.RenderTemplate(Path.Combine("house", "List.html"), GetLang());
            return Content(html, "text/html");
        }

        [HttpGet("house/page/{page:int}")]
        public IActionResult HouseListPage(int page)
        {
            var model = new { Page = page };
            string html = ScribanHelper.RenderTemplate(Path.Combine("house", "List.html"), GetLang());
            return Content(html, "text/html");
        }

        [HttpGet("house/{id}.html")]
        public IActionResult House(int id)
        {
            var model = new { Id = id };
            string html = ScribanHelper.RenderTemplate(Path.Combine("house", "detailed.html"), GetLang());
            return Content(html, "text/html");
        }
        #endregion

        #region 车辆
        [HttpGet("vehicles.html")]
        public IActionResult VehiclesList()
        {
            string html = ScribanHelper.RenderTemplate(Path.Combine("vehicles", "List.html"), GetLang());
            return Content(html, "text/html");
        }

        [HttpGet("vehicles/page/{page:int}")]
        public IActionResult VehiclesListPage(int page)
        {
            var model = new { Page = page };
            string html = ScribanHelper.RenderTemplate(Path.Combine("vehicles", "List.html"), GetLang());
            return Content(html, "text/html");
        }

        [HttpGet("vehicles/{id}.html")]
        public IActionResult Vehicles(int id)
        {
            var model = new { Id = id };
            string html = ScribanHelper.RenderTemplate(Path.Combine("vehicles", "detailed.html"), GetLang());
            return Content(html, "text/html");
        }
        #endregion

        #region 求职招聘
        [HttpGet("jobhunting.html")]
        public IActionResult JobHuntingList()
        {
            string html = ScribanHelper.RenderTemplate(Path.Combine("jobhunting", "List.html"), GetLang());
            return Content(html, "text/html");
        }

        [HttpGet("jobhunting/page/{page:int}")]
        public IActionResult JobHuntingListPage(int page)
        {
            var model = new { Page = page };
            string html = ScribanHelper.RenderTemplate(Path.Combine("jobhunting", "List.html"), GetLang());
            return Content(html, "text/html");
        }

        [HttpGet("jobhunting/{id}.html")]
        public IActionResult JobHunting(int id)
        {
            var model = new { Id = id };
            string html = ScribanHelper.RenderTemplate(Path.Combine("jobhunting", "detailed.html"), GetLang());
            return Content(html, "text/html");
        }
        #endregion

        #region 交友
        [HttpGet("dating.html")]
        public IActionResult DatingList()
        {
            string html = ScribanHelper.RenderTemplate(Path.Combine("dating", "List.html"), GetLang());
            return Content(html, "text/html");
        }

        [HttpGet("dating/page/{page:int}")]
        public IActionResult DatingListPage(int page)
        {
            var model = new { Page = page };
            string html = ScribanHelper.RenderTemplate(Path.Combine("dating", "List.html"), GetLang());
            return Content(html, "text/html");
        }

        [HttpGet("dating/{id}.html")]
        public IActionResult Dating(int id)
        {
            var model = new { Id = id };
            string html = ScribanHelper.RenderTemplate(Path.Combine("dating", "detailed.html"), GetLang());
            return Content(html, "text/html");
        }
        #endregion

        #region 二手交易
        [HttpGet("secondhand.html")]
        public IActionResult SecondHandList()
        {
            string html = ScribanHelper.RenderTemplate(Path.Combine("secondhand", "list.html"), GetLang());
            return Content(html, "text/html");
        }

        [HttpGet("secondhand/page/{page:int}")]
        public IActionResult SecondHandListPage(int page)
        {
            var model = new { Page = page };
            string html = ScribanHelper.RenderTemplate(Path.Combine("secondhand", "list.html"), GetLang());
            return Content(html, "text/html");
        }

        [HttpGet("secondhand/{id}.html")]
        public IActionResult SecondHand(int id)
        {
            var model = new { Id = id };
            string html = ScribanHelper.RenderTemplate(Path.Combine("secondhand", "detailed.html"), GetLang());
            return Content(html, "text/html");
        }
        #endregion

        #region 企业推广
        [HttpGet("businessPromotion.html")]
        public IActionResult BusinessPromotionList()
        {
            string html = ScribanHelper.RenderTemplate(Path.Combine("businessPromotion", "list.html"), GetLang());
            return Content(html, "text/html");
        }

        [HttpGet("businessPromotion/page/{page:int}")]
        public IActionResult BusinessPromotionListPage(int page)
        {
            var model = new { Page = page };
            string html = ScribanHelper.RenderTemplate(Path.Combine("businessPromotion", "list.html"), GetLang());
            return Content(html, "text/html");
        }

        [HttpGet("businessPromotion/{id}.html")]
        public IActionResult BusinessPromotion(int id)
        {
            var model = new { Id = id };
            string html = ScribanHelper.RenderTemplate(Path.Combine("businessPromotion", "detailed.html"), GetLang());
            return Content(html, "text/html");
        }
        #endregion

        #region 问答系统
        [HttpGet("qa.html")]
        public IActionResult QaList()
        {
            string html = ScribanHelper.RenderTemplate(Path.Combine("qa", "list.html"), GetLang());
            return Content(html, "text/html");
        }

        [HttpGet("qa/page/{page:int}")]
        public IActionResult QaListPage(int page)
        {
            var model = new { Page = page };
            string html = ScribanHelper.RenderTemplate(Path.Combine("qa", "list.html"), GetLang());
            return Content(html, "text/html");
        }

        [HttpGet("qa/{id}.html")]
        public IActionResult Qa(int id)
        {
            var model = new { Id = id };
            string html = ScribanHelper.RenderTemplate(Path.Combine("qa", "detailed.html"), GetLang());
            return Content(html, "text/html");
        }

        [HttpGet("qaAdd.html")]
        public IActionResult QaAdd(int id)
        {
            var model = new { Id = id };
            string html = ScribanHelper.RenderTemplate(Path.Combine("qa", "Add.html"), GetLang());
            return Content(html, "text/html");
        }
        #endregion

        #region Error
        [HttpGet("404")]
        public IActionResult Error404()
        {
            string html = ScribanHelper.RenderTemplate("404.html", null, GetLang());
            return Content(html, "text/html");
        }

        [HttpGet("500")]
        public IActionResult Error500()
        {
            string html = ScribanHelper.RenderTemplate("500.html", null, GetLang());
            return Content(html, "text/html");
        }
        #endregion

        private string GetLang()
        {
            var host = Request.Host.Host;
            if (host.StartsWith("kr.")) return "kr";
            if (host.StartsWith("cn.")) return "cn";
            return "cn"; // 默认中文
        }
    }
}
