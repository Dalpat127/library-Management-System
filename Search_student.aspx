<%@ Page Title="" Language="C#" MasterPageFile="~/student.master" AutoEventWireup="true" CodeFile="Search_student.aspx.cs" Inherits="Search_student" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
        }
    .style3
    {
        width: 166px;
    }
    .style5
    {
        padding-top:100px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1" style="background-color: #FF9966">
        <tr>
            <td style="font-weight: 700; text-align: right; font-size: large">
                Student Id</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="182px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2" colspan="2">
                <asp:Button ID="Button1" runat="server" Text="Search" Width="99px" 
                    onclick="Button1_Click" />
            </td>
        </tr>
        <tr>
            <td class="style5" colspan="2">
            <center> 
                <asp:FormView ID="FormView1" runat="server" DataKeyNames="id" 
                    DataSourceID="SqlDataSource1" Width="397px" >
                    <EditItemTemplate>
                        id:
                        <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
                        <br />
                        name:
                        <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                        <br />
                        semester:
                        <asp:TextBox ID="semesterTextBox" runat="server" 
                            Text='<%# Bind("semester") %>' />
                        <br />
                        contact:
                        <asp:TextBox ID="contactTextBox" runat="server" Text='<%# Bind("contact") %>' />
                        <br />
                        degree:
                        <asp:TextBox ID="degreeTextBox" runat="server" Text='<%# Bind("degree") %>' />
                        <br />
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                            CommandName="Update" Text="Update" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        id:
                        <asp:TextBox ID="idTextBox" runat="server" Text='<%# Bind("id") %>' />
                        <br />
                        name:
                        <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                        <br />
                        semester:
                        <asp:TextBox ID="semesterTextBox" runat="server" 
                            Text='<%# Bind("semester") %>' />
                        <br />
                        contact:
                        <asp:TextBox ID="contactTextBox" runat="server" Text='<%# Bind("contact") %>' />
                        <br />
                        degree:
                        <asp:TextBox ID="degreeTextBox" runat="server" Text='<%# Bind("degree") %>' />
                        <br />
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                            CommandName="Insert" Text="Insert" />
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <table class="style1">
                            <tr>
                                <td class="style3">
                                    Student Id</td>
                                <td>
                                    <asp:Label ID="idLabel0" runat="server" Text='<%# Eval("id") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td class="style3">
                                    Student Name</td>
                                <td>
                                    <asp:Label ID="nameLabel0" runat="server" Text='<%# Bind("name") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td class="style3">
                                    Semester</td>
                                <td>
                                    <asp:Label ID="semesterLabel0" runat="server" Text='<%# Bind("semester") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td class="style3">
                                    Contact</td>
                                <td>
                                    <asp:Label ID="contactLabel0" runat="server" Text='<%# Bind("contact") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td class="style3">
                                    Degree</td>
                                <td>
                                    <asp:Label ID="degreeLabel0" runat="server" Text='<%# Bind("degree") %>' />
                                </td>
                            </tr>
                        </table>
                        <br />
                        <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                            CommandName="Edit" Text="Edit" />
                        &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                            CommandName="Delete" Text="Delete" />
                        &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                            CommandName="New" Text="New" />
                    </ItemTemplate>
                </asp:FormView>
                <br />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:studen_tmanagementConnectionString3 %>" 
                    DeleteCommand="DELETE FROM [addstudent] WHERE [id] = @id" 
                    InsertCommand="INSERT INTO [addstudent] ([id], [name], [semester], [contact], [degree]) VALUES (@id, @name, @semester, @contact, @degree)" 
                    SelectCommand="SELECT * FROM [addstudent] WHERE ([id] = @id)" 
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
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox1" Name="id" PropertyName="Text" 
                            Type="String" />
                    </SelectParameters>
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
        </center>
</asp:Content>

