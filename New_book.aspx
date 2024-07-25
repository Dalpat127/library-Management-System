<%@ Page Title="" Language="C#" MasterPageFile="~/student.master" AutoEventWireup="true" CodeFile="New_book.aspx.cs" Inherits="New_book" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            font-weight: bold;
            text-align: center;
        background-color: #FFFFFF;
    }
        .style3
        {
        font-weight: bold;
        text-align: right;
        width: 264px;
        background-color: #FFCC99;
    }
        .style4
        {
            font-weight: bold;
            text-align: right;
            width: 264px;
            height: 30px;
        background-color: #FFCC99;
    }
        .style5
        {
            height: 30px;
        background-color: #FFCC99;
    }
    .style6
    {
        background-color: #FFCC99;
    }
    .style7
    {
        font-weight: bold;
        text-align: center;
        font-size: x-large;
        font-family: Arial, Helvetica, sans-serif;
        height: 50px;
        color: #800000;
        background-color: #FFCC99;
    }
    .style8
    {
        font-weight: 700;
        color: #0033CC;
        background-color: #660033;
    }
    .style9
    {
        font-weight: bold;
        text-align: right;
        width: 264px;
        background-color: #FFCC99;
    }
        .style10
        {
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp;<table class="style1" style="background-color: #FFCC99">
        <tr>
            <td class="style10">
                <strong>id</strong></td>
            <td class="style6">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="* Enter Your ID" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                name</td>
            <td class="style5">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="* Enter Your Name" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style9">
                author</td>
            <td class="style6">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="*Enter Author Name" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style9">
                subject</td>
            <td class="style6">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBox4" ErrorMessage="* Enter Subject Name" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style7" colspan="2">
                <br />
                <asp:Button ID="Button1" runat="server" Text="submit" onclick="Button1_Click" 
                    CssClass="style8" Height="36px" Width="149px" />
                <br class="style8" />
                <br class="style6" />
                <br class="style6" />
                <br class="style6" />
                <br class="style6" />
                <br class="style6" />
                <br class="style6" />
                <br class="style6" />
                <br class="style6" />
                <br class="style6" />
                <br class="style6" />
            </td>
        </tr>
    </table>
</asp:Content>

