<%@ Page Title="" Language="C#" MasterPageFile="~/student.master" AutoEventWireup="true" CodeFile="All Details.aspx.cs" Inherits="All_Details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
    AllowSorting="True" AutoGenerateColumns="False" 
    BackColor="White" BorderColor="#999999" BorderWidth="1px" 
    CellPadding="3" DataKeyNames="bid" DataSourceID="SqlDataSource1" 
        GridLines="Vertical" style="margin-right: 0px" Width="838px" BorderStyle="None" 
        Height="119px" onselectedindexchanged="GridView1_SelectedIndexChanged">
    <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
            <asp:BoundField DataField="bid" HeaderText="bid" ReadOnly="True" 
                SortExpression="bid" />
            <asp:BoundField DataField="sid" HeaderText="sid" SortExpression="sid" />
            <asp:BoundField DataField="doi" HeaderText="doi" SortExpression="doi" />
            <asp:BoundField DataField="dos" HeaderText="dos" SortExpression="dos" />
        </Columns>
    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#999999" ForeColor="Black" 
        HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
    <SelectedRowStyle BackColor="#008A8C" ForeColor="White" Font-Bold="True" />
    <SortedAscendingCellStyle BackColor="#F1F1F1" />
    <SortedAscendingHeaderStyle BackColor="#0000A9" />
    <SortedDescendingCellStyle BackColor="#CAC9C9" />
    <SortedDescendingHeaderStyle BackColor="#000065" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:studen_tmanagementConnectionString4 %>" 
    DeleteCommand="DELETE FROM [issue_book] WHERE [bid] = @bid" 
    InsertCommand="INSERT INTO [issue_book] ([bid], [sid], [doi], [dos]) VALUES (@bid, @sid, @doi, @dos)" 
    SelectCommand="SELECT * FROM [issue_book]" 
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
    <UpdateParameters>
        <asp:Parameter Name="sid" Type="Int32" />
        <asp:Parameter Name="doi" Type="String" />
        <asp:Parameter Name="dos" Type="String" />
        <asp:Parameter Name="bid" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>

