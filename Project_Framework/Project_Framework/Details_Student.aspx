<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Details_Student.aspx.cs" Inherits="Project_Framework.Details_Student" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
            <EditRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
        </asp:DetailsView>
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Student_Marks.aspx">Student_Marks</asp:HyperLink>
        <div>
        </div>
    </form>
</body>
</html>
