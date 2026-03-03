<%@ Page Title="" Language="C#" MasterPageFile="~/Motomatch.Master" AutoEventWireup="true" CodeBehind="Vehicles.aspx.cs" Inherits="MotoMatch.Vehicles" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<!-- HERO -->
<section class="vehicles-hero">
    <h1 class="hero-title">Our Collection</h1>
    <p class="hero-subtitle">
        Discover automotive excellence across every category.
    </p>
</section>

<!-- FILTER SECTION -->
<div class="filter-section">

    <!-- CATEGORY -->
    <div class="category-tabs">

        <asp:LinkButton runat="server" Text="All" CommandArgument="all"
            CssClass="category-tab" OnCommand="Filter_Command" />

        <asp:LinkButton runat="server" Text="Luxury" CommandArgument="Luxury"
            CssClass="category-tab" OnCommand="Filter_Command" />

        <asp:LinkButton runat="server" Text="Rental" CommandArgument="Rental"
            CssClass="category-tab" OnCommand="Filter_Command" />

        <asp:LinkButton runat="server" Text="Daily" CommandArgument="Daily"
            CssClass="category-tab" OnCommand="Filter_Command" />

        <asp:LinkButton runat="server" Text="Off-Road" CommandArgument="Off-Road"
            CssClass="category-tab" OnCommand="Filter_Command" />

    </div>

    <!-- ADVANCED FILTERS -->
    <div class="advanced-filters">

        <!-- BRAND -->
        <div class="filter-group">
            <label>Brand</label>

            <asp:DropDownList ID="ddlBrand" runat="server"
                CssClass="custom-select"
                AutoPostBack="true"
                OnSelectedIndexChanged="Filter_Changed">

                <asp:ListItem Value="">All Brands</asp:ListItem>
                <asp:ListItem>Lamborghini</asp:ListItem>
                <asp:ListItem>Ferrari</asp:ListItem>
                <asp:ListItem>BMW</asp:ListItem>
                <asp:ListItem>Mercedes</asp:ListItem>

            </asp:DropDownList>
        </div>

        <!-- YEAR -->
        <div class="filter-group">
            <label>Year</label>

            <asp:DropDownList ID="ddlYear" runat="server"
                CssClass="custom-select"
                AutoPostBack="true"
                OnSelectedIndexChanged="Filter_Changed">

                <asp:ListItem Value="">All Years</asp:ListItem>
                <asp:ListItem>2026</asp:ListItem>
                <asp:ListItem>2025</asp:ListItem>
                <asp:ListItem>2024</asp:ListItem>
                <asp:ListItem>2023</asp:ListItem>

            </asp:DropDownList>
        </div>

        <!-- PRICE -->
        <div class="filter-group">
            <label>Price Range</label>

            <asp:TextBox ID="txtMinPrice" runat="server"
                CssClass="price-input" placeholder="Min" />

            <asp:TextBox ID="txtMaxPrice" runat="server"
                CssClass="price-input" placeholder="Max" />

            <asp:Button ID="btnFilter" runat="server"
                Text="Apply"
                CssClass="view-btn"
                OnClick="Filter_Changed" />
        </div>

    </div>

</div>

<!-- RESULTS -->
<div class="results-bar">
    <div class="results-count">
        Showing <span><%= rptVehicles.Items.Count %></span> vehicles
    </div>
</div>

<!-- VEHICLES GRID -->
<div class="vehicles-grid">

    <asp:Repeater ID="rptVehicles" runat="server">
        <ItemTemplate>

            <div class="vehicle-card">

                <div class="vehicle-image-container">
                    <img src='<%# Eval("ImageUrl") %>' class="vehicle-image" />
                </div>

                <div class="vehicle-info">

                    <div class="vehicle-category">
                        <%# Eval("Category") %>
                    </div>

                    <h3 class="vehicle-title">
                        <%# Eval("Name") %>
                    </h3>

                    <div class="vehicle-specs">
                        <span>📅 <%# Eval("Year") %></span>
                        <span>⚡ <%# Eval("Engine") %></span>
                        <span>⛽ <%# Eval("FuelType") %></span>
                    </div>

                    <div class="vehicle-footer">
                        <span class="price-value">
                            KES <%# Eval("Price") %>
                        </span>

                        <a href="#" class="view-btn">View Details</a>
                    </div>

                </div>

            </div>

        </ItemTemplate>
    </asp:Repeater>

</div>

</asp:Content>