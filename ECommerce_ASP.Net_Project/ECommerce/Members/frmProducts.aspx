<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmProducts.aspx.cs" Inherits="ECommerce.frmProducts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="server">
    <div class="row">
        <div class="col">
            <h2>Add Product</h2>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" HeaderText="Attention:" ShowMessageBox="True" ValidateRequestMode="Enabled" />
            <asp:DetailsView ID="DetailsView1" runat="server"  AutoGenerateRows="False" CssClass="table table-bordered" DataKeyNames="prodId" DataSourceID="SqlDataSource1" DefaultMode="Insert" OnItemInserting="DetailsView1_ItemInserting">
                <Fields>
                    <asp:BoundField DataField="prodId" HeaderText="prodId" InsertVisible="False" ReadOnly="True" SortExpression="prodId" />
                    <asp:TemplateField HeaderText="prodName" SortExpression="prodName">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("prodName") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" Text='<%# Bind("prodName") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ErrorMessage="Name is required!!!" ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("prodName") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="unitPrice" SortExpression="unitPrice">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" Text='<%# Bind("unitPrice") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" Text='<%# Bind("unitPrice") %>'></asp:TextBox>
                            <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Range must be between 100 to 100000" MinimumValue="100" MaximumValue="100000" ControlToValidate="TextBox2" ForeColor="Red" Type="Double"></asp:RangeValidator>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" CssClass="form-control" Text='<%# Bind("unitPrice") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="picture" SortExpression="picture">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("picture") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:FileUpload ID="fuPic" runat="server" CssClass="form-control" />
                            <asp:HiddenField ID="HiddenField1" runat="server" Value='<%# Bind("picture") %>'/>
                            <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="Must select a picture" ControlToValidate="fuPic" ForeColor="Red"></asp:CustomValidator>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("picture") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Category" SortExpression="catId">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("catId") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:DropDownList ID="ddlCategory" runat="server" CssClass="form-control" DataSourceID="SqlDataSource1" DataTextField="catName" DataValueField="catId" SelectedValue='<%# Bind("catId") %>'></asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AspProjectCon %>" SelectCommand="SELECT * FROM [category]"></asp:SqlDataSource>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("catId") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="stockIn" SortExpression="stockIn">
                        <EditItemTemplate>
                            <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Bind("stockIn") %>' />
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Bind("stockIn") %>' />

                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Bind("stockIn") %>' Enabled="false" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="salesDate" SortExpression="salesDate">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("salesDate") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="txtSalesDate" runat="server" CssClass="form-control" TextMode="Date" Text='<%# Bind("salesDate") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Sales date is required!!!" ControlToValidate="txtSalesDate" ForeColor="Red">Sales Date is required</asp:RequiredFieldValidator>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("salesDate") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:CommandField ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
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
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
