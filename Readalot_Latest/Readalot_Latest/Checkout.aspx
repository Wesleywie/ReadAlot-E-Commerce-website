<%@ Page Title="" Language="C#" MasterPageFile="~/ReadalotMasterPage.Master" AutoEventWireup="true" CodeFile="Checkout.aspx.cs" Inherits="Readalot_Latest.Checkout" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="css/checkout.css"/>
    <link rel="stylesheet" type="text/css" href="css/checkout_responsive.css"/>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"/>
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/image_slide.js"></script>

   <style>
        .btnPay{
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
            background: dodgerblue;
            -webkit-transition: all 200ms ease;
	        -moz-transition: all 200ms ease;
	        -ms-transition: all 200ms ease;
	        -o-transition: all 200ms ease;
	        transition: all 200ms ease;
            
        }

        .btnPay:hover a
        {
	        color: #FFFFFF;
        }

        .btnPay:hover{
            background: #414141;
        }
    </style>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="site_content" style="background:black">
        <div>
            <div class="super_container">
	            <div class="super_container_inner">
		            <div class="super_overlay"></div>

		            <!-- Checkout -->

		            <div class="checkout">
			            <div class="container">
				            <div class="row">
					
					            <!-- Billing -->
					            <div class="col-lg-6">
						            <div class="billing">
							            <div class="checkout_title">Shipping Address</div>
							            <div class="checkout_form_container">
								            <form action="#" id="checkout_form" class="checkout_form">
                                                <div>
										            <!-- Address -->
										            <input type="text" id="checkout_address" class="checkout_input" placeholder="Street Address" required="required"/>
                                                </div>
									            <div>
										            <!-- City / Town -->
                                                     <input type="text" id="checkout_city" class="checkout_input" placeholder="City/Town" required="required"/>
									            </div>
									            <div>
										            <!-- Province -->
										            <select name="checkout_province" id="checkout_province" class="dropdown_item_select checkout_input" required="required">
											            <option>Eastern Cape</option>
											            <option>Free State</option>
											            <option>Gauteng</option>
											            <option>KwaZulu-Natal</option>
											            <option>Limpopo</option>
                                                        <option>Mpumalanga</option>
                                                        <option>Northern Cape</option>
                                                        <option>North West</option>
                                                        <option>Western Cape</option>
										            </select>
									            </div>

                                                 <div>
										            <!-- Zipcode -->
										            <input type="text" id="checkout_zipcode" class="checkout_input" placeholder="Zip Code"  required="required"/>
									            </div>

									            <div class="checkout_extra">
										            <ul>
											            <li class="billing_info d-flex flex-row align-items-center justify-content-start">
												            <label class="checkbox_container">
													            <input type="checkbox" id="cb_1" name="billing_checkbox" class="billing_checkbox" required ="required"/>
													            <span class="checkbox_mark"></span>
													            <span class="checkbox_text">Terms and conditions</span>
												            </label>
											            </li>
										            </ul>
									            </div>
								            </form>
							            </div>
                                    </div>
					            </div>

					            <!-- Cart Total -->
					            <div class="col-lg-6 cart_col">
						            <div class="cart_total">
							            <div class="cart_extra_content cart_extra_total">
								            <div class="checkout_title">Cart Total</div>
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
								            <div class="payment_options">
									            <div class="checkout_title">Payment</div>
                                                <div class="checkout_form_container">
                                                    <form action="#" id="payment_form" class="checkout_form">
									                    <div>
										                    <!-- Card Number -->
                                                             <input type="text" id="payment_card_no" class="checkout_input" placeholder="CREDIT CARD NUMBER" required="required"/>
									                    </div>
                                                        <div>
										                    <!-- Card cvv -->
                                                             <input type="text" id="payment_card_cvv" class="checkout_input" placeholder="CVV" required="required"/>
									                    </div>
                                                        <div class="row">
                                                            <div class="col-lg-6">
                                                                <div>
										                            <!-- Card expiration year -->
										                            <select name="payment_card_year" id="payment_card_year" class="dropdown_item_select                               checkout_input" required="required">
											                            <option>2019</option>
											                            <option>2020</option>
											                            <option>2021</option>
											                            <option>2022</option>
											                            <option>2023</option>
										                            </select>
									                            </div>
                                                            </div>
                                                            <div class="col-lg-6">
                                                                <div>
										                            <!-- card expiration month -->
										                            <select name="payment_card_year" id="payment_card_month" class="dropdown_item_select                               checkout_input" required="required">
											                            <option>01</option>
											                            <option>02</option>
											                            <option>03</option>
											                            <option>04</option>
											                            <option>05</option>
                                                                        <option>06</option>
                                                                        <option>07</option>
                                                                        <option>08</option>
                                                                        <option>09</option>
                                                                        <option>10</option>
                                                                        <option>11</option>
                                                                        <option>12</option>
										                            </select>
									                            </div>
                                                            </div>
                                                        </div>
                                                        <div>
										                    <!-- Name on card -->
                                                             <input type="text" id="payment_card_name" class="checkout_input" placeholder="NAME THAT APPEARS ON CARD" required="required"/>
									                    </div>
                                                    </form>
                                                </div>
								            </div>
                                                <form runat="server">
                                                    <asp:Button class="btnPay checkout_button trans_200" runat="server" type="transaction" Text="pay"/>
								                   
                                                </form>
							            </div>
						            </div>
					            </div>
				            </div>
			            </div>
		            </div>
	            </div>
            </div>
        </div>
    </div>

<script src="js/checkout.js"></script>
</asp:Content>
