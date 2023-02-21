<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmBrandEntry.aspx.cs" Inherits="ECommerce.frmBrandEntry" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="server">
    <div class="row">
        <div class="col">
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <h2>Add new Brand</h2>
                    <%--<h6>Using Details View</h6>--%>
                    <div runat="server" class="alert" id="alert" visible="false">
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span>&times;</span>
                        </button>
                        <p runat="server" id="msg"></p>
                    </div>
                    <asp:DetailsView ID="DetailsView1" runat="server" CssClass="table table-bordered" AutoGenerateRows="False" DataKeyNames="brandId" DataSourceID="dsBrand" DefaultMode="Insert">
                        <Fields>
                            <asp:BoundField DataField="brandId" HeaderText="brandId" InsertVisible="False" ReadOnly="True" SortExpression="brandId" />
                            <asp:BoundField DataField="brandName" HeaderText="Brand Name" SortExpression="brandName" />
                            <asp:CommandField ShowInsertButton="True" />
                        </Fields>
                    </asp:DetailsView>
                    <asp:SqlDataSource ID="dsBrand" runat="server" ConnectionString="<%$ ConnectionStrings:AspProjectCon %>" SelectCommand="SELECT * FROM [brand]" DeleteCommand="DELETE FROM [brand] WHERE [brandId] = @brandId" InsertCommand="INSERT INTO [brand] ([brandName]) VALUES (@brandName)" UpdateCommand="UPDATE [brand] SET [brandName] = @brandName WHERE [brandId] = @brandId">
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
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
