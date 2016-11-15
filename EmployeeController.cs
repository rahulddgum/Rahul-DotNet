using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MVCUsingEntityFramework.Models;

namespace MVCUsingEntityFramework.Controllers
{
    public class EmployeeController : Controller
    {
       
        public ActionResult Index(int Id)
        {
            EmployeeContext employeeContext = new EmployeeContext();
            Employee employee = employeeContext.Employees.Single(emp => emp.EmployeeId==Id);
            return View(employee);
        }
    }
}