<%@ Page Language="C#" AutoEventWireup="true" CodeFile="cart.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Shopping Cart | Mybook.com</title>
	<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
	<!--[if lte IE 6]><link rel="stylesheet" href="css/ie6.css" type="text/css" media="all" /><![endif]-->
		
	<!-- JS -->
	<script src="js/jquery-1.4.1.min.js" type="text/javascript"></script>	
	<script src="js/jquery.jcarousel.pack.js" type="text/javascript"></script>	
	<script src="js/jquery-func.js" type="text/javascript"></script>	
	<!-- End JS -->
	

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
			        <li><a href="contact.aspx">Contact</a></li>
			    </ul>
		    </div>
		    <!-- End Navigation -->
	    </div>
	    <!-- End Header -->
	    <div class="copyrights">Collect from <a href="http://www.cssmoban.com/" >网页模板</a></div>
	
        <!-- Main -->
	    <div id="main">
		    <div class="cl">&nbsp;</div>
		
		    <!-- Content -->
            <div id="content">
                <table style="width:100%;" runat="server" id="table1">
                     <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="ISBN"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Title"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Price"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Quantity"></asp:Label>
                </td>
            </tr>
                </table>
            

                <br />
                <table style="width:100%;">
                    <tr>
                        <td>
                            <asp:Button ID="ButtonCheckout" runat="server" Text="Check Out" Height="30px" OnClick="ButtonCheckout_Click" Width="120px" />
                        </td>
                        <td>
                            <asp:Button ID="ButtonContinue" runat="server" Height="30px" OnClick="ButtonContinue_Click" Text="Continue Shopping" Width="120px" />
                        </td>
                    </tr>
                </table>
                <table style="width:100%;">
                    <tr>
                        <td>Total Price<asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                </table>
            

            </div>
		    <!-- End Content -->
		
		    <!-- Sidebar -->
		    <!-- End Sidebar -->
		
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
