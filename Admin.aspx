<%@ Page Title="" Language="C#" MasterPageFile="Motomatch.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="MotoMatch.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2 class="admin-title">Admin Dashboard</h2>

<div class="admin-form">

    <asp:TextBox ID="txtName" runat="server" Placeholder="Vehicle Name" />
    <asp:TextBox ID="txtBrand" runat="server" Placeholder="Brand" />
    
    <asp:DropDownList ID="ddlCategory" runat="server">
        <asp:ListItem>Luxury</asp:ListItem>
        <asp:ListItem>Rental</asp:ListItem>
        <asp:ListItem>Daily</asp:ListItem>
        <asp:ListItem>Off-Road</asp:ListItem>
    </asp:DropDownList>

    <asp:TextBox ID="txtPrice" runat="server" Placeholder="Price" />
    <asp:TextBox ID="txtYear" runat="server" Placeholder="Year" />
    <asp:TextBox ID="txtImage" runat="server" Placeholder="Image URL" />

    <asp:Button ID="btnAdd" runat="server" Text="Add Vehicle" OnClick="btnAdd_Click" CssClass="gold-btn"/>

</div>

<hr />

<asp:GridView ID="gvVehicles" runat="server" AutoGenerateColumns="False" 
    DataKeyNames="VehicleID"
    OnRowEditing="gvVehicles_RowEditing"
    OnRowUpdating="gvVehicles_RowUpdating"
    OnRowDeleting="gvVehicles_RowDeleting"
    OnRowCancelingEdit="gvVehicles_RowCancelingEdit">

    <Columns>
        <asp:BoundField DataField="VehicleID" HeaderText="ID" ReadOnly="true" />
        <asp:BoundField DataField="Name" HeaderText="Name" />
        <asp:BoundField DataField="Brand" HeaderText="Brand" />
        <asp:BoundField DataField="Category" HeaderText="Category" />
        <asp:BoundField DataField="Price" HeaderText="Price" />
        <asp:BoundField DataField="Year" HeaderText="Year" />
        <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" />
    </Columns>

</asp:GridView>
</asp:Content>
