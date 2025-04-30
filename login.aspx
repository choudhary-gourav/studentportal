<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Webgorav.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
 <link rel="stylesheet" type="text/css" href="login.css" />

</head>
<body>
    <form id="form1" runat="server">
    <div class="login-container">
            <h2>Login</h2>

            <div class="form-group">
                <asp:Label ID="lblUsername" runat="server" Text="Username:"></asp:Label>
                <asp:TextBox ID="txtUsername" runat="server" CssClass="form-input"></asp:TextBox>
            </div>

            <div class="form-group">
                <asp:Label ID="lblPassword" runat="server" Text="Password:"></asp:Label>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-input"></asp:TextBox>
            </div>

            <div class="form-group">
                <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Login" />
               <asp:Button ID="Button2" runat="server" Text="Signup" OnClick="Signup" />
            </div>

            <asp:Label ID="lblMessage" runat="server" ForeColor="Red" CssClass="message-label"></asp:Label>
        </div>
    </form>
</body>
</html>
