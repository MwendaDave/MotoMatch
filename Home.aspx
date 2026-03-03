<%@ Page Title="Home" Language="C#" MasterPageFile="~/Motomatch.Master" AutoEventWireup="true" CodeBehind="~/Home.aspx.cs" Inherits="Motormatch.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <!-- HERO SECTION -->
    <div class="hero-section">

        <div class="slide-overlay">
            <div class="slide-content">

                <div class="slide-badge">Luxury Marketplace</div>

                <h1 class="slide-title">Find Your Dream Ride</h1>

                <p class="slide-subtitle">
                    Premium Cars & Motorbikes at the best prices
                </p>

                <!-- LOGIN & SIGNUP BUTTONS -->
                <div style="margin-top:30px;">
                    <a href="Login.aspx" class="auth-btn">Log In</a>
                    <a href="Register.aspx" class="auth-btn primary">Sign Up</a>
                </div>

            </div>
        </div>

    </div>

    <!-- FEATURED VEHICLES -->
    <h2 class="page-title">Featured Vehicles</h2>

    <div class="vehicles-grid">

        <asp:Repeater ID="rptCars" runat="server">
            <ItemTemplate>

                <div class="vehicle-card">

                    <div class="vehicle-image-container">
                        <img src='<%# ResolveUrl(Eval("ImageUrl").ToString()) %>' class="vehicle-image" />
                    </div>

                    <div class="vehicle-info">
                        <h3 class="vehicle-title"><%# Eval("Model") %></h3>

                        <div class="vehicle-footer">
                            <span class="price-value">Ksh <%# Eval("Price") %></span>
                        </div>
                    </div>

                </div>

            </ItemTemplate>
        </asp:Repeater>

    </div>

</asp:Content>