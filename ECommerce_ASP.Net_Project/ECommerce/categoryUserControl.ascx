<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="categoryUserControl.ascx.cs" Inherits="ECommerce.categoryUserControl" %>

<asp:FormView ID="FormView1" runat="server" DataSourceID="ObjectDataSource1" DefaultMode="Insert">
                <EditItemTemplate>
                    CategoryId:
                    <asp:TextBox ID="CategoryIdTextBox" runat="server" Text='<%# Bind("CategoryId") %>' />
                    <br />
                    CategoryName:
                    <asp:TextBox ID="CategoryNameTextBox" runat="server" Text='<%# Bind("CategoryName") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    <%--CategoryId:
                    <asp:TextBox ID="CategoryIdTextBox" runat="server" Text='<%# Bind("CategoryId") %>' />
                    <br />--%>
                    CategoryName:
                    <asp:TextBox ID="CategoryNameTextBox" runat="server" Text='<%# Bind("CategoryName") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    CategoryId:
                    <asp:Label ID="CategoryIdLabel" runat="server" Text='<%# Bind("CategoryId") %>' />
                    <br />
                    CategoryName:
                    <asp:Label ID="CategoryNameLabel" runat="server" Text='<%# Bind("CategoryName") %>' />
                    <br />
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                </ItemTemplate>
             </asp:FormView>
             <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DataObjectTypeName="ECommerce.Models.Category" DeleteMethod="Delete" InsertMethod="Insert" SelectMethod="Get" TypeName="ECommerce.DAL.CategoryGetway" UpdateMethod="Update"></asp:ObjectDataSource>
