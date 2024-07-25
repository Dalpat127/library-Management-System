<%@ Page Title="" Language="C#" MasterPageFile="~/Student/Student2.master" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="Student_Search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1" style="background-color: #FF9966">
    <tr>
        <td style="font-weight: 700; text-align: right; font-size: large">
                Book Id</td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server" Width="182px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style3" colspan="2" style="text-align: center">
            <asp:Button ID="Button1" runat="server" Text="Search" Width="124px" 
                    onclick="Button1_Click" Height="28px" style="background-color: #CC00CC" />
        </td>
    </tr>
    <tr>
        <td class="style3" colspan="2">
        <center>
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="id" 
                DataSourceID="SqlDataSource1" Width="466px" BackColor="White" 
                BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                GridLines="Both" Height="122px" style="background-color: #CC6699" 
                Visible="False">
                <EditItemTemplate>
                    id:
                    <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
                    <br />
                    name:
                    <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                    <br />
                    author:
                    <asp:TextBox ID="authorTextBox" runat="server" Text='<%# Bind("author") %>' />
                    <br />
                    subject:
                    <asp:TextBox ID="subjectTextBox" runat="server" Text='<%# Bind("subject") %>' />
                    <br />
                    Available:
                    <asp:TextBox ID="AvailableTextBox" runat="server" 
                        Text='<%# Bind("Available") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                        CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                        CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <EditRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                <InsertItemTemplate>
                    id:
                    <asp:TextBox ID="idTextBox" runat="server" Text='<%# Bind("id") %>' />
                    <br />
                    name:
                    <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                    <br />
                    author:
                    <asp:TextBox ID="authorTextBox" runat="server" Text='<%# Bind("author") %>' />
                    <br />
                    subject:
                    <asp:TextBox ID="subjectTextBox" runat="server" Text='<%# Bind("subject") %>' />
                    <br />
                    Available:
                    <asp:TextBox ID="AvailableTextBox" runat="server" 
                        Text='<%# Bind("Available") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                        CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                        CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    Book ID:
                    <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                    <br />
                    Book Name:
                    <asp:Label ID="nameLabel" runat="server" Text='<%# Bind("name") %>' />
                    <br />
                    Author:
                    <asp:Label ID="authorLabel" runat="server" Text='<%# Bind("author") %>' />
                    <br />
                    Subject:
                    <asp:Label ID="subjectLabel" runat="server" Text='<%# Bind("subject") %>' />
                    <br />
                    <br />
                    &nbsp;&nbsp;</center>
                </ItemTemplate>
                <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#330099" />
            </asp:FormView>
        </td>
    </tr>
    <tr>
        <td class="style3" colspan="2">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:studen_tmanagementConnectionString3 %>" 
                DeleteCommand="DELETE FROM [addbook] WHERE [id] = @id" 
                InsertCommand="INSERT INTO [addbook] ([id], [name], [author], [subject], [Available]) VALUES (@id, @name, @author, @subject, @Available)" 
                SelectCommand="SELECT * FROM [addbook] WHERE ([id] = @id)" 
                
                UpdateCommand="UPDATE [addbook] SET [name] = @name, [author] = @author, [subject] = @subject, [Available] = @Available WHERE [id] = @id">
                <DeleteParameters>
                    <asp:Parameter Name="id" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="id" Type="String" />
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="author" Type="String" />
                    <asp:Parameter Name="subject" Type="String" />
                    <asp:Parameter Name="Available" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="id" PropertyName="Text" 
                        Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="author" Type="String" />
                    <asp:Parameter Name="subject" Type="String" />
                    <asp:Parameter Name="Available" Type="String" />
                    <asp:Parameter Name="id" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
</table>
</asp:Content>

