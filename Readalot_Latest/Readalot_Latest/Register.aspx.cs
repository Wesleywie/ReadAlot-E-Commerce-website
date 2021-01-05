using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Readalot_Latest.ReadalotServiceReference;

namespace Readalot_Latest
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /*    string Type = "Customer";

                if (Session["UserType"] != null)
                {
                    if (Session["UserType"].Equals("Manager"))
                    {
                        var select = 0;

                        if (!IsPostBack)
                        {
                            select = User.UserType;
                        }
                        if (select.Equals(1))
                        {
                            Type = "Customer";
                        }
                        else if (select.Equals(2))
                        {
                            Type = "Admin";
                        }
                        else
                        {
                            Type = "Manager";
                        }
                    }*/
        }

        ReadalotServiceClient SR = new ReadalotServiceClient(); //ServiceReference

        protected void BtnRegister(object sender, EventArgs e)
        {
            bool PassMatch = SR.PasswordMatcher(pass.Value, passrpt.Value);

            if (PassMatch == true) //if password matches the user gets regitsered
            {
                SR.Register(title.Value, firstName.Value, lastName.Value, email.Value, pass.Value);
                Response.Redirect("Login.aspx");
            }
            else // user doesnt get registered
            {
                Response.Redirect("Register.aspx"); // if details are incorrect a message is displayed to say its incorrect
            }
        }
    }
}