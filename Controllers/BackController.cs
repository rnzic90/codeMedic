using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace LekarskaOrdinacijaCodeMedic.Controllers
{
    public class BackController : Controller
    {
        [Authorize(Roles = "Admin, Doktor")]
        // GET: back
        public ActionResult Index()
        {
            return View("~/Views/back-end/index.cshtml");
        }
    }
}