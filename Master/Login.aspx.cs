using Master.Appcode;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Cache.SetNoStore();
    }

    protected void BtnSubmit_Click(object sender, EventArgs e)
    {

        //if((string)Session["name"]==TxtUserName.Text && (string)Session["password"]==TxtPassword.Text)
        // {
        //esponse.Redirect("AboutUs.aspx");
        //}
        // Label1.Text = (string)(Session["name"]);
        

        if (!string.IsNullOrEmpty(TxtUserName.Text) && !string.IsNullOrEmpty(TxtPassword.Text))
        {
          
            List<User> userList = (List<User>)(Session["userData"]);
            if (userList != null && userList.Exists(x => x.UserName.Equals(TxtUserName.Text,StringComparison.Ordinal) & x.Password.Equals(TxtPassword.Text,StringComparison.Ordinal)))
            {
                Response.Redirect("Home.aspx");
            }
            lblLoginStatus.Text = "Incorrect Username and Password";
        }

    }
}