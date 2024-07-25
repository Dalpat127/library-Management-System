<%@ Page Title="" Language="C#" MasterPageFile="~/Student/Student2.master" AutoEventWireup="true" CodeFile="Book_Request.aspx.cs" Inherits="Student_Book_Request" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style6
    {
        text-align: center;
            background-color: #FF6600;
        }
        .style7
        {
            background-color: #FF6600;
        }
        .style8
        {
            text-align: right;
            width: 362px;
            color: #660066;
            background-color: #FF6600;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
    <tr>
        <td colspan="2" style="text-align: right" class="style7">
            <asp:Label ID="Label1" runat="server" style="color: #993366; font-weight: 700"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style8">
            Request ID</td>
        <td class="style7">
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style8">
            Book Name</td>
        <td class="style7">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style8">
            Author</td>
        <td class="style7">
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style8">
            Subject</td>
        <td class="style7">
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style6" colspan="2">
            <asp:Button ID="Button1" runat="server" Height="33px" onclick="Button1_Click" 
                Text="Generate Request" Width="181px" 
                style="color: #FF0000; background-color: #660066" />
        </td>
    </tr>
</table>
</asp:Content>

