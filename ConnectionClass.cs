using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;

namespace EmployeeWebService
{
    public class ConnectionClass
    {
        public SqlConnection myprojectonnection()
        {
            string strconn = ConfigurationManager.ConnectionStrings["EmployeeConnection"].ConnectionString;
            SqlConnection con = new SqlConnection(strconn);
            return con;
        }
       
    }
}