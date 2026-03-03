<%@ Page Title="" Language="C#" MasterPageFile="~/Motomatch.Master" AutoEventWireup="true" CodeBehind="Vehicles.aspx.cs" Inherits="MotoMatch.Vehicles" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<!-- Hero Section -->
    <section class="vehicles-hero">
        <h1 class="hero-title">Our Collection</h1>
        <p class="hero-subtitle">Discover automotive excellence across every category. From daily drivers to exotic masterpieces.</p>
    </section>

    <!-- Filter Section -->
    <div class="filter-section">
        <div class="filter-container">
            
            <!-- Category Tabs -->
            <div class="category-tabs">
    <button class="category-tab active" data-category="all" onclick="filterCategory('all', this)">
        <span>All Vehicles</span>
        <span class="count">423</span>
    </button>
    <button class="category-tab" data-category="luxury" onclick="filterCategory('luxury', this)">
        <span>👑 Luxury</span>
        <span class="count">48</span>
    </button>
    <button class="category-tab" data-category="rental" onclick="filterCategory('rental', this)">
        <span>🔑 Rental</span>
        <span class="count">120</span>
    </button>
    <button class="category-tab" data-category="daily" onclick="filterCategory('daily', this)">
        <span>🚗 Daily</span>
        <span class="count">145</span>
    </button>
    <button class="category-tab" data-category="offroad" onclick="filterCategory('offroad', this)">
        <span>🏔️ Off-Road</span>
        <span class="count">35</span>
    </button>
    <button class="category-tab" data-category="motorcycle" onclick="filterCategory('motorcycle', this)">
        <span>🏍️ Motorcycles</span>
        <span class="count">60</span>
    </button>
    <button class="category-tab" data-category="special" onclick="filterCategory('special', this)">
        <span>🏷️ Special Offers</span>
        <span class="count">15</span>
    </button>
