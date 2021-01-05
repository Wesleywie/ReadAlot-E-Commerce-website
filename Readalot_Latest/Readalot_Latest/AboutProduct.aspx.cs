using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Readalot_Latest.ReadalotServiceReference;

namespace Readalot_Latest
{
    public partial class AboutProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ReadalotServiceClient SR = new ReadalotServiceClient(); //ServiceReference

            if (Request.QueryString["ID"] != null) //checks if URL exists
            {
                string ID = Request.QueryString["ID"].ToString(); //set the string to  ID variable from URL

                dynamic product = SR.getBook(ID); //gets the AUG part based on ID

                string displayName = ""; //display for product
                string display = ""; //display for product

                displayName = "<img class='active' src=' " + product.Book_ImageSource + "' alt='' height='500' width='200'/>";

                display += "<div class='product-description'>";
                display += "<span>TextBook</span>";
                display += "<h1>" + product.Book_Name + "</h1>";
                display += "<p>" + product.Book_Description + "</p>";
                display += "</div>";

                display += "<div class='product-price'>";
                display += "<span>R" + product.Book_Price.ToString("#.##") + "</span>";
                display += "</div>";

                ProductName.InnerHtml = displayName; //sets Content
                Product.InnerHtml = display; //sets Content
            }
        }

        protected void BtnAddToCart(object sender, EventArgs e)
        {
            Response.Write("<script>alert('Item added to cart');</script>");

        }
    }
}