using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebClient1.Filters;

namespace WebClient1.Controllers
{
    [Authorize]
	[InitializeSimpleMembership]
    public class HomeController : Controller
    {
        // GET: Home
        public ActionResult Index()
        {
            return View();
        }
    }
}