</div>

            <!-- Advanced Filters -->
            <div class="advanced-filters">
                <div class="filter-group">
                    <label class="filter-label">Brand</label>
                    <select class="custom-select" onchange="applyFilters()">
                        <option value="">All Brands</option>
                        <option value="lamborghini">Lamborghini</option>
                        <option value="ferrari">Ferrari</option>
                        <option value="rollsroyce">Rolls Royce</option>
                        <option value="porsche">Porsche</option>
                        <option value="mercedes">Mercedes-Benz</option>
                        <option value="bmw">BMW</option>
                        <option value="audi">Audi</option>
                        <option value="range">Range Rover</option>
                    </select>
                </div>

                <div class="filter-group">
                    <label class="filter-label">Year</label>
                    <select class="custom-select" onchange="applyFilters()">
                        <option value="">All Years</option>
                        <option value="2026">2026</option>
                        <option value="2025">2025</option>
                        <option value="2024">2024</option>
                        <option value="2023">2023</option>
                        <option value="classic">Classic (Pre-2020)</option>
                    </select>
                </div>

                <div class="filter-group">
                    <label class="filter-label">Price Range</label>
                    <div class="price-range">
                        <input type="number" class="price-input" placeholder="Min" min="0">
                        <span>-</span>
                        <input type="number" class="price-input" placeholder="Max" min="0">
                    </div>
                </div>

                <div class="filter-group">
                    <label class="filter-label">Sort By</label>
                    <select class="custom-select" onchange="sortVehicles(this.value)">
                        <option value="newest">Newest Arrivals</option>
                        <option value="price-low">Price: Low to High</option>
                        <option value="price-high">Price: High to Low</option>
                        <option value="popular">Most Popular</option>
                    </select>
                </div>
            </div>
        </div>
    </div>

    <!-- Results Bar -->
    <div class="results-bar">
        <div class="results-count">Showing <span id="countDisplay">12</span> of <span>423</span> vehicles</div>
        <div class="sort-options">
            <span class="sort-label">View:</span>
            <button onclick="toggleView('grid')" style="background: var(--gold-primary); color: black; border: none; padding: 8px 15px; border-radius: 5px; cursor: pointer;">⊞ Grid</button>
            <button onclick="toggleView('list')" style="background: transparent; border: 1px solid var(--gold-primary); color: var(--gold-primary); padding: 8px 15px; border-radius: 5px; cursor: pointer;">☰ List</button>
        </div>
    </div>

    <!-- Vehicles Grid -->
    <div class="vehicles-grid" id="vehiclesGrid">
        
        <!-- Vehicle 1: High-End Luxury -->
        <div class="vehicle-card" data-category="luxury" data-brand="rollsroyce" data-year="2025" data-price="460000">
            <div class="vehicle-badge">VIP</div>
            <div class="vehicle-image-container">
                <img src="https://images.unsplash.com/photo-1563720223185-11003d516935?w=800&q=80" alt="Rolls Royce Phantom" class="vehicle-image">
                <div class="vehicle-overlay"></div>
                <div class="quick-actions">
                    <button class="action-btn" title="Add to Favorites">♥</button>
                    <button class="action-btn" title="Compare">⚖</button>
                    <button class="action-btn" title="Quick View">👁</button>
                </div>
            </div>
            <div class="vehicle-info">
                <div class="vehicle-category">👑 High-End Luxury</div>
                <h3 class="vehicle-title">Rolls Royce Phantom</h3>
                <div class="vehicle-specs">
                    <span class="spec-item"><span class="spec-icon">⚡</span> V12 563HP</span>
                    <span class="spec-item"><span class="spec-icon">⛽</span> Petrol</span>
                    <span class="spec-item"><span class="spec-icon">📅</span> 2025</span>
                    <span class="spec-item"><span class="spec-icon">🏁</span> 0-60 in 5.1s</span>
                </div>
                <div class="vehicle-footer">
                    <div class="price-section">
                        <span class="price-label">Purchase Price</span>
                        <span class="price-value">$460,000</span>
                    </div>
                    <a href="#" class="view-btn">View Details</a>
                </div>
            </div>
        </div>

        <!-- Vehicle 2: Rental -->
        <div class="vehicle-card" data-category="rental" data-brand="lamborghini" data-year="2024" data-price="2500">
            <div class="vehicle-badge rental">Rental</div>
            <div class="vehicle-image-container">
                <img src="https://images.unsplash.com/photo-1544636331-e26879cd4d9b?w=800&q=80" alt="Lamborghini Huracan" class="vehicle-image">
                <div class="vehicle-overlay"></div>
                <div class="quick-actions">
                    <button class="action-btn">♥</button>
                    <button class="action-btn">⚖</button>
                    <button class="action-btn">👁</button>
                </div>
            </div>
            <div class="vehicle-info">
                <div class="vehicle-category">🔑 Rental Fleet</div>
                <h3 class="vehicle-title">Lamborghini Huracán</h3>
                <div class="vehicle-specs">
                    <span class="spec-item"><span class="spec-icon">⚡</span> V10 631HP</span>
                    <span class="spec-item"><span class="spec-icon">⛽</span> Petrol</span>
                    <span class="spec-item"><span class="spec-icon">📅</span> 2024</span>
                    <span class="spec-item"><span class="spec-icon">🏁</span> 0-60 in 2.9s</span>
                </div>
                <div class="vehicle-footer">
                    <div class="price-section">
                        <span class="price-label">Per Day</span>
                        <span class="price-value rental">$2,500</span>
                    </div>
                    <a href="#" class="view-btn">Book Now</a>
                </div>
            </div>
        </div>

        <!-- Vehicle 3: Daily Usage -->
        <div class="vehicle-card" data-category="daily" data-brand="mercedes" data-year="2025" data-price="85000">
            <div class="vehicle-image-container">
                <img src="https://images.unsplash.com/photo-1618843479313-40f8afb4b4d8?w=800&q=80" alt="Mercedes S-Class" class="vehicle-image">
                <div class="vehicle-overlay"></div>
                <div class="quick-actions">
                    <button class="action-btn">♥</button>
                    <button class="action-btn">⚖</button>
                    <button class="action-btn">👁</button>
                </div>
            </div>
            <div class="vehicle-info">
                <div class="vehicle-category">🚗 Daily Usage</div>
                <h3 class="vehicle-title">Mercedes-Benz S-Class</h3>
                <div class="vehicle-specs">
                    <span class="spec-item"><span class="spec-icon">⚡</span> 4.0L V8</span>
                    <span class="spec-item"><span class="spec-icon">⛽</span> Hybrid</span>
                    <span class="spec-item"><span class="spec-icon">📅</span> 2025</span>
                    <span class="spec-item"><span class="spec-icon">🏁</span> 0-60 in 4.3s</span>
                </div>
                <div class="vehicle-footer">
                    <div class="price-section">
                        <span class="price-label">Purchase Price</span>
                        <span class="price-value">$85,000</span>
                    </div>
                    <a href="#" class="view-btn">View Details</a>
                </div>
            </div>
        </div>

        <!-- Vehicle 4: Off-Road -->
        <div class="vehicle-card" data-category="offroad" data-brand="range" data-year="2024" data-price="145000">
            <div class="vehicle-badge">4x4</div>
            <div class="vehicle-image-container">
                <img src="https://images.unsplash.com/photo-1606016159991-dfe4f2746ad5?w=800&q=80" alt="Range Rover SVR" class="vehicle-image">
                <div class="vehicle-overlay"></div>
                <div class="quick-actions">
                    <button class="action-btn">♥</button>
                    <button class="action-btn">⚖</button>
                    <button class="action-btn">👁</button>
                </div>
            </div>
            <div class="vehicle-info">
                <div class="vehicle-category">🏔️ Off-Road</div>
                <h3 class="vehicle-title">Range Rover Sport SVR</h3>
                <div class="vehicle-specs">
                    <span class="spec-item"><span class="spec-icon">⚡</span> 575HP V8</span>
                    <span class="spec-item"><span class="spec-icon">⛽</span> Petrol</span>
                    <span class="spec-item"><span class="spec-icon">📅</span> 2024</span>
                    <span class="spec-item"><span class="spec-icon">🏔️</span> Terrain Response</span>
                </div>
                <div class="vehicle-footer">
                    <div class="price-section">
                        <span class="price-label">Purchase Price</span>
                        <span class="price-value">$145,000</span>
                    </div>
                    <a href="#" class="view-btn">View Details</a>
                </div>
            </div>
        </div>

        <!-- Vehicle 5: Motorcycle -->
        <div class="vehicle-card" data-category="motorcycle" data-brand="ducati" data-year="2025" data-price="35000">
            <div class="vehicle-image-container">
                <img src="https://images.unsplash.com/photo-1558618666-fcd25c85cd64?w=800&q=80" alt="Ducati Panigale" class="vehicle-image">
                <div class="vehicle-overlay"></div>
                <div class="quick-actions">
                    <button class="action-btn">♥</button>
                    <button class="action-btn">⚖</button>
                    <button class="action-btn">👁</button>
                </div>
            </div>
            <div class="vehicle-info">
                <div class="vehicle-category">🏍️ Dirt Bikes</div>
                <h3 class="vehicle-title">Ducati Panigale V4</h3>
                <div class="vehicle-specs">
                    <span class="spec-item"><span class="spec-icon">⚡</span> 1103cc 214HP</span>
                    <span class="spec-item"><span class="spec-icon">⛽</span> Petrol</span>
                    <span class="spec-item"><span class="spec-icon">📅</span> 2025</span>
                    <span class="spec-item"><span class="spec-icon">🏁</span> Top Speed 186mph</span>
                </div>
                <div class="vehicle-footer">
                    <div class="price-section">
                        <span class="price-label">Purchase Price</span>
                        <span class="price-value">$35,000</span>
                    </div>
                    <a href="#" class="view-btn">View Details</a>
                </div>
            </div>
        </div>

        <!-- Vehicle 6: Special Offer -->
        <div class="vehicle-card" data-category="special" data-brand="porsche" data-year="2023" data-price="125000">
            <div class="vehicle-badge special">-20% OFF</div>
            <div class="vehicle-image-container">
                <img src="https://images.unsplash.com/photo-1503376763036-066120622c74?w=800&q=80" alt="Porsche 911" class="vehicle-image">
                <div class="vehicle-overlay"></div>
                <div class="quick-actions">
                    <button class="action-btn">♥</button>
                    <button class="action-btn">⚖</button>
                    <button class="action-btn">👁</button>
                </div>
            </div>
            <div class="vehicle-info">
                <div class="vehicle-category">🏷️ Special Offer</div>
                <h3 class="vehicle-title">Porsche 911 Carrera S</h3>
                <div class="vehicle-specs">
                    <span class="spec-item"><span class="spec-icon">⚡</span> 443HP Flat-6</span>
                    <span class="spec-item"><span class="spec-icon">⛽</span> Petrol</span>
                    <span class="spec-item"><span class="spec-icon">📅</span> 2023</span>
                    <span class="spec-item"><span class="spec-icon">🏁</span> 0-60 in 3.5s</span>
                </div>
                <div class="vehicle-footer">
                    <div class="price-section">
                        <span class="price-label" style="text-decoration: line-through; opacity: 0.6;">$156,000</span>
                        <span class="price-value">$125,000</span>
                    </div>
                    <a href="#" class="view-btn">View Details</a>
                </div>
            </div>
        </div>

        <!-- Vehicle 7: Luxury -->
        <div class="vehicle-card" data-category="luxury" data-brand="bentley" data-year="2025" data-price="280000">
            <div class="vehicle-badge">New</div>
            <div class="vehicle-image-container">
                <img src="https://images.unsplash.com/photo-1617788138017-80ad40651399?w=800&q=80" alt="Bentley Continental" class="vehicle-image">
                <div class="vehicle-overlay"></div>
                <div class="quick-actions">
                    <button class="action-btn">♥</button>
                    <button class="action-btn">⚖</button>
                    <button class="action-btn">👁</button>
                </div>
            </div>
            <div class="vehicle-info">
                <div class="vehicle-category">👑 High-End Luxury</div>
                <h3 class="vehicle-title">Bentley Continental GT</h3>
                <div class="vehicle-specs">
                    <span class="spec-item"><span class="spec-icon">⚡</span> W12 650HP</span>
                    <span class="spec-item"><span class="spec-icon">⛽</span> Petrol</span>
                    <span class="spec-item"><span class="spec-icon">📅</span> 2025</span>
                    <span class="spec-item"><span class="spec-icon">🏁</span> 0-60 in 3.5s</span>
                </div>
                <div class="vehicle-footer">
                    <div class="price-section">
                        <span class="price-label">Purchase Price</span>
                        <span class="price-value">$280,000</span>
                    </div>
                    <a href="#" class="view-btn">View Details</a>
                </div>
            </div>
        </div>

        <!-- Vehicle 8: Rental -->
        <div class="vehicle-card" data-category="rental" data-brand="ferrari" data-year="2024" data-price="3500">
            <div class="vehicle-badge rental">Rental</div>
            <div class="vehicle-image-container">
                <img src="https://images.unsplash.com/photo-1583121274602-3e2820c69888?w=800&q=80" alt="Ferrari 488" class="vehicle-image">
                <div class="vehicle-overlay"></div>
                <div class="quick-actions">
                    <button class="action-btn">♥</button>
                    <button class="action-btn">⚖</button>
                    <button class="action-btn">👁</button>
                </div>
            </div>
            <div class="vehicle-info">
                <div class="vehicle-category">🔑 Rental Fleet</div>
                <h3 class="vehicle-title">Ferrari 488 Spider</h3>
                <div class="vehicle-specs">
                    <span class="spec-item"><span class="spec-icon">⚡</span> V8 661HP</span>
                    <span class="spec-item"><span class="spec-icon">⛽</span> Petrol</span>
                    <span class="spec-item"><span class="spec-icon">📅</span> 2024</span>
                    <span class="spec-item"><span class="spec-icon">🏁</span> 0-60 in 3.0s</span>
                </div>
                <div class="vehicle-footer">
                    <div class="price-section">
                        <span class="price-label">Per Day</span>
                        <span class="price-value rental">$3,500</span>
                    </div>
                    <a href="#" class="view-btn">Book Now</a>
                </div>
            </div>
        </div>

        <!-- Vehicle 9: Daily -->
        <div class="vehicle-card" data-category="daily" data-brand="bmw" data-year="2025" data-price="75000">
            <div class="vehicle-image-container">
                <img src="https://images.unsplash.com/photo-1555215695-3004980adade?w=800&q=80" alt="BMW M5" class="vehicle-image">
                <div class="vehicle-overlay"></div>
                <div class="quick-actions">
                    <button class="action-btn">♥</button>
                    <button class="action-btn">⚖</button>
                    <button class="action-btn">👁</button>
                </div>
            </div>
            <div class="vehicle-info">
                <div class="vehicle-category">🚗 Daily Usage</div>
                <h3 class="vehicle-title">BMW M5 Competition</h3>
                <div class="vehicle-specs">
                    <span class="spec-item"><span class="spec-icon">⚡</span> V8 617HP</span>
                    <span class="spec-item"><span class="spec-icon">⛽</span> Petrol</span>
                    <span class="spec-item"><span class="spec-icon">📅</span> 2025</span>
                    <span class="spec-item"><span class="spec-icon">🏁</span> 0-60 in 3.1s</span>
                </div>
                <div class="vehicle-footer">
                    <div class="price-section">
                        <span class="price-label">Purchase Price</span>
                        <span class="price-value">$75,000</span>
                    </div>
                    <a href="#" class="view-btn">View Details</a>
                </div>
            </div>
        </div>

    </div>

    <script>
        // Category Filtering - FIXED VERSION
        function filterCategory(category, btnElement) {
            // If btnElement is not passed (from inline onclick), find it
            if (!btnElement && event && event.target) {
                btnElement = event.target.closest('.category-tab');
            }

            // Update active tab styling
            document.querySelectorAll('.category-tab').forEach(tab => {
                tab.classList.remove('active');
                // Reset inline styles that might interfere
                tab.style.background = '';
                tab.style.color = '';
                tab.style.borderColor = '';
            });

            // Add active class to clicked button
            if (btnElement) {
                btnElement.classList.add('active');
            } else {
                // Fallback: find button by category data attribute
                const buttons = document.querySelectorAll('.category-tab');
                buttons.forEach(btn => {
                    if (btn.getAttribute('onclick').includes(`'${category}'`)) {
                        btn.classList.add('active');
                    }
                });
            }

            // Filter cards
            const cards = document.querySelectorAll('.vehicle-card');
            let visibleCount = 0;

            cards.forEach((card, index) => {
                // Remove existing animation styles
                card.style.animation = 'none';
                card.offsetHeight; // Trigger reflow

                if (category === 'all' || card.getAttribute('data-category') === category) {
                    card.classList.remove('hidden');
                    // Force display block first
                    card.style.display = 'block';
                    // Add staggered animation
                    setTimeout(() => {
                        card.style.animation = `fadeInUp 0.6s ease forwards`;
                        card.style.animationDelay = `${index * 0.1}s`;
                    }, 10);
                    visibleCount++;
                } else {
                    card.classList.add('hidden');
                    card.style.display = 'none';
                }
            });

            // Update count display
            const countDisplay = document.getElementById('countDisplay');
            if (countDisplay) {
                countDisplay.textContent = visibleCount;
            }

            // Smooth scroll to grid
            const grid = document.getElementById('vehiclesGrid');
            if (grid) {
                grid.scrollIntoView({ behavior: 'smooth', block: 'start' });
            }

            console.log(`Filtered to ${category}: ${visibleCount} vehicles shown`);
        }

        // Alternative: Use event delegation (more reliable)
        document.addEventListener('DOMContentLoaded', function () {
            // Attach click handlers to category tabs
            const tabs = document.querySelectorAll('.category-tab');
            tabs.forEach(tab => {
                tab.addEventListener('click', function (e) {
                    e.preventDefault();

                    // Extract category from onclick attribute or data attribute
                    let category = 'all';
                    const onclickAttr = this.getAttribute('onclick');
                    if (onclickAttr) {
                        const match = onclickAttr.match(/'([^']+)'/);
                        if (match) category = match[1];
                    }

                    // Or use data attribute if you add it: data-category="luxury"
                    if (this.dataset.category) {
                        category = this.dataset.category;
                    }

                    filterCategory(category, this);
                });
            });
        });

        // Sorting - FIXED
        function sortVehicles(sortType) {
            const grid = document.getElementById('vehiclesGrid');
            if (!grid) return;

            // Get only visible cards
            const cards = Array.from(grid.querySelectorAll('.vehicle-card')).filter(card =>
                !card.classList.contains('hidden')
            );

            cards.sort((a, b) => {
                const priceA = parseInt(a.getAttribute('data-price')) || 0;
                const priceB = parseInt(b.getAttribute('data-price')) || 0;
                const yearA = parseInt(a.getAttribute('data-year')) || 0;
                const yearB = parseInt(b.getAttribute('data-year')) || 0;

                switch (sortType) {
                    case 'price-low': return priceA - priceB;
                    case 'price-high': return priceB - priceA;
                    case 'newest': return yearB - yearA;
                    default: return 0;
                }
            });

            // Re-append in new order
            cards.forEach(card => grid.appendChild(card));

            // Re-trigger animations
            cards.forEach((card, index) => {
                card.style.animation = 'none';
                card.offsetHeight; // Trigger reflow
                card.style.animation = `fadeInUp 0.6s ease forwards`;
                card.style.animationDelay = `${index * 0.1}s`;
            });
        }

        // View Toggle
        function toggleView(view) {
            const grid = document.getElementById('vehiclesGrid');
            const buttons = document.querySelectorAll('.sort-options button');

            if (!grid) return;

            if (view === 'list') {
                grid.style.gridTemplateColumns = '1fr';
                // Update button styles
                if (buttons[1]) {
                    buttons[1].style.background = 'var(--gold-primary)';
                    buttons[1].style.color = 'black';
                }
                if (buttons[0]) {
                    buttons[0].style.background = 'transparent';
                    buttons[0].style.color = 'var(--gold-primary)';
                }

                // Add list styling to cards
                document.querySelectorAll('.vehicle-card').forEach(card => {
                    card.style.display = 'flex';
                    card.style.flexDirection = 'row';
                    card.style.height = '200px';

                    const imgContainer = card.querySelector('.vehicle-image-container');
                    if (imgContainer) {
                        imgContainer.style.width = '40%';
                        imgContainer.style.height = '100%';
                    }

                    const info = card.querySelector('.vehicle-info');
                    if (info) {
                        info.style.width = '60%';
                        info.style.display = 'flex';
                        info.style.flexDirection = 'column';
                        info.style.justifyContent = 'center';
                    }
                });
            } else {
                grid.style.gridTemplateColumns = 'repeat(auto-fill, minmax(380px, 1fr))';
                // Update button styles
                if (buttons[0]) {
                    buttons[0].style.background = 'var(--gold-primary)';
                    buttons[0].style.color = 'black';
                }
                if (buttons[1]) {
                    buttons[1].style.background = 'transparent';
                    buttons[1].style.color = 'var(--gold-primary)';
                }

                // Reset card styles
                document.querySelectorAll('.vehicle-card').forEach(card => {
                    card.style.display = 'block';
                    card.style.height = 'auto';

                    const imgContainer = card.querySelector('.vehicle-image-container');
                    if (imgContainer) {
                        imgContainer.style.width = '100%';
                        imgContainer.style.height = '250px';
                    }

                    const info = card.querySelector('.vehicle-info');
                    if (info) {
                        info.style.width = '100%';
                    }
                });
            }
        }

        // Apply all filters
        function applyFilters() {
            const brandSelect = document.querySelector('.custom-select');
            const yearSelect = document.querySelectorAll('.custom-select')[1];
            const minPrice = document.querySelector('.price-input');
            const maxPrice = document.querySelectorAll('.price-input')[1];

            const brand = brandSelect ? brandSelect.value : '';
            const year = yearSelect ? yearSelect.value : '';
            const min = minPrice ? parseInt(minPrice.value) || 0 : 0;
            const max = maxPrice ? parseInt(maxPrice.value) || Infinity : Infinity;

            const cards = document.querySelectorAll('.vehicle-card');
            let visibleCount = 0;

            cards.forEach(card => {
                const cardBrand = card.getAttribute('data-brand');
                const cardYear = card.getAttribute('data-year');
                const cardPrice = parseInt(card.getAttribute('data-price')) || 0;

                let show = true;

                if (brand && cardBrand !== brand) show = false;
                if (year && cardYear !== year) show = false;
                if (cardPrice < min || cardPrice > max) show = false;

                if (show) {
                    card.classList.remove('hidden');
                    card.style.display = 'block';
                    visibleCount++;
                } else {
                    card.classList.add('hidden');
                    card.style.display = 'none';
                }
            });

            const countDisplay = document.getElementById('countDisplay');
            if (countDisplay) {
                countDisplay.textContent = visibleCount;
            }
        }

        // Quick Actions with visual feedback
        document.querySelectorAll('.action-btn').forEach(btn => {
            btn.addEventListener('click', function (e) {
                e.stopPropagation();
                e.preventDefault();

                // Visual feedback
                this.style.transform = 'scale(0.8)';
                this.style.background = 'var(--gradient-gold)';
                this.style.color = 'var(--black-primary)';

                setTimeout(() => {
                    this.style.transform = 'scale(1)';
                    // Reset after animation
                    setTimeout(() => {
                        this.style.background = 'rgba(0,0,0,0.7)';
                        this.style.color = 'var(--gold-primary)';
                    }, 300);
                }, 150);

                // Get action type from title
                const action = this.getAttribute('title');
                console.log(`${action} clicked`);

                // Add your logic here (AJAX calls, modals, etc.)
            });
        });

        // Infinite Scroll
        let loading = false;
        window.addEventListener('scroll', function () {
            if (loading) return;

            const scrollPosition = window.innerHeight + window.scrollY;
            const threshold = document.body.offsetHeight - 500;

            if (scrollPosition >= threshold) {
                loading = true;
                console.log('Loading more vehicles...');
                // Simulate loading - replace with actual AJAX
                setTimeout(() => {
                    loading = false;
                }, 1000);
            }
        });

        // Initialize on load
        document.addEventListener('DOMContentLoaded', function () {
            console.log('Vehicles page initialized');

            // Set initial count
            const allCards = document.querySelectorAll('.vehicle-card');
            const countDisplay = document.getElementById('countDisplay');
            if (countDisplay) {
                countDisplay.textContent = allCards.length;
            }

            // Ensure all cards are visible initially
            allCards.forEach((card, index) => {
                card.style.animation = `fadeInUp 0.6s ease forwards`;
                card.style.animationDelay = `${index * 0.1}s`;
            });
        });
    </script>

</asp:Content>
