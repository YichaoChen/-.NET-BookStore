<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <title>Register | Mybook.com</title>
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
		    <div id="cart"><a href="cart.aspx" class="cart-link">Shopping Cart</a>
			        <div class="cl">&nbsp;</div>
			        <asp:Label ID="LabelLastname" runat="server" ForeColor="White"></asp:Label>&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="LinkButtonSignout" runat="server" ForeColor="White" OnClick="LinkButtonSignout_Click">Sign out</asp:LinkButton></div>
		    <!-- End Cart -->
		
		    <!-- Navigation -->
		    <div id="navigation">
			    <ul>
			        <li><a href="index.aspx">Home</a></li>
			        <li><a href="register.aspx" class="active">Register</a></li>
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

                <table style="width:100%;">
                    <tr>                   
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td  style="text-align:center">Please choose the type of your accout</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td style="text-align:center">
                            <asp:Button ID="Button1" runat="server" Text="Home" Height="50px" Width="150px" OnClick="Button1_Click" />
                        </td>
                        <td>&nbsp;</td>
                        <td style="text-align:center">
                            <asp:Button ID="Button2" runat="server" Text="Business" Height="50px" Width="150px" OnClick="Button2_Click" />
                        </td>
                        <td>&nbsp;</td>
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
