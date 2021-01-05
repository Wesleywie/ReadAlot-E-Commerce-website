<%@ Page Title="" Language="C#" MasterPageFile="~/ReadalotMasterPage.Master" AutoEventWireup="true" CodeFile="Explore.aspx.cs" Inherits="Readalot_Latest.Explore" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
body {font-family: Arial, Helvetica, sans-serif;}
form {border: 3px solid dodgerblue; width:80%; align:"center";background-color: black; runat="server"}

 p {
      color: white;
    }

 
form { 
margin: 0 auto; 
}


b{
    color: white;
}

button:hover {
  opacity: 0.8;
}

.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
}

.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
}

img.avatar {
  width: 40%;
  border-radius: 50%;
}

.container {
  padding: 16px;
}

.mybtn
{
  background-color: dodgerblue;
  color: white;
  padding: 14px 20px;
  border: none;
  cursor: pointer;
  width: 40%;
  text-align: center; 
}

span.psw {
  float: right;
  padding-top: 16px;
}

.grid-container {
  display: grid;
  grid-template-columns: repeat(4, 1fr);
  grid-gap: 5px;
}

/* Float four columns side by side */
.column {
  float: left;
  width: 23%;
  padding: 0 10px;
}

/* Remove extra left and right margins, due to padding */
.row {margin: 0 -5px;}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Responsive columns */
@media screen and (max-width: 600px) {
  .column {
    width: 100%;
    display: block;
    margin-bottom: 20px;
  }
}

/* Style the counter cards */
.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  padding: 16px;
  text-align: center;
  background-color: darkslategray;
  
  box-sizing: border-box;
  border: solid dodgerblue 6px;
  
}

.dropdown {
  position: absolute;
  right: 160px;
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f1f1f1;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.labelC
{
    color: white;
}

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">

      <div class="imgcontainer"> <h2>Books</h2>
        <img src="images/OwlAvatar.png" alt="Avatar"/>
      </div>
        
                <div class="dropdown">

                    <label class="labelC">Sort by:</label>

                    <asp:DropDownList ID="List1" runat="server">
                        <asp:ListItem Value="-1">Category</asp:ListItem>
                        <asp:ListItem Value="1">Maths</asp:ListItem>
                        <asp:ListItem Value="2">Science</asp:ListItem>
                        <asp:ListItem Value="3">Accounting</asp:ListItem>
                        <asp:ListItem Value="4">Law</asp:ListItem>
                        <asp:ListItem Value="5">Business</asp:ListItem>
                    </asp:DropDownList>

                <asp:DropDownList ID="List2" runat="server">
                    <asp:ListItem Value="-1">Filter</asp:ListItem>
                    <asp:ListItem Value="1">Price ASC</asp:ListItem>
                    <asp:ListItem Value="2">Price DESC</asp:ListItem>
                    <asp:ListItem Value="3">Name ASC</asp:ListItem> 
                    <asp:ListItem Value="4">Name DESC</asp:ListItem>
                </asp:DropDownList>

                    <asp:button runat="server" text="Search" class="mybtn" OnClick="Search"/>

                </div>

        <br>
        <br>
        <br>
        
        <div class="row">
            <span id="CatalogHeading" runat="server"></span>
            <span id="Catalog" runat="server"></span>
        </div>

    </form>


</asp:Content>

