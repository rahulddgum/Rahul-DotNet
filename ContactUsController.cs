using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MyFirstMVC.Controllers
{
    public class ContactUsController : Controller
    {
        // GET: ContactUs
        [HttpGet]
        public ActionResult ContactUs_Index()
        {
            return View();
        }
    }
}