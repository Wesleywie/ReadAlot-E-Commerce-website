using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Readalot_Latest.ReadalotServiceReference;

namespace Readalot_Latest
{
    public partial class Explore : System.Web.UI.Page
    {
        ReadalotServiceClient SR = new ReadalotServiceClient(); //ServiceReference

        protected void Page_Load(object sender, EventArgs e)
        {
            dynamic maths = SR.getProductByCat("Mathematics");

            string display = "";
            string displayH = "";

            displayH = "<h2>Mathematics</h2>";

            foreach (TextBook p in maths)
            {
                display += "<div class='column'>";
                display += "<div class='card'>";
                display += "<h3 style='color: white;'>" + p.Book_Name + "</h3>";
                display += "<a href='AboutProduct.aspx?ID=" + p.Book_ISBN + "'> <img src=' " + p.Book_ImageSource + "' style='width:50%' </a>";
                display += "<p> R" + p.Book_Price.ToString("#.##") + "</p>";
                display += "</div>";
                display += "</div>";
            }


            dynamic Sci = SR.getProductByCat("Science");
            string displayS = "";
            string displayH2 = "";

            displayH2 = "<h2>Science</h2>";

            foreach (TextBook p in Sci)
            {
                displayS += "<div class='column'>";
                displayS += "<div class='card'>";
                displayS += "<h3 style='color: white;'>" + p.Book_Name + "</h3>";
                displayS += "<a href='AboutProduct.aspx?ID=" + p.Book_ISBN + "'> <img src=' " + p.Book_ImageSource + "' style='width:50%' </a>";
                displayS += "<p> R" + p.Book_Price.ToString("#.##") + "</p>";
                displayS += "</div>";
                displayS += "</div>";
            }

            dynamic Acc = SR.getProductByCat("Accounting");
            string displayA = "";
            string displayH3 = "";

            displayH3 = "<h2>Accounting</h2>";

            foreach (TextBook p in Acc)
            {
                displayA += "<div class='column'>";
                displayA += "<div class='card'>";
                displayA += "<h3 style='color: white;'>" + p.Book_Name + "</h3>";
                displayA += "<a href='AboutProduct.aspx?ID=" + p.Book_ISBN + "'> <img src=' " + p.Book_ImageSource + "' style='width:50%' </a>";
                displayA += "<p> R" + p.Book_Price.ToString("#.##") + "</p>";
                displayA += "</div>";
                displayA += "</div>";
            }

            dynamic LawB = SR.getProductByCat("Law");
            string displayL = "";

            string displayH4 = "";

            displayH4 = "<h2>Law</h2>";

            foreach (TextBook p in LawB)
            {
                displayL += "<div class='column'>";
                displayL += "<div class='card'>";
                displayL += "<h3 style='color: white;'>" + p.Book_Name + "</h3>";
                displayL += "<a href='AboutProduct.aspx?ID=" + p.Book_ISBN + "'> <img src=' " + p.Book_ImageSource + "' style='width:50%' </a>";
                displayL += "<p> R" + p.Book_Price.ToString("#.##") + "</p>";
                displayL += "</div>";
                displayL += "</div>";
            }

            dynamic Bus = SR.getProductByCat("Business");
            string displayB = "";

            string displayH5 = "";

            displayH5 = "<h2>Business</h2>";

            foreach (TextBook p in Bus)
            {
                displayB += "<div class='column'>";
                displayB += "<div class='card'>";
                displayB += "<h3 style='color: white;'>" + p.Book_Name + "</h3>";
                displayB += "<a href='AboutProduct.aspx?ID=" + p.Book_ISBN + "'> <img src=' " + p.Book_ImageSource + "' style='width:50%' </a>";
                displayB += "<p> R" + p.Book_Price.ToString("#.##") + "</p>";
                displayB += "</div>";
                displayB += "</div>";
            }

            Catalog.InnerHtml = displayH + display + "<br/>" + displayH2 + displayS + "<br/>" + displayH3 + displayA + "<br/>" + displayH4 + displayL + "<br/>" + displayH5 + displayB;

        }



