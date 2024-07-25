<%@ Page Title="" Language="C#" MasterPageFile="~/Student.master" AutoEventWireup="true" CodeFile="View_request.aspx.cs" Inherits="View_request" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            width: 100%;
        }
        .style5
        {
            text-decoration: none;
            font-weight: bold;
            color: #660066;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style4">
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    Width="856px" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                                  <asp:TemplateField HeaderText="Book Name">
                                                        <ItemTemplate>
                                                                        <%#Eval("name") %>
                                                        </ItemTemplate>
                                  </asp:TemplateField>
                                  <asp:TemplateField HeaderText="Book's Author">
                                                        <ItemTemplate>
                                                                        <%#Eval("author") %>
                                                        </ItemTemplate>
                                  </asp:TemplateField>
                                  <asp:TemplateField HeaderText="Subject">
                                                        <ItemTemplate>
                                                                        <%#Eval("subject") %>
                                                        </ItemTemplate>
                                  </asp:TemplateField>
                                  <asp:TemplateField HeaderText="Sender ID">
                                                        <ItemTemplate>
                                                                        <%#Eval("sid") %>
                                                        </ItemTemplate>
                                  </asp:TemplateField>
                                  <asp:TemplateField HeaderText="Date">
                                                        <ItemTemplate>
                                                                        <%#Eval("dor") %>
                                                        </ItemTemplate>
                                  </asp:TemplateField>
                                  <asp:TemplateField HeaderText="Date">
                                                        <ItemTemplate>
                                                                        <%#Eval("status") %>
                                                        </ItemTemplate>
                                  </asp:TemplateField>
                                  <asp:TemplateField HeaderText="Status">
                                                        <ItemTemplate>
                                                                        <asp:LinkButton ID="link1" runat="server" Text="Accept" OnCommand="abc1" 
                                                                            CommandName='<%#Eval("id") %>' CssClass="style5"></asp:LinkButton>
                                                                        &nbsp;&nbsp;&nbsp;
                                                                        <asp:LinkButton ID="link2" runat="server" Text="Reject" OnCommand="abc2" 
                                                                            CommandName='<%#Eval("id") %>' CssClass="style5"></asp:LinkButton>
                                                                        &nbsp;&nbsp;&nbsp;
                                                                        <asp:LinkButton ID="link3" runat="server" Text="Availble" OnCommand="abc3" 
                                                                            CommandName='<%#Eval("id") %>' CssClass="style5"></asp:LinkButton>
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;
                                                                        <asp:LinkButton ID="link4" runat="server" Text="Ordered" OnCommand="abc4" 
                                                                            CommandName='<%#Eval("id") %>' CssClass="style5"></asp:LinkButton>
                                                        </ItemTemplate>
                                  </asp:TemplateField>
                    </Columns>
                    <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

