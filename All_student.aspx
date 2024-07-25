<%@ Page Title="" Language="C#" MasterPageFile="~/student.master" AutoEventWireup="true" CodeFile="All_student.aspx.cs" Inherits="All_student" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource2" Width="896px">
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" 
                            SortExpression="id" />
                        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                        <asp:BoundField DataField="semester" HeaderText="semester" 
                            SortExpression="semester" />
                        <asp:BoundField DataField="contact" HeaderText="contact" 
                            SortExpression="contact" />
                        <asp:BoundField DataField="degree" HeaderText="degree" 
                            SortExpression="degree" />
                    </Columns>
                    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                    <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                    <RowStyle BackColor="White" ForeColor="#330099" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                    <SortedAscendingCellStyle BackColor="#FEFCEB" />
                    <SortedAscendingHeaderStyle BackColor="#AF0101" />
                    <SortedDescendingCellStyle BackColor="#F6F0C0" />
                    <SortedDescendingHeaderStyle BackColor="#7E0000" />
                </asp:GridView>
                <br />
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:studen_tmanagementConnectionString2 %>" 
                    DeleteCommand="DELETE FROM [addstudent] WHERE [id] = @id" 
                    InsertCommand="INSERT INTO [addstudent] ([id], [name], [semester], [contact], [degree]) VALUES (@id, @name, @semester, @contact, @degree)" 
                    SelectCommand="SELECT * FROM [addstudent]" 
                    UpdateCommand="UPDATE [addstudent] SET [name] = @name, [semester] = @semester, [contact] = @contact, [degree] = @degree WHERE [id] = @id">
                    <DeleteParameters>
                        <asp:Parameter Name="id" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="id" Type="String" />
                        <asp:Parameter Name="name" Type="String" />
                        <asp:Parameter Name="semester" Type="String" />
                        <asp:Parameter Name="contact" Type="String" />
                        <asp:Parameter Name="degree" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="name" Type="String" />
                        <asp:Parameter Name="semester" Type="String" />
                        <asp:Parameter Name="contact" Type="String" />
                        <asp:Parameter Name="degree" Type="String" />
                        <asp:Parameter Name="id" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

