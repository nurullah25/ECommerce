<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ShowOrderDetails.aspx.cs" Inherits="ECommerce.ShowOrderDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="server">
    <div class="row">
        <div class="col">
            <h2>Order Details</h2>
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CssClass="table table-bordered" DataKeyNames="ordId" DataSourceID="SqlDataSource2">
                <Fields>
                    <asp:BoundField DataField="ordId" HeaderText="ordId" InsertVisible="False" ReadOnly="True" SortExpression="ordId" />
                    <asp:BoundField DataField="orderDate" HeaderText="orderDate" SortExpression="orderDate" />
                    <asp:BoundField DataField="productId" HeaderText="productId" SortExpression="productId" />
                    <asp:BoundField DataField="customerId" HeaderText="customerId" SortExpression="customerId" />
                    <asp:BoundField DataField="quantity" HeaderText="quantity" SortExpression="quantity" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AspProjectCon %>" DeleteCommand="DELETE FROM [orderDetails] WHERE [ordId] = @ordId" InsertCommand="INSERT INTO [orderDetails] ([orderDate], [productId], [customerId], [quantity]) VALUES (@orderDate, @productId, @customerId, @quantity)" SelectCommand="SELECT * FROM [orderDetails]" UpdateCommand="UPDATE [orderDetails] SET [orderDate] = @orderDate, [productId] = @productId, [customerId] = @customerId, [quantity] = @quantity WHERE [ordId] = @ordId">
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
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
