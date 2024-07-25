<%@ Page Title="" Language="C#" MasterPageFile="~/Student.master" AutoEventWireup="true" CodeFile="Request_new_book.aspx.cs" Inherits="Request_new_book" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style10
        {
            text-align: right;
            font-weight: bold;
            font-size: large;
            height: 28px;
        }
    .style6
    {
        background-color: #FFCC99;
    }
        .style4
        {
            font-weight: bold;
            text-align: right;
            width: 264px;
            height: 34px;
        background-color: #FFCC99;
            font-size: large;
        }
        .style5
        {
            height: 34px;
        background-color: #FFCC99;
    }
    .style9
    {
            font-weight: bold;
            text-align: right;
            width: 264px;
            background-color: #FFCC99;
            font-size: large;
            height: 29px;
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
        .style11
        {
            font-weight: bold;
            text-align: right;
            width: 264px;
            background-color: #FFCC99;
            font-size: large;
            height: 30px;
        }
        .style13
        {
            background-color: #FFCC99;
            height: 28px;
        }
        .style14
        {
            background-color: #FFCC99;
            height: 30px;
        }
        .style15
        {
            background-color: #FFCC99;
            height: 29px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1" style="background-color: #FFCC99">
        <tr>
            <td class="style10">
                <strong>id</strong></td>
            <td class="style13">
                <asp:TextBox ID="TextBox1" runat="server" Width="209px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4">
                name</td>
            <td class="style5">
                <asp:TextBox ID="TextBox2" runat="server" Width="209px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style11">
                author</td>
            <td class="style14">
                <asp:TextBox ID="TextBox3" runat="server" Width="209px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style9">
                subject</td>
            <td class="style15">
                <asp:TextBox ID="TextBox4" runat="server" Width="209px"></asp:TextBox>
                
            </td>
        </tr>
        <tr>
            <td class="style7" colspan="2">
                <br />
                <asp:Button ID="Button1" runat="server" Text="submit" onclick="Button1_Click" 
                    CssClass="style8" Height="36px" Width="149px"  />
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

