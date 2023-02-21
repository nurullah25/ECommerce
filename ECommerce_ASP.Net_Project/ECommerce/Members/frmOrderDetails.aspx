<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmOrderDetails.aspx.cs" Inherits="ECommerce.frmOrderDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="server">
    <h2>Order Details Entry</h2>
    <asp:DetailsView ID="DetailsView1" runat="server" CssClass="table table-bordered" AutoGenerateRows="False" DataKeyNames="ordId" DataSourceID="SqlDataSource1" DefaultMode="Insert">
        <Fields>
            <asp:BoundField DataField="ordId" HeaderText="ordId" InsertVisible="False" ReadOnly="True" SortExpression="ordId" />
            <asp:TemplateField HeaderText="orderDate" SortExpression="orderDate">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("orderDate") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox1" CssClass="form-control" TextMode="Date" runat="server" Text='<%# Bind("orderDate") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("orderDate") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="product" SortExpression="productId">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("productId") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:DropDownList ID="ddlProductList" CssClass="form-control" runat="server" DataSourceID="SqlDataSource1" DataTextField="prodName" DataValueField="prodId"></asp:DropDownList>
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
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("productId") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="customer" SortExpression="customerId">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("customerId") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:DropDownList ID="ddlCustomer" runat="server" DataSourceID="SqlDataSource2" DataTextField="cusName" DataValueField="cusId"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AspProjectCon %>" SelectCommand="SELECT * FROM [customer]"></asp:SqlDataSource>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("customerId") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="quantity" SortExpression="quantity">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("quantity") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" Text='<%# Bind("quantity") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("quantity") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AspProjectCon %>" DeleteCommand="DELETE FROM [orderDetails] WHERE [ordId] = @ordId" InsertCommand="INSERT INTO [orderDetails] ([orderDate], [productId], [customerId], [quantity]) VALUES (@orderDate, @productId, @customerId, @quantity)" SelectCommand="SELECT * FROM [orderDetails]" UpdateCommand="UPDATE [orderDetails] SET [orderDate] = @orderDate, [productId] = @productId, [customerId] = @customerId, [quantity] = @quantity WHERE [ordId] = @ordId">
        <DeleteParameters>
            <asp:Parameter Name="ordId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter DbType="Date" Name="orderDate" />
            <asp:Parameter Name="productId" Type="Int32" />
            <asp:Parameter Name="customerId" Type="Int32" />
            <asp:Parameter Name="quantity" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter DbType="Date" Name="orderDate" />
            <asp:Parameter Name="productId" Type="Int32" />
            <asp:Parameter Name="customerId" Type="Int32" />
            <asp:Parameter Name="quantity" Type="Int32" />
            <asp:Parameter Name="ordId" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
