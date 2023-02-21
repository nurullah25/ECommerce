<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ShowBrand.aspx.cs" Inherits="ECommerce.ShowBrand" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="server">
    <div class="row">
        <div class="col-md-12">
            <h2>Available Brands</h2>
            <%--<h6>using List View</h6>--%>
            <div class="d-flex justify-content-lg-start mb-1">
                <a runat="server" class="btn btn-primary btn-sm" href="~/frmBrandEntry.aspx"><i class="fa fa-plus"></i> Add New</a>
            </div>
            <asp:ListView ID="ListView1" runat="server" DataKeyNames="brandId" DataSourceID="dsBrandView">
                <AlternatingItemTemplate>
                    <tr style="background-color: #FAFAD2;color: #284775;">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                        </td>
                        <td>
                            <asp:Label ID="brandIdLabel" runat="server" Text='<%# Eval("brandId") %>' />
                        </td>
                        <td>
                            <asp:Label ID="brandNameLabel" runat="server" Text='<%# Eval("brandName") %>' />
                        </td>
                    </tr>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <tr style="background-color: #FFCC66;color: #000080;">
                        <td>
                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                        </td>
                        <td>
                            <asp:Label ID="brandIdLabel1" runat="server" Text='<%# Eval("brandId") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="brandNameTextBox" runat="server" Text='<%# Bind("brandName") %>' />
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
                            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                        </td>
                        <td>&nbsp;</td>
                        <td>
                            <asp:TextBox ID="brandNameTextBox" runat="server" Text='<%# Bind("brandName") %>' />
                        </td>
                    </tr>
                </InsertItemTemplate>
                <ItemTemplate>
                    <tr style="background-color: #FFFBD6;color: #333333;">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                        </td>
                        <td>
                            <asp:Label ID="brandIdLabel" runat="server" Text='<%# Eval("brandId") %>' />
                        </td>
                        <td>
                            <asp:Label ID="brandNameLabel" runat="server" Text='<%# Eval("brandName") %>' />
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
                                        <th runat="server">brandId</th>
                                        <th runat="server">brandName</th>
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
                            <asp:Label ID="brandIdLabel" runat="server" Text='<%# Eval("brandId") %>' />
                        </td>
                        <td>
                            <asp:Label ID="brandNameLabel" runat="server" Text='<%# Eval("brandName") %>' />
                        </td>
                    </tr>
                </SelectedItemTemplate>
            </asp:ListView>
            
            <asp:SqlDataSource ID="dsBrandView" runat="server" ConnectionString="<%$ ConnectionStrings:AspProjectCon %>" DeleteCommand="DELETE FROM [brand] WHERE [brandId] = @brandId" InsertCommand="INSERT INTO [brand] ([brandName]) VALUES (@brandName)" SelectCommand="SELECT * FROM [brand]" UpdateCommand="UPDATE [brand] SET [brandName] = @brandName WHERE [brandId] = @brandId">
                <DeleteParameters>
                    <asp:Parameter Name="brandId" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="brandName" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="brandName" Type="String" />
                    <asp:Parameter Name="brandId" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
