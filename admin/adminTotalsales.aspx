<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminTotalsales.aspx.cs" Inherits="adminTotalsales" %>

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
        <div><asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT temp.isbn, temp.title, temp.author, temp.total_sales, (temp.total_sales * (b.price-b.cost)) AS total_profit
FROM books b, (SELECT o.isbn, b.title, b.author, SUM(o.quantity) AS total_sales
               FROM orderitem o, books b
               WHERE o.isbn = b.isbn
               GROUP BY o.isbn, b.title, b.author) AS temp
WHERE b.isbn = temp.isbn
ORDER BY total_profit DESC; "></asp:SqlDataSource>
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
            Total Sales and Profit<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="isbn" HeaderText="isbn" SortExpression="isbn" />
                    <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
                    <asp:BoundField DataField="author" HeaderText="author" SortExpression="author" />
                    <asp:BoundField DataField="total_sales" HeaderText="total_sales" ReadOnly="True" SortExpression="total_sales" />
                    <asp:BoundField DataField="total_profit" HeaderText="total_profit" ReadOnly="True" SortExpression="total_profit" />
                </Columns>
            </asp:GridView>
          </div>

        <div class="right">

        </div>
                
		
		
	</div>
    </form>
</body>
</html>
