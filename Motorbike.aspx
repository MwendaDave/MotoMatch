<%@ Page Title="" Language="C#" MasterPageFile="~/Motomatch.Master" AutoEventWireup="true" CodeBehind="Motorbike.aspx.cs" Inherits="MotoMatch.Motorbike" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<!-- HERO -->
<section class="motorbikes-hero">
    <h1 class="hero-title">Motorcycles</h1>
    <p class="hero-subtitle">Find your perfect ride.</p>
</section>

<!-- FILTER SECTION -->
<div class="filter-section">
    <div class="filter-container">

        <!-- CATEGORY TABS -->
        <div class="bike-type-tabs">
            <button type="button" class="bike-tab active" onclick="filterBikes('all', this)">All</button>
            <button type="button" class="bike-tab" onclick="filterBikes('sport', this)">Sport</button>
            <button type="button" class="bike-tab" onclick="filterBikes('cruiser', this)">Cruiser</button>
            <button type="button" class="bike-tab" onclick="filterBikes('adventure', this)">Adventure</button>
            <button type="button" class="bike-tab" onclick="filterBikes('dirt', this)">Dirt</button>
            <button type="button" class="bike-tab" onclick="filterBikes('electric', this)">Electric</button>
        </div>

        <!-- ADVANCED FILTERS -->
        <div class="advanced-filters-row">

            <select class="custom-select">
                <option value="">All Brands</option>
                <option value="yamaha">Yamaha</option>
                <option value="honda">Honda</option>
                <option value="bmw">BMW</option>
                <option value="ktm">KTM</option>
            </select>

            <select class="custom-select">
                <option value="">Engine</option>
                <option value="300">300 - 500cc</option>
                <option value="600">600 - 800cc</option>
                <option value="900">900+</option>
            </select>

            <select class="custom-select">
                <option value="">Year</option>
                <option value="2025">2025</option>
                <option value="2024">2024</option>
            </select>

            <select class="custom-select">
                <option value="">Price</option>
                <option value="0-1000000">Below 1M</option>
                <option value="1000000-3000000">1M - 3M</option>
                <option value="3000000+">Above 3M</option>
            </select>

            <!-- BUTTONS -->
            <div class="filter-group" style="align-self: flex-end;">
                <button type="button" class="apply-btn" onclick="applyBikeFilters()">Apply</button>
                <button type="button" class="reset-btn" onclick="resetBikeFilters()">Reset</button>
            </div>

        </div>
    </div>
</div>

<!-- RESULTS -->
<div class="results-header">
    <h2>Showing <span id="bikeCount"><%= rptBikes.Items.Count %></span> Motorcycles</h2>
</div>

<!-- GRID -->
<div class="bikes-grid" id="bikesGrid">

    <asp:Repeater ID="rptBikes" runat="server">
        <ItemTemplate>

            <div class="bike-card"
                data-category='<%# Eval("Category").ToString().ToLower() %>'
                data-brand='<%# Eval("Brand").ToString().ToLower() %>'
                data-cc='<%# Eval("EngineCC") %>'
                data-year='<%# Eval("Year") %>'
                data-price='<%# Eval("Price") %>'>

                <div class="bike-image-container">
                    <img src='<%# Eval("ImageUrl") %>' class="bike-image" />
                </div>

                <div class="bike-info">

                    <div class="bike-type">
                        <%# Eval("Category") %>
                    </div>

                    <h3 class="bike-name">
                        <%# Eval("Name") %>
                    </h3>

                    <div class="bike-specs-grid">
                        <span>⚡ <%# Eval("Power") %> HP</span>
                        <span>🔧 <%# Eval("EngineCC") %> cc</span>
                        <span>📅 <%# Eval("Year") %></span>
                        <span>⚖ <%# Eval("Weight") %> kg</span>
                    </div>

                    <div class="bike-footer">
                        <span class="price-amount">
                            KES <%# Eval("Price") %>
                        </span>
                        <a href="#" class="details-btn">View</a>
                    </div>

                </div>
            </div>

        </ItemTemplate>
    </asp:Repeater>

</div>

<!-- SCRIPT -->
<script>

let selectedCategory = "all";

function filterBikes(category, btn) {

    selectedCategory = category;

    document.querySelectorAll('.bike-tab').forEach(b => b.classList.remove('active'));
    btn.classList.add('active');

    applyBikeFilters();
}

function applyBikeFilters() {

    let selects = document.querySelectorAll('.custom-select');

    let brand = selects[0].value;
    let engine = selects[1].value;
    let year = selects[2].value;
    let price = selects[3].value;

    let cards = document.querySelectorAll('.bike-card');
    let count = 0;

    cards.forEach(card => {

        let show = true;

        let category = card.getAttribute('data-category');
        let b = card.getAttribute('data-brand');
        let cc = parseInt(card.getAttribute('data-cc')) || 0;
        let y = card.getAttribute('data-year');
        let p = parseInt(card.getAttribute('data-price')) || 0;

        if (selectedCategory !== "all" && category !== selectedCategory) show = false;

        if (brand && b !== brand) show = false;

        if (engine === '300' && (cc < 300 || cc > 500)) show = false;
        if (engine === '600' && (cc < 600 || cc > 800)) show = false;
        if (engine === '900' && cc < 900) show = false;

        if (year && y !== year) show = false;

        if (price === '0-1000000' && p > 1000000) show = false;
        if (price === '1000000-3000000' && (p < 1000000 || p > 3000000)) show = false;
        if (price === '3000000+' && p < 3000000) show = false;

        if (show) {
            card.style.display = 'block';
            count++;
        } else {
            card.style.display = 'none';
        }

    });

    document.getElementById('bikeCount').innerText = count;
}

function resetBikeFilters() {

    document.querySelectorAll('.custom-select').forEach(select => {
        select.selectedIndex = 0;
    });

    selectedCategory = "all";

    document.querySelectorAll('.bike-tab').forEach(tab => tab.classList.remove('active'));
    document.querySelector('.bike-tab').classList.add('active');

    applyBikeFilters();
}


</script>

</asp:Content>