<%@ Page Title="" Language="C#" MasterPageFile="~/ReadalotMasterPage.Master" AutoEventWireup="true" CodeFile="UserManagement.aspx.cs" Inherits="Readalot_Latest.UserManagement" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
     <style>
        body {font-family: Arial, Helvetica, sans-serif;
        }
        form {border: 3px solid dodgerblue; width:500px; background-color: black; margin: 0 auto; }

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

        .headcenter {
          text-align:center;
          margin-left: auto;
          margin-right: auto;
        }

     </style>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
       <form runat="server" style="padding:15px 15px 15px 15px">
            <h2 class="headcenter">User Management</h2>
            <img src="images/OwlAvatar.png" class="center" alt="Owl Avatar" />

            <p class="headcenter">Enter credentials you wish to add/edit</p>

           <label for="email"><b>Email</b></label> 
            <input type="text" placeholder="Enter Email"  id="email" runat="server" name="email" required>

            <label for="title"><b>Title</b></label>
            <input type="text" placeholder="Enter Title"  id="title" runat="server" name="title" required>

            <label for="firstname"><b>First Name</b></label>
            <input type="text" placeholder="Enter First Name"  id="firstName" runat="server" name="firstname" required>

            <label for="lastname"><b>Last Name</b></label>
            <input type="text" placeholder="Enter Last Name"  id="lastName" runat="server" name="lastname" required>
        
            <label for="userType"><b>User Type </b></label>
            <input type="text" placeholder="Enter User Type"  id="Text1" runat="server" name="userType" required>
        

            <asp:button onclick="BtnSubmit" runat="server" text="Submit Changes" class="submitbtn"></asp:button>
  
        </form>
</asp:Content>