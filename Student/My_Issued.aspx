<%@ Page Title="" Language="C#" MasterPageFile="~/Student/Student2.master" AutoEventWireup="true" CodeFile="My_Issued.aspx.cs" Inherits="Student_My_Issued" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td>
            <center>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AllowSorting="True" AutoGenerateColumns="False" 
                    BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
                    CellPadding="2" DataKeyNames="bid" DataSourceID="SqlDataSource1" 
                    ForeColor="Black" GridLines="None" Width="311px">
                    <AlternatingRowStyle BackColor="PaleGoldenrod" />
                    <Columns>
                        <asp:BoundField DataField="bid" HeaderText="bid" ReadOnly="True" 
                            SortExpression="bid" />
                        <asp:BoundField DataField="sid" HeaderText="sid" SortExpression="sid" />
                        <asp:BoundField DataField="doi" HeaderText="doi" SortExpression="doi" />
                        <asp:BoundField DataField="dos" HeaderText="dos" SortExpression="dos" />
                    </Columns>
                    <FooterStyle BackColor="Tan" />
                    <HeaderStyle BackColor="Tan" Font-Bold="True" />
                    <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                        HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                    <SortedAscendingCellStyle BackColor="#FAFAE7" />
                    <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                    <SortedDescendingCellStyle BackColor="#E1DB9C" />
                    <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                </asp:GridView>
                </center>
            </td>
        </tr>
        <tr>
            <td>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:studen_tmanagementConnectionString4 %>" 
                    DeleteCommand="DELETE FROM [issue_book] WHERE [bid] = @bid" 
                    InsertCommand="INSERT INTO [issue_book] ([bid], [sid], [doi], [dos]) VALUES (@bid, @sid, @doi, @dos)" 
                    SelectCommand="SELECT * FROM [issue_book] WHERE ([sid] = @sid)" 
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
                        <asp:SessionParameter Name="sid" SessionField="sid" Type="Int32" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="sid" Type="Int32" />
                        <asp:Parameter Name="doi" Type="String" />
                        <asp:Parameter Name="dos" Type="String" />
                        <asp:Parameter Name="bid" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

