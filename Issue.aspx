<%@ Page Title="" Language="C#" MasterPageFile="~/student.master" AutoEventWireup="true" CodeFile="Issue.aspx.cs" Inherits="Issue" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
    {
        text-align: center;
        font-weight: bold;
        color: #660066;
        font-size: x-large;
            background-color: #FF6600;
        }
    .style3
    {
        text-align: center;
        font-weight: bold;
        color: #660066;
        font-size: x-large;
        }
        .style7
        {
            text-align: right;
            font-weight: bold;
            color: #660066;
            font-size: x-large;
            width: 375px;
            height: 47px;
        }
        .style8
        {
            background-color: #FF6600;
            height: 47px;
        }
        .style9
        {
            text-align: right;
            font-weight: bold;
            color: #660066;
            font-size: x-large;
            width: 375px;
            height: 41px;
        }
        .style10
        {
            background-color: #FF6600;
            height: 41px;
        }
        .style11
        {
            text-align: right;
            font-weight: bold;
            color: #660066;
            font-size: x-large;
            width: 375px;
            height: 43px;
        }
        .style12
        {
            background-color: #FF6600;
            height: 43px;
        }
        .style13
        {
            color: #660066;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp;<table class="style1" style="background-color: #FF6600; height: 450px;">
    <tr>
        <td class="style7">
            Bid</td>
        <td class="style8">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        &nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="TextBox1" CssClass="style13" ErrorMessage="* Select Book ID" 
                ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style9">
            Sid</td>
        <td class="style10">
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="TextBox2" CssClass="style13" 
                ErrorMessage="* Select Student ID" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style11">
            Doi</td>
        <td class="style12">
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style11">
            Dos</td>
        <td class="style12">
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style3" colspan="2">
            <asp:Button ID="Button1" runat="server" Height="28px" onclick="Button1_Click1" 
                style="color: #660066; font-weight: 700; font-size: large; background-color: #999999" 
                Text="Issue Book" Width="136px" />
            <br />
            <br />
            <br />
            <br />
            <br />
        </td>
    </tr>
    </table>
</asp:Content>

