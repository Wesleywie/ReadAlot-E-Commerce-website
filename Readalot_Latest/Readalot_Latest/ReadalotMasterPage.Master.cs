using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Readalot_Latest.ReadalotServiceReference;

namespace Readalot_Latest
{
    public partial class ReadalotMasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((Session["UserType"] != null))
            {
                btnRegister.Visible = false;
                btnLogin.Visible = false;
                btnLogout.Visible = true;
                btnShoppingCart.Visible = true;

                if (Session["UserType"].ToString() == "admin")
                {
                    btnProductMan.Visible = true;
                    btnUserMan.Visible = true;
                }
            }
        }
    }
}