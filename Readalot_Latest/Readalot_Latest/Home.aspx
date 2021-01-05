<%@ Page Title="" Language="C#" MasterPageFile="~/ReadalotMasterPage.Master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Readalot_Latest.Home" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    
     <style>
        body {font-family: Arial, Helvetica, sans-serif;
        }
        form {border: 3px solid dodgerblue; width:500px;background-color: black; margin: 0 auto; }

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
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div id="site_content" style="background:black">		

      <div class="slideshow">  
		<ul class="slideshow">
          <li class="show"><img width="900" height="250" src="images/Background1.png" alt="Readalot" /></li>
          <li><img width="900" height="250" src="images/Background2.jpg" alt="Readalot"/></li>
        </ul> 
      </div><!--close slideshow-->		
	  
	  <div class="ourwork">
	    <h3>What we are about</h3>
		<p>Books</p>
		<div class="more">
		  <a href="#">Read more</a>
		</div><!--close more-->      
	  </div><!--close ourwork-->
	  <div class="testimonials">
	    <h3>More Books</h3>
		<p>Books</p>	  
		<div class="more">
		  <a href="#">Read more</a>
		</div><!--close more-->        
	  </div><!--close testimonials-->	  
	  <div class="projects">
	    <h3>Books Books Books!</h3>
		<p>Books</p>	  
		<div class="more">
		  <a href="#">Read more</a>
		</div><!--close more-->        
	  </div><!--close projects-->		 
	 
	  <div id="content">
        <div class="content_item">
		  <h1>Readalot</h1> 
          <p>Simple online store</p>   				  
		</div><!--close content_item-->
      </div><!--close content-->   	
	</div><!--close site_content--> 

</asp:Content>