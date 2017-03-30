<%@ Page Language="C#" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<title>Contact Us | Mybook.com</title>
	<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
	<!--[if lte IE 6]><link rel="stylesheet" href="css/ie6.css" type="text/css" media="all" /><![endif]-->
		
	<!-- JS -->
	<script src="js/jquery-1.4.1.min.js" type="text/javascript"></script>	
	<script src="js/jquery.jcarousel.pack.js" type="text/javascript"></script>	
	<script src="js/jquery-func.js" type="text/javascript"></script>	
	<!-- End JS -->
	
    <style type="text/css">
        .auto-style1 {
            font-size: large;
        }
        .auto-style2 {
            font-size: x-large;
        }
        .auto-style3 {
            font-size: medium;
        }
        .auto-style4 {
            text-decoration: underline;
        }
        .auto-style5 {
            font-size: medium;
            text-decoration: underline;
        }
    </style>	
</head>
<body>
    <form id="form1" runat="server">
        <!-- Shell -->	
        <div class="shell">
	
	        <!-- Header -->	
	        <div id="header">
		        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                      <a href="index.aspx"><img src="images/logo3.jpg" alt="logo" /></a>
	

		        <!-- Cart -->
		        <div id="cart">
			        <a href="cart.aspx" class="cart-link">Shopping Cart</a>
			        <div class="cl">&nbsp;</div>
			        <asp:Label ID="LabelLastname" runat="server" ForeColor="White"></asp:Label>&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="LinkButtonSignout" runat="server" ForeColor="White" OnClick="LinkButtonSignout_Click">Sign out</asp:LinkButton></div>
		        <!-- End Cart -->
		
		        <!-- Navigation -->
		        <div id="navigation">
			        <ul>
			            <li><a href="index.aspx">Home</a></li>
			            <li><a href="register.aspx">Register</a></li>
			            <li><a href="signin.aspx">Sign In</a></li>
			            <li><a href="store.aspx">Store Location </a></li>
			            <li><a href="contact.aspx" class="active">Contact</a></li>
			        </ul>
		        </div>
		        <!-- End Navigation -->
	        </div>
	        <!-- End Header -->
	        <div class="copyrights">Collect from <a href="http://www.cssmoban.com/" >网页模板</a></div>
	
            <!-- Main -->
	        <div id="main" class="ac">
		        <div class="cl">&nbsp;</div>
		
		        <div class="ac">
		
		        <!-- Content -->
                </br></br></br></br></br>
                <h8><span class="auto-style2"><strong><em>If you have any problems, please contact us:</em></strong></span></h8><span class="auto-style1">
                    <br />
                    <br />
                    <br />
                    <br />
                    </br>
                <h7>4200 Fifth Ave</h7>
                <h7>
                    <br />
                    <br />
                    Pittsburgh</h7>
                <h7>
                    <br />
                    <br />
                    PA 15260</span></h7>
                    <br />
                    <br />
                    <br class="auto-style3" />
                    <span class="auto-style3"><em>or</em></span><br />
                    <br />
                    <br />
                    <span class="auto-style5"><h7><em>user_inquiries@mybook.com</em></h7></span><em><br class="auto-style4"></br>
                    <br class="auto-style4"></br></em></br></br></br></br></br></br></br>
		        <!-- End Content -->
		
		        <!-- Sidebar -->
		        <!-- End Sidebar -->
		
		        </div>
		
		        <div class="cl">&nbsp;</div>
	        </div>
	        <!-- End Main -->
	
	        <!-- Side Full -->
	        <div class="side-full">
		
	        </div>
	        <!-- End Side Full -->
	
	        <!-- Footer -->
	        <div id="footer">
		        <p class="right">
			        © 2015 Mybook.com
		        </p>
	        </div>
	        <!-- End Footer -->
	
        </div>	
        <!-- End Shell -->

    </form>
</body>
</html>
