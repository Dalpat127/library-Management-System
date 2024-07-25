<%@ Page Title="" Language="C#" MasterPageFile="~/student.master" AutoEventWireup="true" CodeFile="Submit.aspx.cs" Inherits="Submit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style2
    {
        height: 26px;
    }
        .style4
        {
            height: 50px;
            font-size: x-large;
            text-align: center;
            font-family: Arial, Helvetica, sans-serif;
            color: #00FF00;
            background-color: #660066;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
    <tr>
        <td class="style4">
            Book Id</td>
        <td class="style2">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Search" />
        </td>
    </tr>
    <tr>
        <td colspan="2">
        <center>
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="bid" 
                DataSourceID="SqlDataSource1" Visible="False" Width="256px" Height="137px">
                <EditItemTemplate>
                    bid:
                    <asp:Label ID="bidLabel1" runat="server" Text='<%# Eval("bid") %>' />
                    <br />
                    sid:
                    <asp:TextBox ID="sidTextBox" runat="server" Text='<%# Bind("sid") %>' />
                    <br />
                    doi:
                    <asp:TextBox ID="doiTextBox" runat="server" Text='<%# Bind("doi") %>' />
                    <br />
                    dos:
                    <asp:TextBox ID="dosTextBox" runat="server" Text='<%# Bind("dos") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                        CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                        CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    bid:
                    <asp:TextBox ID="bidTextBox" runat="server" Text='<%# Bind("bid") %>' />
                    <br />
                    sid:
                    <asp:TextBox ID="sidTextBox" runat="server" Text='<%# Bind("sid") %>' />
                    <br />
                    doi:
                    <asp:TextBox ID="doiTextBox" runat="server" Text='<%# Bind("doi") %>' />
                    <br />
                    dos:
                    <asp:TextBox ID="dosTextBox" runat="server" Text='<%# Bind("dos") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                        CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                        CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    bid:
                    <asp:Label ID="bidLabel" runat="server" Text='<%# Eval("bid") %>' />
                    <br />
                    sid:
                    <asp:Label ID="sidLabel" runat="server" Text='<%# Bind("sid") %>' />
                    <br />
                    doi:
                    <asp:Label ID="doiLabel" runat="server" Text='<%# Bind("doi") %>' />
                    <br />
                    dos:
                    <asp:Label ID="dosLabel" runat="server" Text='<%# Bind("dos") %>' />
                    <br />
                    &nbsp;&nbsp;
                </ItemTemplate>
            </asp:FormView>
            </center>
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:studen_tmanagementConnectionString4 %>" 
                DeleteCommand="DELETE FROM [issue_book] WHERE [bid] = @bid" 
                InsertCommand="INSERT INTO [issue_book] ([bid], [sid], [doi], [dos]) VALUES (@bid, @sid, @doi, @dos)" 
                SelectCommand="SELECT * FROM [issue_book] WHERE ([bid] = @bid)" 
                UpdateCommand="UPDATE [issue_book] SET [sid] = @sid, [doi] = @doi, [dos] = @dos WHERE [bid] = @bid">
                <DeleteParameters>
                    <asp:Parameter Name="bid" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="bid" Type="Int32" />
                    <asp:Parameter Name="sid" Type="Int32" />
                    <asp:Parameter Name="doi" Type="String" />
                    <asp:Parameter Name="dos" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="bid" PropertyName="Text" 
                        Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="sid" Type="Int32" />
                    <asp:Parameter Name="doi" Type="String" />
                    <asp:Parameter Name="dos" Type="String" />
                    <asp:Parameter Name="bid" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="Submit" />
            <br />
        </td>
    </tr>
</table>
</asp:Content>

