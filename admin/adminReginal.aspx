<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminReginal.aspx.cs" Inherits="adminReginal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<title>Admin | Mybook.com</title>
	<link rel="stylesheet" href="admin.css" type="text/css" media="all" />
    <style type="text/css">
* { padding:0; margin:0; outline:0; }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div><asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT oh.rname, SUM(os.total_quantity) total_salesvolume
FROM orders o, orderhandler oh, ordersummary os
WHERE o.oid = os.oder AND o.saleid = oh.saleid
GROUP BY oh.rname
ORDER BY total_salesvolume DESC;"></asp:SqlDataSource>
        </div>
    
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
                    <td>
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
            <br />
            <br />
            Regional Sales<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="rname" HeaderText="rname" SortExpression="rname" />
                    <asp:BoundField DataField="total_salesvolume" HeaderText="total_salesvolume" ReadOnly="True" SortExpression="total_salesvolume" />
                </Columns>
            </asp:GridView>
          </div>

        <div class="right">

        </div>
                
		
		
	</div>
    
    </form>
</body>
</html>
