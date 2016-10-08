using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data.SqlClient;

namespace EmployeeWebService
{
    /// <summary>
    /// Summary description for EmpService
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class EmpService : System.Web.Services.WebService
    {
        SqlConnection con = null;
        SqlCommand cmd = null;
        
        ConnectionClass conobj = new ConnectionClass();

        [WebMethod]
        public string InsertEmployee(int eno,string ename,double salary)
        {
            string message = "";

            try
            {
                con = conobj.myprojectonnection();
                con.Open();

                string query = "insert into Employee_tbl values(@prm_Eno,@prm_Ename,@prm_Salary)";
                cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@prm_Eno", eno);
                cmd.Parameters.AddWithValue("@prm_Ename", ename);
                cmd.Parameters.AddWithValue("@prm_Salary", salary);
                cmd.ExecuteNonQuery();

                con.Close();
                message = "Employee Details inserted Sucessfully....";

            }
            catch(Exception e)
            {
                message = "Please Contact ur admin";
            }
           
            return message;
        }
    }
}
