<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminIndex.aspx.cs" Inherits="adminIndex" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<title>Admin | Mybook.com</title>
	<link rel="stylesheet" href="admin.css" type="text/css" media="all" />
    <style type="text/css">
* { padding:0; margin:0; outline:0; }
        .auto-style1 {
            height: 18px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
	<div class="body">
		<div id="header">
		<h1> <a href="../index.aspx">Return to Home</a></h1>
		</div>
		
		<div id="banner">
		<p>Mybook.com Management System</p>
		<br/>
		</div>
		
		<div id="main">
		
		
		    <br />
                
		<div class="left"></div>
		    <table style="width:100%;">
                <tr>
                    <td>
                        <asp:Button ID="ButtonSignOut" runat="server" Text="Sign out" OnClick="ButtonSignOut_Click" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Total Sales and Profit</asp:LinkButton>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Regional Sales</asp:LinkButton>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">Top Product Category</asp:LinkButton>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click">Loyal Business Customers</asp:LinkButton>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton5_Click">View and Edit Orders</asp:LinkButton>
                    </td>
                </tr>
                <tr>
                    <td>
                        
                        <asp:LinkButton ID="LinkButton6" runat="server" OnClick="LinkButton6_Click">View and Delete Products</asp:LinkButton>
                        
                    </td>
                </tr>
                <tr>
                    <td>
                        
                        <asp:LinkButton ID="LinkButton7" runat="server" OnClick="LinkButton7_Click">Add Products</asp:LinkButton>
                        
                    </td>
                </tr>
            </table>
          </div>

        <div class="right">

        </div>
                
		
		
	</div>
    </form>
</body>
</html>
