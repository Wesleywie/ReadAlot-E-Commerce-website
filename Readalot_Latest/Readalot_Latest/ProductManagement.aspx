<%@ Page Title="" Language="C#" MasterPageFile="~/ReadalotMasterPage.Master" AutoEventWireup="true" CodeFile="ProductManagement.aspx.cs" Inherits="Readalot_Latest.ProductManagement" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    

     <style>
        body {font-family: Arial, Helvetica, sans-serif;
        }
        form {border: 3px solid dodgerblue; width:500px; background-color: black; margin:auto; }

        input[type=text], input[type=password] {
          width: 100%;
          padding: 12px 20px;
          margin: 8px 0;
          display: inline-block;
          border: 1px solid #ccc;
          box-sizing: border-box;
          background-color: #DDD;
        }

        b{
            color: white;
        }

        p{
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

        .submitbtn {
          background-color: dodgerblue;
          color: white;
          padding: 14px 20px;
          margin: 8px 0;
          border: none;
          cursor: pointer;
          width: 100%;
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

        span.psw {
          float: right;
          padding-top: 16px;
        }

        /* Change styles for span and cancel button on extra small screens */
        @media screen and (max-width: 300px) {
          span.psw {
             display: block;
             float: none;
          }
          .cancelbtn {
             width: 100%;
          }
        }

        .center {
          display: block;
          margin-left: auto;
          margin-right: auto;
          height:100%;
          width: 30%;
        }

        .left {
          text-align:left;
          margin-left: auto;
          margin-right: auto;
          margin: 0px 0;
        }

        .headcenter {
          text-align:center;
          margin-left: auto;
          margin-right: auto;
        }
    </style>
    
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <form runat="server" style="padding:15px 15px 15px 15px">

            <h2 class="headcenter">Product Management</h2>
            <img src="images/OwlAvatar.png"  class="center"alt="Owl Avatar" />

            <p class="headcenter">Enter credentials you wish to add/edit</p>

            <p><b>ISBN</b></p>
            <input type="text" placeholder="Enter ISBN"  id="TextISBN" runat="server" name="email" required="required"/>

            <p><b>Book Name</b></p>
            <input type="text" placeholder="Enter Name"  id="TextBookName" runat="server" name="Name" required="required"/>

            <p><b>Author Name</b></p>
            <input type="text" placeholder="Enter First Name"  id="TextAuthor" runat="server" name="firstname" required="required"/>

            <p><b>Description</b></p>
            <input type="text" placeholder="Enter Description"  id="TextDescription" runat="server" name="description" required="required"/>
        
            <p><b>Category</b></p>
            <input type="text" placeholder="Enter Category"  id="TextCategory" runat="server" name="Category" required="required"/>

            <p> <b>Price</b></p>
            <input type="text" placeholder="Enter Price"  id="price" runat="server" name="Price" required="required"/>

            <p><b>Quantity</b></p>
            <input type="text" placeholder="Enter Quantity"  id="TextQuantity" runat="server" name="Quantity" required="required"/>

            <p><b>Image Source</b></p>

            <input type="text" placeholder="Enter Path"  id="Textmgsrc" runat="server" name="imgsrc" required="required"/>
    

            <asp:button onclick="BtnSubmit" runat="server" text="Submit Changes" class="submitbtn"></asp:button>
  
        </form>

</asp:Content>
