<%@ Page Title="" Language="C#" MasterPageFile="~/Motomatch.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="MotoMatch.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
 <h1 class="page-title">Create Account</h1>

    <div class="content-card" style="max-width:500px; margin:auto;">

        <asp:Label Text="Full Name" runat="server" /><br />
        <asp:TextBox ID="txtName" runat="server" CssClass="input-field" /><br /><br />

        <asp:Label Text="Email" runat="server" /><br />
        <asp:TextBox ID="txtEmail" runat="server" CssClass="input-field" /><br /><br />

        <asp:Label Text="Password" runat="server" /><br />
        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="input-field" /><br /><br />

        <asp:Label Text="Confirm Password" runat="server" /><br />
        <asp:TextBox ID="txtConfirm" runat="server" TextMode="Password" CssClass="input-field" /><br /><br />

        <asp:Button ID="btnRegister" runat="server" Text="Sign Up" CssClass="auth-btn primary" OnClick="btnRegister_Click" /><br /><br />

        <asp:Label ID="lblMessage" runat="server" ForeColor="Red" />

    </div>


</asp:Content>
