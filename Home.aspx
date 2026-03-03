<%@ Page Title="" Language="C#" MasterPageFile="~/Motomatch.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="MotoMatch.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<section class="hero-section">
        <div class="slideshow-container" id="slideshow">
            
            <!-- Slide 1: Lamborghini -->
            <div class="slide active">
                <img src="https://images.unsplash.com/photo-1544636331-e26879cd4d9b?w=1920&q=80" alt="Lamborghini Aventador" />
                <div class="slide-overlay">
                    <div class="slide-content">
                        <span class="slide-badge">Just Arrived</span>
                        <h1 class="slide-title">Lamborghini Aventador</h1>
                        <p class="slide-subtitle">Experience the pinnacle of Italian engineering</p>
                        <p class="slide-price">Starting at $517,770</p>
                        <a href="#" class="cta-button">View Details</a>
                    </div>
                </div>
            </div>

            <!-- Slide 2: Ferrari -->
            <div class="slide">
                <img src="https://images.unsplash.com/photo-1583121274602-3e2820c69888?w=1920&q=80" alt="Ferrari 488 GTB" />
                <div class="slide-overlay">
                    <div class="slide-content">
                        <span class="slide-badge">Limited Edition</span>
                        <h1 class="slide-title">Ferrari 488 GTB</h1>
                        <p class="slide-subtitle">Pure racing heritage meets road luxury</p>
                        <p class="slide-price">Starting at $262,647</p>
                        <a href="#" class="cta-button">View Details</a>
                    </div>
                </div>
            </div>

            <!-- Slide 3: Rolls Royce -->
            <div class="slide">
                <img src="https://images.unsplash.com/photo-1563720223185-11003d516935?w=1920&q=80" alt="Rolls Royce Phantom" />
                <div class="slide-overlay">
                    <div class="slide-content">
                        <span class="slide-badge">Ultimate Luxury</span>
                        <h1 class="slide-title">Rolls Royce Phantom</h1>
                        <p class="slide-subtitle">The epitome of automotive excellence</p>
                        <p class="slide-price">Starting at $460,000</p>
                        <a href="#" class="cta-button">View Details</a>
                    </div>
                </div>
            </div>

            <!-- Slide 4: Porsche -->
            <div class="slide">
                <img src="https://images.unsplash.com/photo-1503376763036-066120622c74?w=1920&q=80" alt="Porsche 911 GT3" />
                <div class="slide-overlay">
                    <div class="slide-content">
                        <span class="slide-badge">Track Ready</span>
                        <h1 class="slide-title">Porsche 911 GT3</h1>
                        <p class="slide-subtitle">Precision engineering for the driving purist</p>
                        <p class="slide-price">Starting at $161,100</p>
                        <a href="#" class="cta-button">View Details</a>
                    </div>
                </div>
            </div>

            <!-- Slide 5: McLaren -->
            <div class="slide">
                <img src="https://images.unsplash.com/photo-1542362567-b07e54358753?w=1920&q=80" alt="McLaren 720S" />
                <div class="slide-overlay">
                    <div class="slide-content">
                        <span class="slide-badge">Supercar</span>
                        <h1 class="slide-title">McLaren 720S</h1>
                        <p class="slide-subtitle">Aerodynamic perfection from Woking</p>
                        <p class="slide-price">Starting at $299,000</p>
                        <a href="#" class="cta-button">View Details</a>
                    </div>
                </div>
            </div>

            <!-- Controls -->
            <div class="slide-arrows">
                <div class="arrow" onclick="changeSlide(-1)">❮</div>
                <div class="arrow" onclick="changeSlide(1)">❯</div>
            </div>

            <div class="slideshow-controls">
                <span class="dot active" onclick="currentSlide(1)"></span>
                <span class="dot" onclick="currentSlide(2)"></span>
                <span class="dot" onclick="currentSlide(3)"></span>
                <span class="dot" onclick="currentSlide(4)"></span>
                <span class="dot" onclick="currentSlide(5)"></span>
            </div>
        </div>
    </section>

    <!-- Stats Bar -->
    <div class="stats-bar">
        <div class="stats-container">
            <div class="stat-item">
                <span class="stat-number">500+</span>
                <span class="stat-label">Exotic Cars</span>
            </div>
            <div class="stat-item">
                <span class="stat-number">50+</span>
                <span class="stat-label">Luxury Brands</span>
            </div>
            <div class="stat-item">
                <span class="stat-number">15</span>
                <span class="stat-label">Years Experience</span>
            </div>
            <div class="stat-item">
                <span class="stat-number">24/7</span>
                <span class="stat-label">Concierge Service</span>
            </div>
        </div>
    </div>

    <!-- Categories Section -->
    <section class="categories-section">
        <div class="section-header">
            <p class="section-subtitle">Curated Collections</p>
            <h2 class="section-title">Explore Our Categories</h2>
        </div>

        <div class="categories-grid">
            
            <!-- High-End Luxury -->
            <div class="category-card">
                <div class="category-bg" style="background-image: url('https://images.unsplash.com/photo-1552519507-da3b142c6e3d?w=800&q=80');"></div>
                <div class="category-content">
                    <div class="category-icon">👑</div>
                    <h3 class="category-title">High-End Luxury</h3>
                    <p class="category-count">48 Vehicles Available</p>
                    <p class="category-description">The most prestigious automobiles from Rolls Royce, Bentley, and Maybach. Experience unparalleled opulence.</p>
                    <div class="category-features">
                        <span class="feature-tag">Chauffeur</span>
                        <span class="feature-tag">VIP</span>
                        <span class="feature-tag">Bespoke</span>
                    </div>
                </div>
            </div>

            <!-- Rental Fleet -->
            <div class="category-card">
                <div class="category-bg" style="background-image: url('https://images.unsplash.com/photo-1492144534655-ae79c964c9d7?w=800&q=80');"></div>
                <div class="category-content">
                    <div class="category-icon">🔑</div>
                    <h3 class="category-title">Rental Fleet</h3>
                    <p class="category-count">120+ Daily Rentals</p>
                    <p class="category-description">Drive your dream car for a day, weekend, or week. Flexible packages with full insurance coverage.</p>
                    <div class="category-features">
                        <span class="feature-tag">Daily</span>
                        <span class="feature-tag">Weekly</span>
                        <span class="feature-tag">Insurance</span>
                    </div>
                </div>
            </div>

            <!-- Daily Usage -->
            <div class="category-card">
                <div class="category-bg" style="background-image: url('https://images.unsplash.com/photo-1549399542-7e3f8b79c341?w=800&q=80');"></div>
                <div class="category-content">
                    <div class="category-icon">🚗</div>
                    <h3 class="category-title">Daily Usage</h3>
                    <p class="category-count">200+ Premium Cars</p>
                    <p class="category-description">Luxury sedans and SUVs perfect for everyday driving. Mercedes, BMW, Audi, and more.</p>
                    <div class="category-features">
                        <span class="feature-tag">Sedan</span>
                        <span class="feature-tag">SUV</span>
                        <span class="feature-tag">Economy</span>
                    </div>
                </div>
            </div>

            <!-- Off-Road -->
            <div class="category-card">
                <div class="category-bg" style="background-image: url('https://images.unsplash.com/photo-1533473359331-0135ef1b58bf?w=800&q=80');"></div>
                <div class="category-content">
                    <div class="category-icon">🏔️</div>
                    <h3 class="category-title">Off-Road Kings</h3>
                    <p class="category-count">35 Adventure Vehicles</p>
                    <p class="category-description">Conquer any terrain with our selection of G-Wagons, Range Rovers, and lifted trucks.</p>
                    <div class="category-features">
                        <span class="feature-tag">4x4</span>
                        <span class="feature-tag">Lifted</span>
                        <span class="feature-tag">Armored</span>
                    </div>
                </div>
            </div>

            <!-- Dirt Bikes -->
            <div class="category-card">
                <div class="category-bg" style="background-image: url('https://images.unsplash.com/photo-1558618666-fcd25c85cd64?w=800&q=80');"></div>
                <div class="category-content">
                    <div class="category-icon">🏍️</div>
                    <h3 class="category-title">Dirt Bikes</h3>
                    <p class="category-count">60 Motorcycles</p>
                    <p class="category-description">From motocross champions to enduro explorers. KTM, Yamaha, Honda, and Suzuki models.</p>
                    <div class="category-features">
                        <span class="feature-tag">MX</span>
                        <span class="feature-tag">Enduro</span>
                        <span class="feature-tag">Trail</span>
                    </div>
                </div>
            </div>

            <!-- Special Offers -->
            <div class="category-card">
                <div class="category-bg" style="background-image: url('https://images.unsplash.com/photo-1494976388531-d1058494cdd8?w=800&q=80');"></div>
                <div class="category-content">
                    <div class="category-icon">🏷️</div>
                    <h3 class="category-title">Special Offers</h3>
                    <p class="category-count">15 Limited Deals</p>
                    <p class="category-description">Exclusive pricing on select inventory. Zero down payment options and low APR financing available.</p>
                    <div class="category-features">
                        <span class="feature-tag">Sale</span>
                        <span class="feature-tag">0% APR</span>
                        <span class="feature-tag">Lease</span>
                    </div>
                </div>
            </div>

        </div>
    </section>

    <script>
        let slideIndex = 1;
        let slideInterval;
        const slides = document.getElementsByClassName("slide");
        const dots = document.getElementsByClassName("dot");

        // Initialize slideshow
        showSlide(slideIndex);
        startAutoSlide();

        function changeSlide(n) {
            clearInterval(slideInterval);
            showSlide(slideIndex += n);
            startAutoSlide();
        }

        function currentSlide(n) {
            clearInterval(slideInterval);
            showSlide(slideIndex = n);
            startAutoSlide();
        }

        function showSlide(n) {
            if (n > slides.length) { slideIndex = 1 }
            if (n < 1) { slideIndex = slides.length }
            
            // Remove active class from all slides and dots
            for (let i = 0; i < slides.length; i++) {
                slides[i].classList.remove("active");
                dots[i].classList.remove("active");
            }
            
            // Add active class to current slide and dot
            slides[slideIndex - 1].classList.add("active");
            dots[slideIndex - 1].classList.add("active");
            
            // Reset animation for text content
            const content = slides[slideIndex - 1].querySelector('.slide-content');
            content.style.animation = 'none';
            setTimeout(() => {
                content.style.animation = 'slideUp 1s ease-out';
            }, 10);
        }

        function startAutoSlide() {
            slideInterval = setInterval(() => {
                slideIndex++;
                showSlide(slideIndex);
            }, 6000); // Change slide every 6 seconds
        }

        // Pause on hover
        document.getElementById('slideshow').addEventListener('mouseenter', () => {
            clearInterval(slideInterval);
        });

        document.getElementById('slideshow').addEventListener('mouseleave', () => {
            startAutoSlide();
        });

        // Keyboard navigation
        document.addEventListener('keydown', (e) => {
            if (e.key === 'ArrowLeft') changeSlide(-1);
            if (e.key === 'ArrowRight') changeSlide(1);
        });

        // Touch/swipe support for mobile
        let touchStartX = 0;
        let touchEndX = 0;
        const slideshow = document.getElementById('slideshow');

        slideshow.addEventListener('touchstart', (e) => {
            touchStartX = e.changedTouches[0].screenX;
        });

        slideshow.addEventListener('touchend', (e) => {
            touchEndX = e.changedTouches[0].screenX;
            handleSwipe();
        });

        function handleSwipe() {
            if (touchEndX < touchStartX - 50) changeSlide(1);
            if (touchEndX > touchStartX + 50) changeSlide(-1);
        }

        // Parallax effect on scroll
        window.addEventListener('scroll', () => {
            const scrolled = window.pageYOffset;
            const parallax = document.querySelector('.hero-section');
            if (parallax) {
                parallax.style.transform = `translateY(${scrolled * 0.5}px)`;
            }
        });
    </script>
</asp:Content>
