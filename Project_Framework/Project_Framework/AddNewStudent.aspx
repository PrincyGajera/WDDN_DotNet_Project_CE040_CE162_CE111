<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddNewStudent.aspx.cs" Inherits="Project_Framework.AddNewStudent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" ShowFooter="True" OnRowCommand="AddStudent" CellPadding="3" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px">
                <Columns>
                    <asp:TemplateField>
                        <FooterTemplate>
                            <asp:Button ID="Button1" runat="server" CommandName="Add" Text="Add Student" />
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Id">
                        <ItemTemplate> 
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("Id") %>'></asp:Label> 
                        </ItemTemplate> 
                        
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="First_name">
                        <ItemTemplate> 
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("First_name") %>'></asp:Label> 
                        </ItemTemplate> 
                        <FooterTemplate>
                            <asp:TextBox ID="addfirstname" runat="server" ></asp:TextBox>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Last_name">
                        <ItemTemplate> 
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("Last_name") %>'></asp:Label> 
                        </ItemTemplate> 
                        <FooterTemplate>
                            <asp:TextBox ID="addlastname" runat="server" ></asp:TextBox>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Email">
                        <ItemTemplate> 
                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("Email") %>'></asp:Label> 
                        </ItemTemplate> 
                        <FooterTemplate>
                            <asp:TextBox ID="addemail" runat="server" ></asp:TextBox>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Mobile_no">
                        <ItemTemplate> 
                            <asp:Label ID="Label6" runat="server" Text='<%# Bind("Mobile_no") %>'></asp:Label> 
                        </ItemTemplate> 
                        <FooterTemplate>
                            <asp:TextBox ID="addmobile" runat="server" ></asp:TextBox>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Teacher_Id">
                        <ItemTemplate> 
                            <asp:Label ID="Label7" runat="server" Text='<%# Bind("Teacher_Id") %>'></asp:Label> 
                        </ItemTemplate> 
                        <FooterTemplate>
                            <asp:TextBox ID="addteacherid" runat="server" ></asp:TextBox>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Branch">
                        <ItemTemplate> 
                            <asp:Label ID="Label8" runat="server" Text='<%# Bind("Branch") %>'></asp:Label> 
                        </ItemTemplate> 
                        <FooterTemplate>
                            <asp:TextBox ID="addbranch" runat="server" ></asp:TextBox>
                        </FooterTemplate>
                    </asp:TemplateField>
                    
                    <asp:TemplateField HeaderText="Password">
                         <ItemTemplate>
                            <asp:Label ID="Label10" runat="server" Text='<%# Bind("Password") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="addpassword" runat="server" ></asp:TextBox>
                        </FooterTemplate>
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />
            </asp:GridView>
        </div>
        <br />
        <br />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Details_Teacher.aspx">Back to Details</asp:HyperLink>
    </form>
</body>
</html>
