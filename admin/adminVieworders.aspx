<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminVieworders.aspx.cs" Inherits="adminVieworders" %>

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
    <div><asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [orders]" DeleteCommand="DELETE FROM [orders] WHERE [oid] = @oid" InsertCommand="INSERT INTO [orders] ([oid], [email], [orderdate], [saleid]) VALUES (@oid, @email, @orderdate, @saleid)" UpdateCommand="UPDATE [orders] SET [email] = @email, [orderdate] = @orderdate, [saleid] = @saleid WHERE [oid] = @oid">
        <DeleteParameters>
            <asp:Parameter Name="oid" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="oid" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter DbType="Date" Name="orderdate" />
            <asp:Parameter Name="saleid" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter DbType="Date" Name="orderdate" />
            <asp:Parameter Name="saleid" Type="Int32" />
            <asp:Parameter Name="oid" Type="String" />
        </UpdateParameters>
        </asp:SqlDataSource>
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
            View and Edit Orders<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="oid" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="oid" HeaderText="oid" ReadOnly="True" SortExpression="oid" />
                    <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                    <asp:BoundField DataField="orderdate" HeaderText="orderdate" SortExpression="orderdate" />
                    <asp:BoundField DataField="saleid" HeaderText="saleid" SortExpression="saleid" />
                    <asp:CommandField EditText="edit" ShowEditButton="True" CancelText="cancel" UpdateText="update" />
                    <asp:CommandField DeleteText="delete" ShowDeleteButton="True" />
                </Columns>
            </asp:GridView>
          </div>

        <div class="right">

        </div>
                
		
		
	</div>
    
    </form>
</body>
</html>
