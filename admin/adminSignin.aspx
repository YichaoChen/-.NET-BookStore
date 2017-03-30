<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminSignin.aspx.cs" Inherits="adminSignin" %>

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
	<div class="body">
		<div id="header">
		<h1> <a href="../index.aspx">Return to Home</a></h1>
		</div>
		
		<div id="banner">
		<p>Mybook.com Management System</p>
		<br/>
		</div>
		
		<div id="main">
		<table style="width:100%;">
                    <tr>
                        <td>Account:</td>
                        <td>&nbsp;</td>
                        <td><asp:TextBox ID="TextBoxA" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>Password:</td>
                        <td>&nbsp;</td>
                        <td><asp:TextBox ID="TextBoxPassword" runat="server" TextMode="Password"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Button ID="ButtonSignIn" runat="server" Height="30px" OnClick="ButtonSignIn_Click" Text="Sign in" Width="90px" />
                        </td>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                </table>
		
		    <br />
                <table style="width:100%;">
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" ForeColor="#FF3300"></asp:Label>
                        </td>
                    </tr>
                </table>
		
		</div>
	</div>
    </form>
</body>
</html>
