<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ragister.aspx.cs" Inherits="ragister" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            text-align: center;
        }
            
        .style3
        {
            color: #660066;
            font-weight: bold;
            font-size: large;
            text-align: center;
            height: 37px;
            background-color: #FF9966;
        }
        .style3
        {
            font-weight: bold;
            font-size: x-large;
            text-align: center;
        }
        .style4
        {
            color: #FF3300;
            font-weight: bold;
            font-size: large;
            text-align: right;
            width: 280px;
            background-color: #FF9966;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    <table class="style1" style="background-color: #FF9966" dir="ltr">
        <tr>
            <td class="style3" colspan="2">
                Student Ragisteration</td>
        </tr>
        <tr>
            <td class="style4">
                Student ID&nbsp;&nbsp;&nbsp; </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4">
                Student Name&nbsp;&nbsp;&nbsp; </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="* Enter Your Name" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                Semester&nbsp;&nbsp;&nbsp; </td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" MaxLength="1" TextMode="Number"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="* Enter Your Semester " 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                Contact&nbsp;&nbsp;&nbsp; </td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" TextMode="Number" MaxLength="10"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBox4" ErrorMessage="* Enter Your Contact Number" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                Degree&nbsp;&nbsp;&nbsp; </td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="TextBox5" ErrorMessage="* Enter Your Degree" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                Paaword&nbsp;&nbsp;&nbsp; </td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server" TextMode="Password"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ErrorMessage="* Enter Your Pssword" ForeColor="Red" 
                    ControlToValidate="TextBox6"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2" colspan="2">
                <asp:Button ID="Button1" runat="server" Height="31px" Text="submit" 
                    Width="100px" onclick="Button1_Click" BackColor="#FF3399" 
                    ForeColor="#660066" />
            &nbsp;</td>
        </tr>
    </table>
    
    </div>
    </form>
</body>
</html>
