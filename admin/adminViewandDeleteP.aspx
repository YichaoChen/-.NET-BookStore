<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminViewandDeleteP.aspx.cs" Inherits="admin_adminViewandDeleteP" %>

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
    <div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [books]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [books] WHERE [isbn] = @original_isbn AND [title] = @original_title AND [publisher] = @original_publisher AND [author] = @original_author AND [price] = @original_price AND [cost] = @original_cost AND [category] = @original_category AND [stock] = @original_stock AND [description] = @original_description AND [image] = @original_image" InsertCommand="INSERT INTO [books] ([isbn], [title], [publisher], [author], [price], [cost], [category], [stock], [description], [image]) VALUES (@isbn, @title, @publisher, @author, @price, @cost, @category, @stock, @description, @image)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [books] SET [title] = @title, [publisher] = @publisher, [author] = @author, [price] = @price, [cost] = @cost, [category] = @category, [stock] = @stock, [description] = @description, [image] = @image WHERE [isbn] = @original_isbn AND [title] = @original_title AND [publisher] = @original_publisher AND [author] = @original_author AND [price] = @original_price AND [cost] = @original_cost AND [category] = @original_category AND [stock] = @original_stock AND [description] = @original_description AND [image] = @original_image">
            <DeleteParameters>
                <asp:Parameter Name="original_isbn" Type="String" />
                <asp:Parameter Name="original_title" Type="String" />
                <asp:Parameter Name="original_publisher" Type="String" />
                <asp:Parameter Name="original_author" Type="String" />
                <asp:Parameter Name="original_price" Type="Decimal" />
                <asp:Parameter Name="original_cost" Type="Decimal" />
                <asp:Parameter Name="original_category" Type="String" />
                <asp:Parameter Name="original_stock" Type="Int32" />
                <asp:Parameter Name="original_description" Type="String" />
                <asp:Parameter Name="original_image" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="isbn" Type="String" />
                <asp:Parameter Name="title" Type="String" />
                <asp:Parameter Name="publisher" Type="String" />
                <asp:Parameter Name="author" Type="String" />
                <asp:Parameter Name="price" Type="Decimal" />
                <asp:Parameter Name="cost" Type="Decimal" />
                <asp:Parameter Name="category" Type="String" />
                <asp:Parameter Name="stock" Type="Int32" />
                <asp:Parameter Name="description" Type="String" />
                <asp:Parameter Name="image" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="title" Type="String" />
                <asp:Parameter Name="publisher" Type="String" />
                <asp:Parameter Name="author" Type="String" />
                <asp:Parameter Name="price" Type="Decimal" />
                <asp:Parameter Name="cost" Type="Decimal" />
                <asp:Parameter Name="category" Type="String" />
                <asp:Parameter Name="stock" Type="Int32" />
                <asp:Parameter Name="description" Type="String" />
                <asp:Parameter Name="image" Type="String" />
                <asp:Parameter Name="original_isbn" Type="String" />
                <asp:Parameter Name="original_title" Type="String" />
                <asp:Parameter Name="original_publisher" Type="String" />
                <asp:Parameter Name="original_author" Type="String" />
                <asp:Parameter Name="original_price" Type="Decimal" />
                <asp:Parameter Name="original_cost" Type="Decimal" />
                <asp:Parameter Name="original_category" Type="String" />
                <asp:Parameter Name="original_stock" Type="Int32" />
                <asp:Parameter Name="original_description" Type="String" />
                <asp:Parameter Name="original_image" Type="String" />
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
            View and Delete Products<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="isbn" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="isbn" HeaderText="isbn" ReadOnly="True" SortExpression="isbn" />
                    <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
                    <asp:BoundField DataField="publisher" HeaderText="publisher" SortExpression="publisher" />
                    <asp:BoundField DataField="author" HeaderText="author" SortExpression="author" />
                    <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                    <asp:BoundField DataField="cost" HeaderText="cost" SortExpression="cost" />
                    <asp:BoundField DataField="category" HeaderText="category" SortExpression="category" />
                    <asp:BoundField DataField="stock" HeaderText="stock" SortExpression="stock" />
                    <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
                    <asp:BoundField DataField="image" HeaderText="image" SortExpression="image" />
                    <asp:CommandField CancelText="cancel" EditText="edit" ShowEditButton="True" UpdateText="update" />
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
