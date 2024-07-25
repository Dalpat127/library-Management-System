<%@ Page Title="" Language="C#" MasterPageFile="~/student.master" AutoEventWireup="true" CodeFile="All_book.aspx.cs" Inherits="All_book" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AllowSorting="True" AutoGenerateColumns="False" BackColor="White" 
                    BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                    DataKeyNames="id" DataSourceID="SqlDataSource2" Width="878px">
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" 
                            SortExpression="id" />
                        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                        <asp:BoundField DataField="author" HeaderText="author" 
                            SortExpression="author" />
                        <asp:BoundField DataField="subject" HeaderText="subject" 
                            SortExpression="subject" />
                    </Columns>
                    <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                    <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                    <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" ForeColor="#003399" />
                    <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                    <SortedAscendingCellStyle BackColor="#EDF6F6" />
                    <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                    <SortedDescendingCellStyle BackColor="#D6DFDF" />
                    <SortedDescendingHeaderStyle BackColor="#002876" />
                </asp:GridView>
                <br />
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:studen_tmanagementConnectionString3 %>" 
                    DeleteCommand="DELETE FROM [addbook] WHERE [id] = @id" 
                    InsertCommand="INSERT INTO [addbook] ([id], [name], [author], [subject]) VALUES (@id, @name, @author, @subject)" 
                    SelectCommand="SELECT * FROM [addbook]" 
                    UpdateCommand="UPDATE [addbook] SET [name] = @name, [author] = @author, [subject] = @subject WHERE [id] = @id">
                    <DeleteParameters>
                        <asp:Parameter Name="id" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="id" Type="String" />
                        <asp:Parameter Name="name" Type="String" />
                        <asp:Parameter Name="author" Type="String" />
                        <asp:Parameter Name="subject" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="name" Type="String" />
                        <asp:Parameter Name="author" Type="String" />
                        <asp:Parameter Name="subject" Type="String" />
                        <asp:Parameter Name="id" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

