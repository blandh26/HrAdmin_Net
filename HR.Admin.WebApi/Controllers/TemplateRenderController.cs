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
            string templatePath = Path.Combine(TemplatePath, "index.html");
            string html = ScribanHelper.RenderTemplate(templatePath, GetLang());
            return Content(html, "text/html");
        }

        [HttpGet("login")]
        public IActionResult Login()
        {
            string html = ScribanHelper.RenderTemplate(Path.Combine(TemplatePath, "login.html"), GetLang());

            return Content(html, "text/html");
        }

        [HttpGet("house.html")]
        public IActionResult HouseList()
        {
            string html = ScribanHelper.RenderTemplate("Template/house/index.html", GetLang());
            return Content(html, "text/html");
        }

        [HttpGet("house/page/{page:int}")]
        public IActionResult HouseListPage(int page)
        {
            var model = new { Page = page };
            string html = ScribanHelper.RenderTemplate("Template/house/index.html", GetLang(), model);
            return Content(html, "text/html");
        }

        [HttpGet("house/{id}.html")]
        public IActionResult HouseDetail(int id)
        {
            var model = new { Id = id };
            string html = ScribanHelper.RenderTemplate("Template/house/detail.html", GetLang(), model);
            return Content(html, "text/html");
        }

        private string GetLang()
        {
            var host = Request.Host.Host;
            if (host.StartsWith("kr.")) return "kr";
            if (host.StartsWith("cn.")) return "cn";
            return "cn"; // 默认中文
        }
    }
}
