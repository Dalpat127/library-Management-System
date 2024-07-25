<%@ Page Title="" Language="C#" MasterPageFile="~/student.master" AutoEventWireup="true" CodeFile="Search_book.aspx.cs" Inherits="Search_book" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            text-align: center;
        }
        .style3
        {
            text-align: center;
            font-size: x-large;
            font-family: Arial, Helvetica, sans-serif;
            height: 50px;
            color: #800000;
            background-color: #FF6600;
        }
        .style5
        {
            padding-top:100px;
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
            <td class="style3" colspan="2">
                <asp:Button ID="Button1" runat="server" Text="Search" Width="124px" 
                    onclick="Button1_Click" Height="28px" style="background-color: #CC00CC" />
            </td>
        </tr>
        <tr>
            <td class="style5" colspan="2">
            <center>
                <asp:FormView ID="FormView1" runat="server" DataKeyNames="id"  
                    DataSourceID="SqlDataSource1" BackColor="LightGoldenrodYellow" 
                    BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" 
                    Width="334px" >
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
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                            CommandName="Update" Text="Update" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </EditItemTemplate>
                    <EditRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                    <FooterStyle BackColor="Tan" />
                    <HeaderStyle BackColor="Tan" Font-Bold="True" />
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
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                            CommandName="Insert" Text="Insert" />
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        Book id:
                        <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                        <br />
                        Book name:
                        <asp:Label ID="nameLabel" runat="server" Text='<%# Bind("name") %>' />
                        <br />
                        Author:
                        <asp:Label ID="authorLabel" runat="server" Text='<%# Bind("author") %>' />
                        <br />
                        Subject:
                        <asp:Label ID="subjectLabel" runat="server" Text='<%# Bind("subject") %>' />
                        <br />
                        <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                            CommandName="Edit" Text="Edit" />
                        &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                            CommandName="Delete" Text="Delete" />
                        &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                            CommandName="New" Text="New" />
                    </ItemTemplate>
                    <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                        HorizontalAlign="Center" />
                </asp:FormView>
                <br />
            </td>
        </tr>
        <tr>
            <td class="style3" colspan="2">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:studen_tmanagementConnectionString3 %>" 
                DeleteCommand="DELETE FROM [addbook] WHERE [id] = @id" 
                InsertCommand="INSERT INTO [addbook] ([id], [name], [author], [subject]) VALUES (@id, @name, @author, @subject)" 
                SelectCommand="SELECT * FROM [addbook] WHERE ([id] = @id)" 
                
                    UpdateCommand="UPDATE [addbook] SET [name] = @name, [author] = @author, [subject] = @subject WHERE [id] = @id">
                <DeleteParameters>
                    <asp:Parameter Name="id" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="id" Type="String" />
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="author" Type="String" />
                    <asp:Parameter Name="subject" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="id" PropertyName="Text" 
                        Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="author" Type="String" />
                    <asp:Parameter Name="subject" Type="String" />
                    <asp:Parameter Name="id" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            </td>
        </tr>
        </table>
        </center>
</asp:Content>

