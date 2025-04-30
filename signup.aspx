<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="Webgorav.WebForm1" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign Up</title>
    <link rel="stylesheet" type="text/css" href="signup.css"/>
</head>
<script type="text/javascript">
    function showPopup(message) {
        alert(message);
    }
</script>
<body>
    <form id="form1" runat="server">
        <div>
            <h1><marquee bgcolor="white">SIGN UP PAGE</marquee></h1>
            <table class="signuptable">
                <tr>
                    <td><asp:Label ID="Label2" runat="server" Text="User Name"></asp:Label></td>
                    <td><asp:TextBox ID="txtname" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label1" runat="server" Text="Age"></asp:Label></td>
                    <td><asp:TextBox ID="txtage" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label4" runat="server" Text="Mobile Number"></asp:Label></td>
                    <td><asp:TextBox ID="signmobile" runat="server" TextMode="Phone"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label5" runat="server" Text="Password"></asp:Label></td>
                    <td><asp:TextBox ID="signpawrd" runat="server" TextMode="Password"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label6" runat="server" Text="Confirm Password"></asp:Label></td>
                    <td><asp:TextBox ID="signconfpaswrd" runat="server" TextMode="Password"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label7" runat="server" Text="Gender"></asp:Label></td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem Text="Male" Value="Male" />
                            <asp:ListItem Text="Female" Value="Female" />
                            <asp:ListItem Text="Other" Value="Other" />
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label8" runat="server" Text="Select State"></asp:Label></td>
                    <td>
                <asp:DropDownList ID="DropDownList1" runat="server">
    <asp:ListItem Text="Andhra Pradesh" Value="Andhra Pradesh" />
    <asp:ListItem Text="Arunachal Pradesh" Value="Arunachal Pradesh" />
    <asp:ListItem Text="Assam" Value="Assam" />
    <asp:ListItem Text="Bihar" Value="Bihar" />
    <asp:ListItem Text="Chhattisgarh" Value="Chhattisgarh" />
    <asp:ListItem Text="Goa" Value="Goa" />
    <asp:ListItem Text="Gujarat" Value="Gujarat" />
    <asp:ListItem Text="Haryana" Value="Haryana" />
    <asp:ListItem Text="Himachal Pradesh" Value="Himachal Pradesh" />
    <asp:ListItem Text="Jharkhand" Value="Jharkhand" />
    <asp:ListItem Text="Karnataka" Value="Karnataka" />
    <asp:ListItem Text="Kerala" Value="Kerala" />
    <asp:ListItem Text="Madhya Pradesh" Value="Madhya Pradesh" />
    <asp:ListItem Text="Maharashtra" Value="Maharashtra" />
    <asp:ListItem Text="Manipur" Value="Manipur" />
    <asp:ListItem Text="Meghalaya" Value="Meghalaya" />
    <asp:ListItem Text="Mizoram" Value="Mizoram" />
    <asp:ListItem Text="Nagaland" Value="Nagaland" />
    <asp:ListItem Text="Odisha" Value="Odisha" />
    <asp:ListItem Text="Punjab" Value="Punjab" />
    <asp:ListItem Text="Rajasthan" Value="Rajasthan" />
    <asp:ListItem Text="Sikkim" Value="Sikkim" />
    <asp:ListItem Text="Tamil Nadu" Value="Tamil Nadu" />
    <asp:ListItem Text="Telangana" Value="Telangana" />
    <asp:ListItem Text="Tripura" Value="Tripura" />
    <asp:ListItem Text="Uttar Pradesh" Value="Uttar Pradesh" />
    <asp:ListItem Text="Uttarakhand" Value="Uttarakhand" />
    <asp:ListItem Text="West Bengal" Value="West Bengal" />
    <asp:ListItem Text="Andaman and Nicobar Islands" Value="Andaman and Nicobar Islands" />
    <asp:ListItem Text="Chandigarh" Value="Chandigarh" />
    <asp:ListItem Text="Dadra and Nagar Haveli and Daman and Diu" Value="Dadra and Nagar Haveli and Daman and Diu" />
    <asp:ListItem Text="Delhi" Value="Delhi" />
    <asp:ListItem Text="Jammu and Kashmir" Value="Jammu and Kashmir" />
    <asp:ListItem Text="Ladakh" Value="Ladakh" />
    <asp:ListItem Text="Lakshadweep" Value="Lakshadweep" />
    <asp:ListItem Text="Puducherry" Value="Puducherry" />
</asp:DropDownList>
                    </td>
                </tr>
            </table>

            
            <div style="margin-top:10px;">
                <asp:Label ID="Label3" runat="server" ForeColor="Red"></asp:Label>
            </div>

         <div style="margin-top:20px; text-align:center;">
    <asp:Button ID="Button1" runat="server" Text="SIGN UP" OnClick="btnsubmit_Click" />
 
</div>
<div style="margin-top:21px; text-align:center;">  
    <asp:Button ID="loginbutton" runat="server" Text="LOGIN" OnClick="btnLogin_Click" />

</div>
        </div>
    </form>
</body>
</html>
