<%@ Page Language="C#" AutoEventWireup="true" CodeFile="logout.aspx.cs" Inherits="logout" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            text-align: center;
            height: 92px;
        }
        .style2
        {
            color: #FF0000;
        }
    </style>
</head>
<body style="background-color: #FFCC66">
    <form id="form1" runat="server">
    <div class="style1">
    
        <strong><span class="style2">You have Logout Succesfully....!!!</span><br />
        <br />
        </strong>
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            style="color: #FF0000; background-color: #660066" Text="Login" Width="94px" />
    
    </div>
    </form>
</body>
</html>
