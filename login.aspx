<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 367px;
            background-color: #FF6600;
        }
        .style2
        {
            text-align: center;
        }
        .style3
        {
            height: 52px;
        }
        .style4
        {
            width: 286px;
            text-align: right;
            height: 44px;
            color: #000099;
            font-weight: bold;
            font-size: large;
        }
        .style5
        {
            width: 286px;
            text-align: right;
            height: 41px;
            color: #000099;
            font-weight: bold;
            font-size: large;
        }
        .style6
        {
            height: 41px;
        }
        .style7
        {
            height: 44px;
        }
        .style8
        {
            background-color: #FF6600;
        }
        .style9
        {
            font-size: large;
        }
        .style10
        {
            font-size: large;
            color: #800000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td class="style5">
                    &nbsp;</td>
                <td class="style6">
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="style5">
                    User ID</td>
                <td class="style6">
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="style8" Height="25px" 
                        Width="251px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    Password</td>
                <td class="style7">
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="style8" Height="26px" 
                        TextMode="Password" Width="248px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3" colspan="2" style="text-align: center">
                    <asp:Button ID="Button1" runat="server" Height="32px" onclick="Button1_Click" 
                        style="color: #660066; font-weight: 700; font-size: large; background-color: #FF3399" 
                        Text="Login" Width="152px" />
                </td>
            </tr>
            <tr>
                <td class="style2" colspan="2">
                    <br />
                    <strong><span class="style10">Or</span><br class="style9" />
                    </strong>
                    <br />
                    <asp:HyperLink ID="HyperLink1" runat="server" Font-Underline="False" 
                        NavigateUrl="~/ragister.aspx" style="color: #000066">Sign UP</asp:HyperLink>
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
