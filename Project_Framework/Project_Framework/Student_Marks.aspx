<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Student_Marks.aspx.cs" Inherits="Project_Framework.Student_Marks" %>

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
        <div>
        &nbsp;&nbsp;
        </div>
    </form>
</body>
</html>
