<%@ Page Title="" Language="C#" MasterPageFile="~/Student/Student2.master" AutoEventWireup="true" CodeFile="Profile.aspx.cs" Inherits="Student_Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style6
        {
            width: 207px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1" style="height: 182px">
        <tr>
            <td class="style6">
                <asp:Image ID="Image1" runat="server" Height="137px" ImageUrl="~/img/damy.jpg" 
                    Width="145px" />
&nbsp;
            </td>
            <td>
                <asp:FormView ID="FormView1" runat="server" BackColor="#DEBA84" 
                    BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                    CellSpacing="2" DataKeyNames="id" DataSourceID="SqlDataSource1" 
                    GridLines="Both" style="text-align: center" Width="220px">
                    <EditItemTemplate>
                        id:
                        <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
                        <br />
                        name:
                        <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                        <br />
                        semester:
                        <asp:TextBox ID="semesterTextBox" runat="server" 
                            Text='<%# Bind("semester") %>' />
                        <br />
                        contact:
                        <asp:TextBox ID="contactTextBox" runat="server" Text='<%# Bind("contact") %>' />
                        <br />
                        degree:
                        <asp:TextBox ID="degreeTextBox" runat="server" Text='<%# Bind("degree") %>' />
                        <br />
                        password:
                        <asp:TextBox ID="passwordTextBox" runat="server" 
                            Text='<%# Bind("password") %>' />
                        <br />
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                            CommandName="Update" Text="Update" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </EditItemTemplate>
                    <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                    <InsertItemTemplate>
                        id:
                        <asp:TextBox ID="idTextBox" runat="server" Text='<%# Bind("id") %>' />
                        <br />
                        name:
                        <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                        <br />
                        semester:
                        <asp:TextBox ID="semesterTextBox" runat="server" 
                            Text='<%# Bind("semester") %>' />
                        <br />
                        contact:
                        <asp:TextBox ID="contactTextBox" runat="server" Text='<%# Bind("contact") %>' />
                        <br />
                        degree:
                        <asp:TextBox ID="degreeTextBox" runat="server" Text='<%# Bind("degree") %>' />
                        <br />
                        password:
                        <asp:TextBox ID="passwordTextBox" runat="server" 
                            Text='<%# Bind("password") %>' />
                        <br />
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                            CommandName="Insert" Text="Insert" />
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        Student Id:
                        <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                        <br />
                        Student Name:
                        <asp:Label ID="nameLabel" runat="server" Text='<%# Bind("name") %>' />
                        <br />
                        Semester:
                        <asp:Label ID="semesterLabel" runat="server" Text='<%# Bind("semester") %>' />
                        <br />
                        Contact:
                        <asp:Label ID="contactLabel" runat="server" Text='<%# Bind("contact") %>' />
                        <br />
                        Degree:
                        <asp:Label ID="degreeLabel" runat="server" Text='<%# Bind("degree") %>' />
                        <br />
                        <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                            CommandName="Edit" Text="Edit" />
&nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" 
                            Text="Delete" />
                        &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                            CommandName="New" Text="New" />
                    </ItemTemplate>
                    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                </asp:FormView>
                <br />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:studen_tmanagementConnectionString4 %>" 
                    DeleteCommand="DELETE FROM [addstudent] WHERE [id] = @id" 
                    InsertCommand="INSERT INTO [addstudent] ([id], [name], [semester], [contact], [degree], [password]) VALUES (@id, @name, @semester, @contact, @degree, @password)" 
                    SelectCommand="SELECT * FROM [addstudent] WHERE ([id] = @id)" 
                    UpdateCommand="UPDATE [addstudent] SET [name] = @name, [semester] = @semester, [contact] = @contact, [degree] = @degree, [password] = @password WHERE [id] = @id">
                    <DeleteParameters>
                        <asp:Parameter Name="id" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="id" Type="String" />
                        <asp:Parameter Name="name" Type="String" />
                        <asp:Parameter Name="semester" Type="String" />
                        <asp:Parameter Name="contact" Type="String" />
                        <asp:Parameter Name="degree" Type="String" />
                        <asp:Parameter Name="password" Type="String" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:SessionParameter Name="id" SessionField="sid" Type="String" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="name" Type="String" />
                        <asp:Parameter Name="semester" Type="String" />
                        <asp:Parameter Name="contact" Type="String" />
                        <asp:Parameter Name="degree" Type="String" />
                        <asp:Parameter Name="password" Type="String" />
                        <asp:Parameter Name="id" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

