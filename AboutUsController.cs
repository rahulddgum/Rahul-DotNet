using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MyFirstMVC.Controllers
{
    public class AboutUsController : Controller
    {
        // GET: AboutUs
        [HttpGet]
        public ActionResult AboutUs_Index()
        {
            return View();
        }
    }
}