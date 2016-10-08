using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeeWebApplication
{
    public partial class Employeefrm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Employeelocalhost.EmpService obj = new Employeelocalhost.EmpService();
            int eno = int.Parse(TextBox1.Text);
            string ename = TextBox2.Text;
            double salary = double.Parse(TextBox3.Text);
            string message = obj.InsertEmployee(eno, ename, salary);
            Label1.Text = message;
            TextBox1.Text = ""; ;
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox1.Focus();
        }
    }
}