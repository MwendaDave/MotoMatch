<%@ Page Title="Login" Language="C#" MasterPageFile="Motomatch.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="MotoMatch.Pages.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<div class="auth-container">
    <h2 class="auth-title">Login</h2>

    <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>

    <asp:TextBox ID="txtEmail" runat="server" CssClass="auth-input" Placeholder="Email"></asp:TextBox>

    <asp:TextBox ID="txtPassword" runat="server" CssClass="auth-input" 
        TextMode="Password" Placeholder="Password"></asp:TextBox>

    <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="auth-btn"
        OnClick="btnLogin_Click" />

</div>

</asp:Content>