<%@ Page Title="" Language="C#" MasterPageFile="~/ReadalotMasterPage.Master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Readalot_Latest.Login" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body {font-family: Arial, Helvetica, sans-serif;
        }
        form {
            border: 3px solid dodgerblue;
            width:500px; 
            align-self: center;
            background-color: black;
        }

        input[type=text], input[type=password] {
          width: 100%;
          padding: 12px 20px;
          margin: 8px 0;
          display: inline-block;
          border: 1px solid #ccc;
          box-sizing: border-box;
          background-color: #DDD;
        }



        form { 
        margin: 0 auto; 
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

        .mybtn {
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


        </style>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <form runat="server">
          <div class="imgcontainer"> <h2>Login</h2>
            <img src="images/OwlAvatar.png" alt="Avatar">
          </div>

          <div class="container" runat="server">

            <label for="uname"><b>Username:</b></label>
            <input type="text" placeholder="Enter Username" id="userName" runat="server" name="uname" required>

            <label for="psw"><b>Password:</b></label>
            <input type="password" placeholder="Enter Password" id="pass" runat="server" name="psw" required>

        
            <asp:Button onclick="BtnLogin" runat="server" text="Login" class="mybtn"></asp:Button>

             <asp:Button onclick="BtnfrgtPsswrd" runat="server" text="Forgot Password" class="mybtn"></asp:Button>

          </div>

        </form>
</asp:Content>
