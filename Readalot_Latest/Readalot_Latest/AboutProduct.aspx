<%@ Page Title="" Language="C#" MasterPageFile="~/ReadalotMasterPage.Master" AutoEventWireup="true" CodeFile="AboutProduct.aspx.cs" Inherits="Readalot_Latest.AboutProduct" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body {font-family: Arial, Helvetica, sans-serif;}
        form {border: 3px solid dodgerblue; width:80%; align:"center";background-color: #fffdd0; runat="server"}

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
          margin: 8px 0;
          border: none;
          cursor: pointer;
          width: 100%;
        }

        span.psw {
          float: right;
          padding-top: 16px;
        }

        /* Basic Styling */
        html, body {
          height: 100%;
          width: 100%;
          margin: 0;
          font-family: 'Roboto', sans-serif;
        }
 
        .container {
          max-width: 1200px;
          margin: 0 auto;
          padding: 15px;
          display: flex;
        }

        /* Columns */
        .left-column {
          width: 65%;
          position: relative;
        }
 
        .right-column {
          width: 35%;
          margin-top: 60px;
        }

        /* Left Column */
        .left-column img {
          width: 100%;
          position: absolute;
          left: 0;
          top: 0;
          opacity: 0;
          transition: all 0.3s ease;
        }

        .left-column img.active {
          opacity: 1;
        }

        /* Product Description */
        .product-description {
          border-bottom: 1px solid #E1E8EE;
          margin-bottom: 20px;
        }
        .product-description span {
          font-size: 12px;
          color: #358ED7;
          letter-spacing: 1px;
          text-transform: uppercase;
          text-decoration: none;
        }
        .product-description h1 {
          font-weight: 300;
          font-size: 52px;
          color: #43484D;
          letter-spacing: -2px;
        }
        .product-description p {
          font-size: 16px;
          font-weight: 300;
          color: #86939E;
          line-height: 24px;
        }

        /* Product Price */
        .product-price {
          display: flex;
          align-items: center;
        }
 
        .product-price span {
          font-size: 26px;
          font-weight: 300;
          color: #43474D;
          margin-right: 20px;
        }
 
        .cart-btn {
          display: inline-block;
          background-color: #7DC855;
          border-radius: 6px;
          font-size: 16px;
          color: #FFFFFF;
          text-decoration: none;
          padding: 12px 30px;
          transition: all .5s;
        }
        .cart-btn:hover {
          background-color: #64af3d;
        }

        * Responsive */
        @media (max-width: 940px) {
          .container {
            flex-direction: column;
            margin-top: 60px;
          }
 
          .left-column,
          .right-column {
            width: 80%;
    
          }
 
          .left-column img {
            width: 300px;
            right: 0;
            top: -65px;
            left: initial;
          }
        }
 
        @media (max-width: 535px) {
          .left-column img {
            width: 220px;
            top: -85px;
          }
        }

        img {
          border-radius: 50%;
        }


    </style>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <form runat="server">

          <div class="imgcontainer"> <h2>About Book</h2>
            <img src="images/OwlAvatar.png" alt="Avatar"/>
          </div>

        <main class="container">
 
          <!-- Left Column / Headphones Image -->
          <div class="left-column">

               <span id="ProductName" runat="server"></span> 

          </div>
 
 
          <!-- Right Column -->
          <div class="right-column">

              <span id="Product" runat="server"></span>
              <asp:Button onclick="BtnAddToCart" runat="server" text="Add to Cart" class="cart-btn"></asp:Button>
 
          </div>

        </main>

   
     </form>
</asp:Content>