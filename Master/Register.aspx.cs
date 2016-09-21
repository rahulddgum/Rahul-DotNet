using Master.Appcode;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class Register : System.Web.UI.Page
{
   public  List<User> userData
    {
        get
        {
            if (Session["userData"] == null)
            {
                Session["userData"] = new List<User>();
            }
            return (List<User>)Session["userData"];
        }
        set
        {
            Session["userData"] = value;
        }
    }

    protected void Page_Load(object sender, EventArgs e)
{

}
    public void ClearDetails()
    {
        TxtUserName.Text = string.Empty;
        TxtPassword.Text = string.Empty;
        TxtConformPassword.Text = string.Empty;
        TxtEmail_id.Text = string.Empty;
        TxtPhone.Text = string.Empty;
    }


protected void SaveMethod(object sender, EventArgs e)
 {
        User userList=null;

        if (TxtPassword.Text == TxtConformPassword.Text)
        {
            userList = new User();
            userList.UserName = TxtUserName.Text;
            userList.Password = TxtPassword.Text;
            userList.Email_id = TxtEmail_id.Text;
            userList.Phone = long.Parse(TxtPhone.Text);
            userData.Add(userList);
            ClearDetails();

            Status.Text = "<font color='Green'>Registered Successfully</font>";
        }
        else
        {
            Status.Text = "<font color='Red'>Password Does Not Match</font>";
        }
            
        
       
        
    }
}