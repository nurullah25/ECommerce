<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ViewCategory.aspx.cs" Inherits="ECommerce.ViewCategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="server">
    <div class="row">
        <div class="col-md-12">
            <h2>All Category</h2>
            <div class="d-flex justify-content-lg-start mb-1">
                <a runat="server" class="btn btn-primary btn-sm" href="~/frmCategoryEntry.aspx"><i class="fa fa-plus"></i> Add Category</a>
            </div>
            <asp:ListView ID="ListView1" runat="server" DataKeyNames="catId" DataSourceID="SqlDataSource1">
                <AlternatingItemTemplate>
                    <tr style="background-color: #FAFAD2;color: #284775;">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CssClass="btn btn-danger" CommandName="Delete" Text="Delete" />
                            <asp:Button ID="EditButton" runat="server" CssClass="btn btn-success" CommandName="Edit" Text="Edit" />
                        </td>
                        <td>
                            <asp:Label ID="catIdLabel" runat="server" Text='<%# Eval("catId") %>' />
                        </td>
                        <td>
                            <asp:Label ID="catNameLabel" runat="server" Text='<%# Eval("catName") %>' />
                        </td>
                    </tr>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <tr style="background-color: #FFCC66;color: #000080;">
                        <td>
                            <asp:Button ID="UpdateButton" runat="server" CssClass="btn btn-danger" CommandName="Update" Text="Update" />
                            <asp:Button ID="CancelButton" runat="server" CssClass="btn btn-success" CommandName="Cancel" Text="Cancel" />
                        </td>
                        <td>
                            <asp:Label ID="catIdLabel1" runat="server" Text='<%# Eval("catId") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="catNameTextBox" runat="server" Text='<%# Bind("catName") %>' />
                        </td>
                    </tr>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                        <tr>
                            <td>No data was returned.</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button ID="InsertButton" runat="server" CssClass="btn btn-danger" CommandName="Insert" Text="Insert" />
                            <asp:Button ID="CancelButton" runat="server" CssClass="btn btn-success" CommandName="Cancel" Text="Clear" />
                        </td>
                        <td>&nbsp;</td>
                        <td>
                            <asp:TextBox ID="catNameTextBox" runat="server" Text='<%# Bind("catName") %>' />
                        </td>
                    </tr>
                </InsertItemTemplate>
                <ItemTemplate>
                    <tr style="background-color: #FFFBD6;color: #333333;">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CssClass="btn btn-danger" CommandName="Delete" Text="Delete" />
                            <asp:Button ID="EditButton" runat="server" CssClass="btn btn-success" CommandName="Edit" Text="Edit" />
                        </td>
                        <td>
                            <asp:Label ID="catIdLabel" runat="server" Text='<%# Eval("catId") %>' />
                        </td>
                        <td>
                            <asp:Label ID="catNameLabel" runat="server" Text='<%# Eval("catName") %>' />
                        </td>
                    </tr>
                </ItemTemplate>
                <LayoutTemplate>
                    <table runat="server">
                        <tr runat="server">
                            <td runat="server">
                                <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                    <tr runat="server" style="background-color: #FFFBD6;color: #333333;">
                                        <th runat="server"></th>
                                        <th runat="server">catId</th>
                                        <th runat="server">catName</th>
                                    </tr>
                                    <tr id="itemPlaceholder" runat="server">
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr runat="server">
                            <td runat="server" style="text-align: center;background-color: #FFCC66;font-family: Verdana, Arial, Helvetica, sans-serif;color: #333333;">
                                <asp:DataPager ID="DataPager1" runat="server">
                                    <Fields>
                                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                    </Fields>
                                </asp:DataPager>
                            </td>
                        </tr>
                    </table>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <tr style="background-color: #FFCC66;font-weight: bold;color: #000080;">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                        </td>
                        <td>
                            <asp:Label ID="catIdLabel" runat="server" Text='<%# Eval("catId") %>' />
                        </td>
                        <td>
                            <asp:Label ID="catNameLabel" runat="server" Text='<%# Eval("catName") %>' />
                        </td>
                    </tr>
                </SelectedItemTemplate>
            </asp:ListView>
            
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AspProjectCon %>" DeleteCommand="DELETE FROM [category] WHERE [catId] = @catId" InsertCommand="INSERT INTO [category] ([catName]) VALUES (@catName)" SelectCommand="SELECT * FROM [category]" UpdateCommand="UPDATE [category] SET [catName] = @catName WHERE [catId] = @catId">
                <DeleteParameters>
                    <asp:Parameter Name="catId" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="catName" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="catName" Type="String" />
                    <asp:Parameter Name="catId" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
