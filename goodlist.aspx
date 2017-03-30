<%@ Page Language="C#" AutoEventWireup="true" CodeFile="goodlist.aspx.cs" Inherits="_Default" enableEventValidation="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>List | Mybook.com</title>
	<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
	<!--[if lte IE 6]><link rel="stylesheet" href="css/ie6.css" type="text/css" media="all" /><![endif]-->
		
	<!-- JS -->
	<script src="js/jquery-1.4.1.min.js" type="text/javascript"></script>	
	<script src="js/jquery.jcarousel.pack.js" type="text/javascript"></script>	
	<script src="js/jquery-func.js" type="text/javascript"></script>	
	<!-- End JS -->

	<style type="text/css">
        .auto-style1 {
            color: #5F5F5F;
            background-repeat: no-repeat;
            background-position-y: 4px;
        }
        .auto-style2 {
            height: 539px;
        }
        .auto-style3 {
            height: 150px;
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
                            <td  class="auto-style1">Cover</td>
                            <td  class="auto-style1">Title</td>
                            <td  class="auto-style1">Author</td>
                            <td  class="auto-style1">Price</td>
                            <td class="auto-style1">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style1">&nbsp;</td>
                            <td class="auto-style1">&nbsp;</td>
                            <td class="auto-style1">&nbsp;</td>
                            <td class="auto-style1">&nbsp;</td>
                            <td class="auto-style1">&nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Image ID="Image1" runat="server" Height="125px" Width="95px" />
                            </td>
                            <td>
                                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
                            </td>
                            <td>
                                <asp:LinkButton ID="LinkButton9" runat="server" OnClick="LinkButton9_Click">Detail</asp:LinkButton>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style1">
                                <asp:Image ID="Image2" runat="server" Height="125px" Width="95px" />
                            </td>
                            <td class="auto-style1">
                                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                            </td>
                            <td class="auto-style1">
                                <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                            </td>
                            <td class="auto-style1" aria-busy="True">
                                <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>
                            </td>
                            <td>
                                <asp:LinkButton ID="LinkButton10" runat="server" OnClick="LinkButton10_Click">Detail</asp:LinkButton>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style1">
                                <asp:Image ID="Image3" runat="server" Height="125px" Width="95px" />
                            </td>
                            <td class="auto-style1">
                                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                            </td>
                            <td class="auto-style1">
                                <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
                            </td>
                            <td class="auto-style1">
                                <asp:Label ID="Label13" runat="server" Text="Label"></asp:Label>
                            </td>
                            <td>
                                <asp:LinkButton ID="LinkButton11" runat="server" OnClick="LinkButton11_Click">Detail</asp:LinkButton>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Image ID="Image4" runat="server" Height="125px" Width="95px" />
                            </td>
                            <td>
                                <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label14" runat="server" Text="Label"></asp:Label>
                            </td>
                            <td>
                                <asp:LinkButton ID="LinkButton12" runat="server" OnClick="LinkButton12_Click">Detail</asp:LinkButton>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Image ID="Image5" runat="server" Height="125px" Width="95px" />
                            </td>
                            <td>
                                <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label15" runat="server" Text="Label"></asp:Label>
                            </td>
                            <td>
                                <asp:LinkButton ID="LinkButton13" runat="server" OnClick="LinkButton13_Click">Detail</asp:LinkButton>
                            </td>
                        </tr>
                        </table>
		    </div>
		    <!-- End Content -->
		
		    <!-- Sidebar -->
		    <div id="sidebar" class="auto-style2">
			
			    <!-- Search -->
                    <div class="box search">
				        <h2>Search by <span></span></h2>
				        <div class="box-content">
					        </div>
						
						        <label>
                                <br />
                                Enter ISBN or Title<br />
                                <br />
                                </label>
						        &nbsp;&nbsp;<asp:TextBox ID="TextBoxSearch" runat="server" Height="22px"></asp:TextBox>&nbsp;&nbsp;                        
                                <br />
						
						        <asp:Button ID="ButtonSearch" runat="server" Text="Search" OnClick="ButtonSearch_Click" />

						
						 &nbsp;</div>
			    <!-- End Search -->
			
			    <!-- Categories -->
			    <div class="box categories">
				    <h2>Categories <span></span></h2>
				    <div class="box-content">
					    <ul>
					         <li><span class="auto-style1"><asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Art</asp:LinkButton></span>
                                    </li>
					            <li><span class="auto-style1"><asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Biography</asp:LinkButton></span>
                                    </li>
					            <li><span class="auto-style1"><asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">Business</asp:LinkButton></span>
                                    </li>
					            <li><span class="auto-style1"><asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click">Computer</asp:LinkButton></span>
                                    </li>
					            <li><span class="auto-style1"><asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton5_Click">Entertainment</asp:LinkButton></span>
                                    </li>
					            <li><span class="auto-style1"><asp:LinkButton ID="LinkButton6" runat="server" OnClick="LinkButton6_Click">History</asp:LinkButton></span>
                                    </li>
					            <li><span class="auto-style1"><asp:LinkButton ID="LinkButton7" runat="server" OnClick="LinkButton7_Click">Literature</asp:LinkButton></span>
                                    </li>
					            <li><span class="auto-style1"><asp:LinkButton ID="LinkButton8" runat="server" OnClick="LinkButton8_Click">Travel</asp:LinkButton></span>
                                    </li>
					    </ul>
				    </div>
			    </div>
			    <!-- End Categories -->
			
		    </div>
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
