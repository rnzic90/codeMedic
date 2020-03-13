using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;
using LekarskaOrdinacijaCodeMedic.Models;

namespace LekarskaOrdinacijaCodeMedic.Controllers
{
    public class FrontController : Controller
    {
        private LekarskaOrdinacijaEntities db = new LekarskaOrdinacijaEntities();
        // GET: Front
        public ActionResult Index()
        {
            return View("~/Views/Front-end/Index.cshtml");
        }
        public ActionResult NasTim()
        {
            return View("~/Views/Front-end/NasTim.cshtml");
        }
        public ActionResult Kontakt()
        {
            return View("~/Views/Front-end/Kontakt.cshtml");
        }

    }
}