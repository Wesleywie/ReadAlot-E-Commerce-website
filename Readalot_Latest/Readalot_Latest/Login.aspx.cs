using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Readalot_Latest.ReadalotServiceReference;

namespace Readalot_Latest
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        ReadalotServiceClient SR = new ReadalotServiceClient(); //ServiceReference

        protected void BtnLogin(object sender, EventArgs e)
        {

            String LoginVerification = SR.UserExists(userName.Value, pass.Value);

            if (LoginVerification != "")
            {
                User user = SR.getUserInfoByEmail(LoginVerification);
                Session["Name"] = user.E_Mail;
                Session["UserType"] = user.UserType;
                Response.Redirect("Home.aspx");
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void BtnfrgtPsswrd(object sender, EventArgs e)
        {

        }
    }
}