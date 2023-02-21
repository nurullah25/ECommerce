<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ViewProduct.aspx.cs" Inherits="ECommerce.ViewProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="server">
    <div class="row">
        <div class="col">
            <h2>Product</h2>
            <div class="d-flex justify-content mb-1">
                <a runat="server" class="btn btn-primary btn-sm" href="~/frmProducts.aspx"><i class="fa fa-plus"></i> Add Product</a>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered" DataKeyNames="prodId" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="prodId" HeaderText="prodId" InsertVisible="False" ReadOnly="True" SortExpression="prodId" />
                        <asp:BoundField DataField="prodName" HeaderText="prodName" SortExpression="prodName" />
                        <asp:BoundField DataField="unitPrice" HeaderText="unitPrice" SortExpression="unitPrice" />
                        <asp:TemplateField HeaderText="picture" SortExpression="picture">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("picture") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("picture","~/Images/{0}") %>' Width="50"/>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="catId" HeaderText="catId" SortExpression="catId" />
                        <asp:CheckBoxField DataField="stockIn" HeaderText="stockIn" SortExpression="stockIn" />
                        <asp:BoundField DataField="salesDate" HeaderText="salesDate" SortExpression="salesDate" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AspProjectCon %>" DeleteCommand="DELETE FROM [product] WHERE [prodId] = @prodId" InsertCommand="INSERT INTO [product] ([prodName], [unitPrice], [picture], [catId], [stockIn], [salesDate]) VALUES (@prodName, @unitPrice, @picture, @catId, @stockIn, @salesDate)" SelectCommand="SELECT * FROM [product]" UpdateCommand="UPDATE [product] SET [prodName] = @prodName, [unitPrice] = @unitPrice, [picture] = @picture, [catId] = @catId, [stockIn] = @stockIn, [salesDate] = @salesDate WHERE [prodId] = @prodId">
                    <DeleteParameters>
                        <asp:Parameter Name="prodId" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="prodName" Type="String" />
                        <asp:Parameter Name="unitPrice" Type="Decimal" />
                        <asp:Parameter Name="picture" Type="String" />
                        <asp:Parameter Name="catId" Type="Int32" />
                        <asp:Parameter Name="stockIn" Type="Boolean" />
                        <asp:Parameter DbType="Date" Name="salesDate" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="prodName" Type="String" />
                        <asp:Parameter Name="unitPrice" Type="Decimal" />
                        <asp:Parameter Name="picture" Type="String" />
                        <asp:Parameter Name="catId" Type="Int32" />
                        <asp:Parameter Name="stockIn" Type="Boolean" />
                        <asp:Parameter DbType="Date" Name="salesDate" />
                        <asp:Parameter Name="prodId" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </div>
            
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
