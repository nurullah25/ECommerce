<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmCategoryEntry.aspx.cs" Inherits="ECommerce.frmCategoryEntry" %>

<%@ Register Src="~/categoryUserControl.ascx" TagPrefix="uc1" TagName="categoryUserControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="server">
    <div class="row">
        <div class="col">
             <h2>Add new Category</h2>
            <uc1:categoryUserControl runat="server" id="categoryUserControl" />
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
