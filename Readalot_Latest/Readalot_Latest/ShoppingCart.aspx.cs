using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Readalot_Latest.ReadalotServiceReference;

namespace Readalot_Latest
{
    public partial class ShoppingCart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void clearCart(object sender, EventArgs e)
        {

            Response.Redirect("Home.aspx");
        }
    }
}