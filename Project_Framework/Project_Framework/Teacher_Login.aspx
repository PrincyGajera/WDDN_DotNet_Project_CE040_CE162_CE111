<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Teacher_Login.aspx.cs" Inherits="Project_Framework.Teacher_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 300px;
        }
    </style>
</head>
    
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        <h1><asp:Label ID="Label3" runat="server" ForeColor="Black" Text="Teacher's Login"></asp:Label></h1>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label1" runat="server" Text="Username" Font-Bold="True" Font-Size="Large"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtusername" runat="server" Height="20px" Width="150px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtusername" ErrorMessage="Enter Email" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label2" runat="server" Text="Password" Font-Bold="True" Font-Size="Large"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtpassword" runat="server" Height="20px" Width="150px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpassword" ErrorMessage="Enter Password" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" Font-Bold="True" Height="30px" Width="80px" />
                    </td>
                </tr>
            </table>
            <br />
        </div>
    </form>
</body>
</html>
