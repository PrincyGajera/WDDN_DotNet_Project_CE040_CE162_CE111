<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Student_List.aspx.cs" Inherits="Project_Framework.Student_List" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" OnRowEditing="MarksEditing" OnRowCancelingEdit="CancelUpdate" OnRowUpdating="MarksUpdating" ShowFooter="True"  OnRowCommand="AddMarks" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" style="margin-right: 0px">
            <Columns>
                <asp:TemplateField HeaderText="Update">
                     <EditItemTemplate>
                            <asp:Button ID="Button3" runat="server" CommandName="Update" Text="Update" />
                            <asp:Button ID="Button4" runat="server" CommandName="Cancel" Text="Cancel" />
                        </EditItemTemplate>

                        <ItemTemplate>
                                <asp:Button ID="Button1" runat="server" CommandName="Edit" Text="Edit" />
                                
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:Button ID="Button1" runat="server" CommandName="Add" Text="Add Marks" />
                        </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Id">
                 
                        <ItemTemplate> 
                               <asp:Label ID="Label1" runat="server" Text='<%# Bind("Id") %>'></asp:Label> 
                        </ItemTemplate>
                    <FooterTemplate>
                            <asp:TextBox ID="addid" runat="server" ></asp:TextBox>
                        </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Student_Id">
                        <ItemTemplate> 
                               <asp:Label ID="Label7" runat="server" Text='<%# Bind("Student_Id") %>'></asp:Label> 
                        </ItemTemplate>
                    <FooterTemplate>
                            <asp:TextBox ID="addstudent_id" runat="server" ></asp:TextBox>
                        </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Teacher_Id">
                    <ItemTemplate> 
                               <asp:Label ID="Label8" runat="server" Text='<%# Bind("Teacher_Id") %>'></asp:Label> 
                        </ItemTemplate>
                     <FooterTemplate>
                            <asp:TextBox ID="addteacher_id" runat="server" ></asp:TextBox>
                        </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="OS">
                     <EditItemTemplate> 
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("OS") %>'></asp:TextBox> 
                        </EditItemTemplate> 
                        <ItemTemplate> 
                               <asp:Label ID="Label2" runat="server" Text='<%# Bind("OS") %>'></asp:Label> 
                        </ItemTemplate>
                     <FooterTemplate>
                            <asp:TextBox ID="addOS" runat="server" ></asp:TextBox>
                        </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="AA">
                     <EditItemTemplate> 
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("AA") %>'></asp:TextBox> 
                        </EditItemTemplate> 
                        <ItemTemplate> 
                               <asp:Label ID="Label3" runat="server" Text='<%# Bind("AA") %>'></asp:Label> 
                        </ItemTemplate>
                     <FooterTemplate>
                            <asp:TextBox ID="addAA" runat="server" ></asp:TextBox>
                        </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="WDDN">
                     <EditItemTemplate> 
                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("WDDN") %>'></asp:TextBox> 
                        </EditItemTemplate> 
                        <ItemTemplate> 
                               <asp:Label ID="Label4" runat="server" Text='<%# Bind("WDDN") %>'></asp:Label> 
                        </ItemTemplate>
                     <FooterTemplate>
                            <asp:TextBox ID="addWDDN" runat="server" ></asp:TextBox>
                        </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="MFP">
                     <EditItemTemplate> 
                            <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("MFP") %>'></asp:TextBox> 
                        </EditItemTemplate> 
                        <ItemTemplate> 
                               <asp:Label ID="Label5" runat="server" Text='<%# Bind("MFP") %>'></asp:Label> 
                        </ItemTemplate>
                     <FooterTemplate>
                            <asp:TextBox ID="addMFP" runat="server" ></asp:TextBox>
                        </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="AT">
                     <EditItemTemplate> 
                            <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("AT") %>'></asp:TextBox> 
                        </EditItemTemplate> 
                        <ItemTemplate> 
                               <asp:Label ID="Label6" runat="server" Text='<%# Bind("AT") %>'></asp:Label> 
                        </ItemTemplate>
                     <FooterTemplate>
                            <asp:TextBox ID="addAT" runat="server" ></asp:TextBox>
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
        <br />
        <div>
            <br />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Details_Teacher.aspx">Back to details</asp:HyperLink>
        </div>
    </form>
</body>
</html>