        protected void Search(object sender, EventArgs e)
        {
            

            if(List1.SelectedValue == "-1")
            {
                Response.Write("Please select a Category");
            }
            else if(List1.SelectedValue == "1") //maths
            {
                int filter = 0;

                if(List2.SelectedValue == "1")
                {
                    filter = 1;
                }
                else if (List2.SelectedValue == "2")
                {
                    filter = 2;
                }
                else if(List2.SelectedValue == "3")
                {
                    filter = 3;
                }
                else if(List2.SelectedValue == "4")
                {
                    filter = 4;
                }

                dynamic maths = SR.getProductByfilter("Mathematics", filter);

                String displayMF = "";

                string displayH = "";

                displayH = "<h2>Mathematics</h2>";

                foreach (TextBook p in maths)
                {
                    displayMF += "<div class='column'>";
                    displayMF += "<div class='card'>";
                    displayMF += "<h3 style='color: white;'>" + p.Book_Name + "</h3>";
                    displayMF += "<a href='AboutProduct.aspx?ID=" + p.Book_ISBN + "'> <img src=' " + p.Book_ImageSource + "' style='width:50%' </a>";
                    displayMF += "<p> R" + p.Book_Price.ToString("#.##") + "</p>";
                    displayMF += "</div>";
                    displayMF += "</div>";

                }

                Catalog.InnerHtml = displayH + displayMF;
            }
            else if(List1.SelectedValue == "2") //Science
            {
                int filter = 0;

                if (List2.SelectedValue == "1")
                {
                    filter = 1;
                }
                else if (List2.SelectedValue == "2")
                {
                    filter = 2;
                }
                else if (List2.SelectedValue == "3")
                {
                    filter = 3;
                }
                else if (List2.SelectedValue == "4")
                {
                    filter = 4;
                }


                dynamic Sci = SR.getProductByfilter("Science", filter);

                String displaySF = "";

                string displayH = "";

                displayH = "<h2>Science</h2>";

                foreach (TextBook p in Sci)
                {
                    displaySF += "<div class='column'>";
                    displaySF += "<div class='card'>";
                    displaySF += "<h3 style='color: white;'>" + p.Book_Name + "</h3>";
                    displaySF += "<a href='AboutProduct.aspx?ID=" + p.Book_ISBN + "'> <img src=' " + p.Book_ImageSource + "' style='width:50%' </a>";
                    displaySF += "<p> R" + p.Book_Price.ToString("#.##") + "</p>";
                    displaySF += "</div>";
                    displaySF += "</div>";

                }

                Catalog.InnerHtml = displayH + displaySF;
            }
            else if(List1.SelectedValue == "3")
            {
                int filter = 0;

                if (List2.SelectedValue == "1")
                {
                    filter = 1;
                }
                else if (List2.SelectedValue == "2")
                {
                    filter = 2;
                }
                else if (List2.SelectedValue == "3")
                {
                    filter = 3;
                }
                else if (List2.SelectedValue == "4")
                {
                    filter = 4;
                }

                dynamic Acc = SR.getProductByfilter("Accounting", filter);

                String displayAF = "";

                string displayH = "";

                displayH = "<h2>Accounting</h2>";

                foreach (TextBook p in Acc)
                {
                    displayAF += "<div class='column'>";
                    displayAF += "<div class='card'>";
                    displayAF += "<h3 style='color: white;'>" + p.Book_Name + "</h3>";
                    displayAF += "<a href='AboutProduct.aspx?ID=" + p.Book_ISBN + "'> <img src=' " + p.Book_ImageSource + "' style='width:50%' </a>";
                    displayAF += "<p> R" + p.Book_Price.ToString("#.##") + "</p>";
                    displayAF += "</div>";
                    displayAF += "</div>";

                }

                Catalog.InnerHtml = displayH + displayAF;
            }
            else if(List1.SelectedValue == "4")
            {
                int filter = 0;

                if (List2.SelectedValue == "1")
                {
                    filter = 1;
                }
                else if (List2.SelectedValue == "2")
                {
                    filter = 2;
                }
                else if (List2.SelectedValue == "3")
                {
                    filter = 3;
                }
                else if (List2.SelectedValue == "4")
                {
                    filter = 4;
                }

                dynamic LawF = SR.getProductByfilter("Law", filter);

                String displayLF = "";

                string displayH = "";

                displayH = "<h2>Law</h2>";

                foreach (TextBook p in LawF)
                {
                    displayLF += "<div class='column'>";
                    displayLF += "<div class='card'>";
                    displayLF += "<h3 style='color: white;'>" + p.Book_Name + "</h3>";
                    displayLF += "<a href='AboutProduct.aspx?ID=" + p.Book_ISBN + "'> <img src=' " + p.Book_ImageSource + "' style='width:50%' </a>";
                    displayLF += "<p> R" + p.Book_Price.ToString("#.##") + "</p>";
                    displayLF += "</div>";
                    displayLF += "</div>";

                }

                Catalog.InnerHtml = displayH + displayLF;
            }
            else if(List1.SelectedValue == "5")
            {
                int filter = 0;

                if (List2.SelectedValue == "1")
                {
                    filter = 1;
                }
                else if (List2.SelectedValue == "2")
                {
                    filter = 2;
                }
                else if (List2.SelectedValue == "3")
                {
                    filter = 3;
                }
                else if (List2.SelectedValue == "4")
                {
                    filter = 4;
                }

                dynamic BusF = SR.getProductByfilter("Business", filter);

                String displayBF = "";

                string displayH = "";

                displayH = "<h2>Business</h2>";

                foreach (TextBook p in BusF)
                {
                    displayBF += "<div class='column'>";
                    displayBF += "<div class='card'>";
                    displayBF += "<h3 style='color: white;'>" + p.Book_Name + "</h3>";
                    displayBF += "<a href='AboutProduct.aspx?ID=" + p.Book_ISBN + "'> <img src=' " + p.Book_ImageSource + "' style='width:50%' </a>";
                    displayBF += "<p> R" + p.Book_Price.ToString("#.##") + "</p>";
                    displayBF += "</div>";
                    displayBF += "</div>";

                }

                Catalog.InnerHtml = displayH + displayBF;
            }


  
        }
    }
}