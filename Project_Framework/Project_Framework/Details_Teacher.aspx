<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Details_Teacher.aspx.cs" Inherits="Project_Framework.Details_Teacher" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/AddNewStudent.aspx">Add New Student</asp:HyperLink>
            <br />
            <br />
            <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
                <EditRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" />
            </asp:DetailsView>
            <br />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Student_List.aspx"> Students Marks</asp:HyperLink>
            <br />
        </div>
    </form>
</body>
</html>
