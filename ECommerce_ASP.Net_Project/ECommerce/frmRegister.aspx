﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmRegister.aspx.cs" Inherits="ECommerce.frmRegister" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="server">
    <div class="row">
        <div class="col">
            <h2>Register Here.....</h2>
            <asp:Panel ID="Panel1" runat="server" CssClass="alert alert-warning" Visible="false">
                <h5>Registration Failed!!!</h5>
                <p>Failed to register user!!!</p>
            </asp:Panel>
            <div class="form-group row">
                <label class="col-form-label col-2 text-right">Username</label>
                <asp:TextBox ID="userName" runat="server" CssClass="form-control col-6"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Username is required!!!" ControlToValidate="userName" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="form-group row">
                <label class="col-form-label col-2 text-right">Password</label>
                <asp:TextBox ID="password" runat="server" TextMode="Password" CssClass="form-control col-6"></asp:TextBox>

            </div>
            <div class="form-group row">
                <label class="col-form-label col-2 text-right">Confirm Password</label>
                <asp:TextBox ID="ConfirmPassword" TextMode="Password" runat="server" CssClass="form-control col-6"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password doesn't match!!!" ControlToCompare="password" ControlToValidate="ConfirmPassword" ForeColor="Red"></asp:CompareValidator>
            </div>
            <div class="form-group row">
                <div class="offset-2">
                    <asp:Button ID="register" runat="server" Text="Register" CssClass="btn btn-primary" OnClick="register_Click" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
