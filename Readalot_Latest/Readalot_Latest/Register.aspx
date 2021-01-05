<%@ Page Title="" Language="C#" MasterPageFile="~/ReadalotMasterPage.Master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Readalot_Latest.Register" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
          font-family: Arial, Helvetica, sans-serif;

        }
        form{border: 3px solid dodgerblue; width:500px;margin:0 auto;background-color: black; padding: 15px 15px 15px 15px}

        * {
          box-sizing: border-box;
        }

        /* Add padding to containers */
        .container {
          padding: 16px;
        }

        /* Full-width input fields */
        input[type=text], input[type=password] {
          width: 100%;
          padding: 15px;
          margin: 5px 0 22px 0;
          display: inline-block;
          border: none;
          background: #a9a8a8;
        }

        input[type=text]:focus, input[type=password]:focus {
          background-color: #ddd;
          outline: none;
        }

        /* Overwrite default styles of hr */
        hr {
          border: 1px solid #f1f1f1;
          margin-bottom: 25px;
        }

        /* Overwrite default styles of p */
        p {
    
          color: white;
        }
        p1 {
    
          color: black;
        }

        /* Set a style for the submit button */
        .registerbtn {
          background-color: dodgerblue;
          color: white;
          padding: 16px 20px;
          margin: 8px 0;
          border: none;
          cursor: pointer;
          width: 100%;
          opacity: 0.9;
        }

        .registerbtn:hover {
          opacity: 1;
        }

        /* Add a blue text color to links */
        a {
          color: dodgerblue;
        }

        b{
            color: white;
        }

        /* Add a white text color to labels */
        label {
          color: white;
        }

        /* Set a grey background color and center the text of the "sign in" section */
        .signin {
          background-color: dodgerblue;
          text-align: center;
        }

     </style>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

	<form runat="server" style="padding:15px 15px 15px 15px">
        <div class="imgcomtainer" align="center">
            <h2>Register</h2>
            <img src="images/OwlAvatar.png" alt="Owl Avatar" />
        </div>

        <div class="container" runat="server">

            <p>Please fill in this form to create an account.</p

            <label for="email"><b>Email</b></label>
            <input type="text" placeholder="Enter Email"  id="email" runat="server" name="email" required>

            <label for="title"><b>Title</b></label>
            <input type="text" placeholder="Enter Title"  id="title" runat="server" name="title" required>

            <label for="firstname"><b>First Name</b></label>
            <input type="text" placeholder="Enter First Name"  id="firstName" runat="server" name="firstname" required>

            <label for="lastname"><b>Last Name</b></label>
            <input type="text" placeholder="Enter Last Name"  id="lastName" runat="server" name="lastname" required>

            <label for="psw"><b>Password</b></label>
            <input type="password" placeholder="Enter Password"  id="pass" runat="server" name="psw" required>

            <label for="psw-repeat"><b>Repeat Password</b></label>
            <input type="password" placeholder="Repeat Password"  id="passrpt" runat="server" name="psw-repeat" required>
    
            <p>By creating an account you agree to our <a href="#">Terms & Privacy</a>.</p>

            <asp:button onclick="BtnRegister" runat="server" text="Register" class="registerbtn"></asp:button>

            <p>Already have an account? <a href="Login.aspx">Log in</a>.</p>
         </div>
  
    </form>
</asp:Content>

