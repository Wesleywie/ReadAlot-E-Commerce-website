<%@ Page Title="" Language="C#" MasterPageFile="~/ReadalotMasterPage.Master" AutoEventWireup="true" CodeFile="ShoppingCart.aspx.cs" Inherits="Readalot_Latest.ShoppingCart" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="css/cart.css"/>
    <link rel="stylesheet" type="text/css" href="css/cart_responsive.css"/>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"/>
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/image_slide.js"></script>

    <style>
        .btnClearCart{
            height: 44px;
            padding-left: 18px;
            padding-right: 18px;
	        text-align: center;
            text-transform: uppercase;
            font-size: 18px;
            color:#FFFFFF;
            font-weight: 700;
            line-height: 44px;
	        margin-bottom: 10px;
	        border-radius: 3px;
            background: #b2b2b2;
            -webkit-transition: all 200ms ease;
	        -moz-transition: all 200ms ease;
	        -ms-transition: all 200ms ease;
	        -o-transition: all 200ms ease;
	        transition: all 200ms ease;
            
        }

        .btnClearCart:hover a
        {
	        color: #FFFFFF;
        }

        .btnClearCart:hover{
            background: #414141;
        }
    </style>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   <div id="site_content" style="background:black">

   <div class="super_container">
	<div class="super_container_inner">
		<div class="super_overlay"></div>

		<!-- Cart -->

		<div class="cart_section">
			<div class="container">
				<div class="row">
					<div class="col">
						<div class="cart_container">
							
							<!-- Cart Bar -->
							<div class="cart_bar">
								<ul class="cart_bar_list item_list d-flex flex-row align-items-center justify-content-end">
									<li class="mr-auto">Product</li>
									<li>Price</li>
									<li>Quantity</li>
									<li>Total</li>
								</ul>
							</div>

							<!-- Cart Items -->
							<div class="cart_items">
								<ul class="cart_items_list">

									<!-- Cart Item -->
									<li class="cart_item item_list d-flex flex-lg-row flex-column align-items-lg-center align-items-start justify-content-lg-end justify-content-start">
										<div class="product d-flex flex-lg-row flex-column align-items-lg-center align-items-start justify-content-start mr-auto">
											<div><div class="product_number">1</div></div>
											<div><div class="product_image"><img src="images/cart_item_1.jpg" alt=""/></div></div>
											<div class="product_name_container">
												<div class="product_name"><a href="product.html">Cool Flufy Clothing without Stripes</a></div>
												<div class="product_text">Second line for additional info</div>
											</div>
										</div>
										<div class="product_price product_text"><span>Price: </span>$3.99</div>
										<div class="product_quantity_container">
											<div class="product_quantity ml-lg-auto mr-lg-auto text-center">
												<span class="product_text product_num" id="quantityValue" runat="server">1</span>
												<div class="qty_sub qty_button trans_200 text-center"><span runat="server" onclick="decreaseQuantity">-</span></div>
												<div class="qty_add qty_button trans_200 text-center"><span runat="server" onclick="increaseQuantity">+</span></div>
											</div>
										</div>
										<div class="product_total product_text"><span>Total: </span>$3.99</div>
									</li>
								</ul>
							</div>

							<!-- Cart Buttons -->
                            <form runat="server">
							<div class="cart_buttons d-flex flex-row align-items-start justify-content-start">
								<div class="cart_buttons_inner ml-sm-auto d-flex flex-row align-items-start justify-content-start flex-wrap">
                                    <asp:Button class="btnClearCart" runat="server" OnClick="clearCart" type="reset" Text="clear cart"/>
									<div class="button button_continue trans_200"><a href="Explore.aspx">continue shopping</a></div>
								</div>
							</div>
                           </form>
						</div>
					</div>
				</div>
				<div class="row cart_extra_row"/>
						<div class="cart_extra cart_extra_2">
							<div class="cart_extra_content cart_extra_total">
								<div class="cart_extra_title">Cart Total</div>
								<ul class="cart_extra_total_list">
									<li class="d-flex flex-row align-items-center justify-content-start">
										<div class="cart_extra_total_title">Subtotal</div>
										<div class="cart_extra_total_value ml-auto">$29.90</div>
									</li>
									<li class="d-flex flex-row align-items-center justify-content-start">
										<div class="cart_extra_total_title">Shipping</div>
										<div class="cart_extra_total_value ml-auto">Free</div>
									</li>
									<li class="d-flex flex-row align-items-center justify-content-start">
										<div class="cart_extra_total_title">Total</div>
										<div class="cart_extra_total_value ml-auto">$29.90</div>
									</li>
								</ul>
								<div class="checkout_button trans_200"><a href="Checkout.aspx">proceed to checkout</a></div>
							</div>
						</div>
				</div>
			</div>
		</div>
	</div>
</div>

    
<script src="js/cart.js"></script>

</asp:Content>
