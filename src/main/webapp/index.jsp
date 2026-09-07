<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>NexusShop · friendly e‑commerce</title>
  <!-- Fonts & Icons -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,400;14..32,500;14..32,600;14..32,700;14..32,800&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }
    body {
      font-family: 'Inter', -apple-system, system-ui, sans-serif;
      background: #f9f8f6;
      color: #1c1c28;
      line-height: 1.5;
      -webkit-font-smoothing: antialiased;
    }
    a {
      color: inherit;
      text-decoration: none;
    }
    button {
      cursor: pointer;
      font: inherit;
      border: none;
      background: none;
      color: inherit;
    }
    input {
      font: inherit;
    }
    img {
      display: block;
      max-width: 100%;
    }
    .container {
      max-width: 1280px;
      margin: 0 auto;
      padding: 0 20px;
    }

    /* buttons */
    .btn {
      display: inline-flex;
      align-items: center;
      justify-content: center;
      gap: 8px;
      padding: 10px 24px;
      border-radius: 60px;
      font-weight: 600;
      font-size: 0.95rem;
      transition: all 0.2s ease;
      border: 2px solid transparent;
    }
    .btn-primary {
      background: #2d3b4f;
      color: #fff;
      border-color: #2d3b4f;
    }
    .btn-primary:hover {
      background: #1f2a39;
      transform: translateY(-2px);
      box-shadow: 0 8px 20px rgba(45, 59, 79, 0.2);
    }
    .btn-accent {
      background: #c76b4a;
      color: #fff;
      border-color: #c76b4a;
    }
    .btn-accent:hover {
      background: #b0583a;
      transform: translateY(-2px);
      box-shadow: 0 8px 24px rgba(199, 107, 74, 0.25);
    }
    .btn-outline-light {
      background: rgba(255, 255, 255, 0.12);
      color: #fff;
      border-color: rgba(255, 255, 255, 0.25);
    }
    .btn-outline-light:hover {
      background: rgba(255, 255, 255, 0.22);
      border-color: rgba(255, 255, 255, 0.5);
      transform: translateY(-2px);
    }
    .btn-sm {
      padding: 6px 16px;
      font-size: 0.85rem;
    }

    /* header */
    header {
      position: sticky;
      top: 0;
      z-index: 50;
      background: rgba(255, 255, 255, 0.88);
      backdrop-filter: blur(12px);
      -webkit-backdrop-filter: blur(12px);
      border-bottom: 1px solid rgba(0,0,0,0.03);
    }
    .header-inner {
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 16px;
      padding: 10px 0;
      min-height: 64px;
    }
    .brand {
      display: flex;
      align-items: center;
      gap: 8px;
      font-weight: 800;
      font-size: 1.3rem;
      letter-spacing: -0.3px;
    }
    .brand i {
      color: #c76b4a;
      font-size: 1.5rem;
    }
    .brand span.accent {
      color: #c76b4a;
    }
    nav.desktop-nav ul {
      display: flex;
      gap: 4px;
      list-style: none;
    }
    nav.desktop-nav a {
      padding: 6px 14px;
      border-radius: 40px;
      font-weight: 500;
      font-size: 0.9rem;
      color: #5a5a6e;
      transition: all 0.15s;
    }
    nav.desktop-nav a:hover,
    nav.desktop-nav a.active {
      background: #f0eeea;
      color: #1c1c28;
    }
    .header-actions {
      display: flex;
      align-items: center;
      gap: 6px;
    }
    .icon-btn {
      width: 38px;
      height: 38px;
      border-radius: 50%;
      display: grid;
      place-items: center;
      color: #5a5a6e;
      transition: 0.2s;
      font-size: 1.1rem;
    }
    .icon-btn:hover {
      background: #f0eeea;
      color: #1c1c28;
    }
    .cart-wrap {
      position: relative;
    }
    .cart-count {
      position: absolute;
      top: -4px;
      right: -4px;
      background: #c76b4a;
      color: #fff;
      font-size: 0.7rem;
      font-weight: 700;
      width: 18px;
      height: 18px;
      border-radius: 50%;
      display: grid;
      place-items: center;
      border: 2px solid #fff;
    }
    .search-wrap {
      display: flex;
      align-items: center;
      background: #f0eeea;
      border-radius: 60px;
      padding: 0 12px 0 18px;
      border: 2px solid transparent;
      transition: 0.2s;
      min-width: 180px;
    }
    .search-wrap:focus-within {
      border-color: #c76b4a;
      background: #fff;
      box-shadow: 0 0 0 4px rgba(199,107,74,0.08);
    }
    .search-wrap input {
      border: 0;
      background: transparent;
      padding: 8px 0;
      width: 100%;
      outline: none;
      font-size: 0.9rem;
    }
    .search-wrap input::placeholder {
      color: #a0a0b4;
    }
    .search-wrap button {
      padding: 6px 0 6px 8px;
      color: #6b6b80;
      transition: 0.2s;
    }
    .search-wrap button:hover {
      color: #c76b4a;
    }
    .mobile-toggle {
      display: none;
      width: 40px;
      height: 40px;
      border-radius: 50%;
      background: #f0eeea;
      font-size: 1.2rem;
      color: #1c1c28;
    }
    #mobileMenu {
      display: none;
      background: #fff;
      border-top: 1px solid rgba(0,0,0,0.04);
      padding: 12px 0 18px;
    }
    #mobileMenu ul {
      list-style: none;
      display: flex;
      flex-direction: column;
      gap: 2px;
    }
    #mobileMenu a {
      display: flex;
      align-items: center;
      gap: 12px;
      padding: 10px 16px;
      border-radius: 12px;
      font-weight: 500;
      color: #1c1c28;
    }
    #mobileMenu a:hover {
      background: #f5f3f0;
    }
    #mobileMenu a i {
      width: 24px;
      color: #6b6b80;
    }

    /* hero */
    .hero {
      position: relative;
      border-radius: 24px;
      overflow: hidden;
      margin: 18px 20px 0;
      background: linear-gradient(135deg, #1e2637, #2d3b4f);
      padding: 48px 0;
      min-height: 340px;
      display: flex;
      align-items: center;
    }
    .hero::before {
      content: '';
      position: absolute;
      inset: 0;
      background: url('https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1400&q=80') center/cover no-repeat;
      opacity: 0.2;
      z-index: 0;
    }
    .hero .container {
      position: relative;
      z-index: 1;
    }
    .hero .tag {
      display: inline-block;
      background: rgba(199, 107, 74, 0.2);
      color: #e8b4a0;
      padding: 4px 14px;
      border-radius: 60px;
      font-size: 0.8rem;
      font-weight: 600;
      letter-spacing: 0.3px;
      margin-bottom: 12px;
    }
    .hero h1 {
      font-size: 2.8rem;
      font-weight: 700;
      color: #fff;
      line-height: 1.1;
      max-width: 600px;
      margin-bottom: 12px;
      letter-spacing: -0.5px;
    }
    .hero p {
      color: rgba(255,255,255,0.8);
      max-width: 480px;
      font-size: 1rem;
      margin-bottom: 20px;
    }
    .hero .actions {
      display: flex;
      flex-wrap: wrap;
      gap: 10px;
    }

    /* sections */
    .section {
      padding: 44px 0 32px;
    }
    .section-header {
      display: flex;
      align-items: flex-end;
      justify-content: space-between;
      gap: 16px;
      flex-wrap: wrap;
      margin-bottom: 24px;
    }
    .section-header h2 {
      font-size: 1.6rem;
      font-weight: 700;
      letter-spacing: -0.3px;
    }
    .section-header p {
      color: #6b6b80;
      margin-top: 2px;
      font-size: 0.95rem;
    }
    .view-all {
      font-weight: 600;
      color: #c76b4a;
      display: flex;
      align-items: center;
      gap: 6px;
      font-size: 0.9rem;
      white-space: nowrap;
      transition: 0.2s;
    }
    .view-all:hover {
      gap: 12px;
    }

    /* categories */
    .categories-grid {
      display: grid;
      grid-template-columns: repeat(6, 1fr);
      gap: 14px;
    }
    .cat-card {
      background: #fff;
      border-radius: 18px;
      padding: 20px 12px;
      text-align: center;
      box-shadow: 0 4px 16px rgba(0,0,0,0.02);
      transition: 0.2s;
      border: 2px solid transparent;
      cursor: default;
    }
    .cat-card:hover {
      transform: translateY(-4px);
      box-shadow: 0 12px 28px rgba(0,0,0,0.04);
      border-color: #e3dcd3;
    }
    .cat-card .icon {
      width: 52px;
      height: 52px;
      background: #f0eeea;
      border-radius: 50%;
      display: grid;
      place-items: center;
      margin: 0 auto 10px;
      font-size: 1.4rem;
      color: #c76b4a;
      transition: 0.2s;
    }
    .cat-card:hover .icon {
      background: #c76b4a;
      color: #fff;
    }
    .cat-card h4 {
      font-size: 0.9rem;
      font-weight: 600;
    }
    .cat-card .count {
      font-size: 0.8rem;
      color: #8a8a9e;
    }

    /* products */
    .products-grid {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: 18px;
    }
    .product-card {
      background: #fff;
      border-radius: 18px;
      overflow: hidden;
      box-shadow: 0 4px 16px rgba(0,0,0,0.02);
      transition: 0.2s;
      border: 2px solid transparent;
      display: flex;
      flex-direction: column;
    }
    .product-card:hover {
      transform: translateY(-4px);
      box-shadow: 0 12px 32px rgba(0,0,0,0.06);
      border-color: #e3dcd3;
    }
    .product-card .img-wrap {
      position: relative;
      background: #f5f3f0;
      aspect-ratio: 1 / 1;
      overflow: hidden;
    }
    .product-card .img-wrap img {
      width: 100%;
      height: 100%;
      object-fit: cover;
      transition: 0.3s;
    }
    .product-card:hover .img-wrap img {
      transform: scale(1.03);
    }
    .product-card .badge {
      position: absolute;
      top: 12px;
      left: 12px;
      background: #c76b4a;
      color: #fff;
      padding: 2px 12px;
      border-radius: 40px;
      font-size: 0.7rem;
      font-weight: 700;
      letter-spacing: 0.3px;
    }
    .product-card .badge.sale {
      background: #d9b56a;
      color: #1c1c28;
    }
    .product-card .wish-btn {
      position: absolute;
      top: 12px;
      right: 12px;
      width: 34px;
      height: 34px;
      border-radius: 50%;
      background: rgba(255,255,255,0.9);
      backdrop-filter: blur(4px);
      display: grid;
      place-items: center;
      color: #6b6b80;
      transition: 0.2s;
      font-size: 0.95rem;
    }
    .product-card .wish-btn:hover {
      background: #fff;
      color: #c76b4a;
      transform: scale(1.08);
    }
    .product-card .body {
      padding: 14px 14px 8px;
      flex: 1;
    }
    .product-card .body .cat-tag {
      font-size: 0.7rem;
      text-transform: uppercase;
      letter-spacing: 0.4px;
      color: #8a8a9e;
      font-weight: 600;
    }
    .product-card .body h5 {
      font-size: 0.95rem;
      font-weight: 600;
      margin: 4px 0 2px;
      line-height: 1.3;
    }
    .product-card .body .price-row {
      display: flex;
      align-items: center;
      gap: 8px;
      margin-top: 4px;
    }
    .product-card .body .price {
      font-weight: 700;
      font-size: 1.1rem;
    }
    .product-card .body .old-price {
      color: #8a8a9e;
      text-decoration: line-through;
      font-size: 0.85rem;
    }
    .product-card .body .rating {
      display: flex;
      align-items: center;
      gap: 4px;
      font-size: 0.85rem;
      color: #e5b85a;
      margin-top: 4px;
    }
    .product-card .body .rating span {
      color: #6b6b80;
    }
    .product-card .footer {
      padding: 0 14px 14px;
    }
    .product-card .footer .add-btn {
      width: 100%;
      padding: 8px;
      border-radius: 40px;
      background: #2d3b4f;
      color: #fff;
      font-weight: 600;
      font-size: 0.85rem;
      transition: 0.2s;
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 6px;
    }
    .product-card .footer .add-btn:hover {
      background: #c76b4a;
    }
    .product-card .footer .add-btn.added {
      background: #3a7d6b;
    }

    /* deal */
    .deal-wrap {
      display: flex;
      background: #fff;
      border-radius: 24px;
      overflow: hidden;
      box-shadow: 0 4px 20px rgba(0,0,0,0.02);
    }
    .deal-wrap .deal-img {
      flex: 0 0 44%;
      background: #f0eeea;
      min-height: 240px;
    }
    .deal-wrap .deal-img img {
      width: 100%;
      height: 100%;
      object-fit: cover;
    }
    .deal-wrap .deal-content {
      padding: 32px 36px;
      flex: 1;
      display: flex;
      flex-direction: column;
      justify-content: center;
    }
    .deal-wrap .deal-content .tag {
      align-self: flex-start;
      background: #d9b56a;
      padding: 4px 14px;
      border-radius: 60px;
      font-size: 0.7rem;
      font-weight: 700;
      text-transform: uppercase;
      letter-spacing: 0.4px;
      color: #1c1c28;
      margin-bottom: 10px;
    }
    .deal-wrap .deal-content h3 {
      font-size: 1.5rem;
      font-weight: 700;
    }
    .deal-wrap .deal-content .desc {
      color: #5a5a6e;
      margin: 4px 0 12px;
    }
    .deal-wrap .deal-content .price-big {
      font-size: 1.8rem;
      font-weight: 800;
    }
    .deal-wrap .deal-content .price-big .old {
      font-size: 1rem;
      font-weight: 400;
      color: #8a8a9e;
      text-decoration: line-through;
      margin-left: 8px;
    }
    .deal-wrap .deal-content .stock {
      font-size: 0.9rem;
      color: #5a5a6e;
      margin: 4px 0 14px;
    }
    .deal-wrap .deal-content .stock strong {
      color: #c76b4a;
    }
    .timer-grid {
      display: flex;
      gap: 10px;
      margin: 6px 0 16px;
    }
    .timer-box {
      background: #1c1c28;
      color: #fff;
      padding: 6px 12px;
      border-radius: 12px;
      min-width: 56px;
      text-align: center;
    }
    .timer-box .num {
      font-size: 1.4rem;
      font-weight: 700;
      line-height: 1.2;
    }
    .timer-box .label {
      font-size: 0.6rem;
      text-transform: uppercase;
      opacity: 0.6;
      letter-spacing: 0.5px;
    }

    /* testimonials */
    .testimonials-scroll {
      display: flex;
      gap: 18px;
      overflow-x: auto;
      padding: 4px 2px 12px;
      scroll-snap-type: x mandatory;
    }
    .testimonials-scroll::-webkit-scrollbar {
      height: 4px;
    }
    .testimonials-scroll::-webkit-scrollbar-thumb {
      background: #d5cec4;
      border-radius: 20px;
    }
    .testimonial-card {
      flex: 0 0 300px;
      background: #fff;
      border-radius: 18px;
      padding: 20px 22px;
      box-shadow: 0 4px 16px rgba(0,0,0,0.02);
      scroll-snap-align: start;
      transition: 0.2s;
    }
    .testimonial-card:hover {
      box-shadow: 0 12px 32px rgba(0,0,0,0.04);
    }
    .testimonial-card .stars {
      color: #e5b85a;
      letter-spacing: 2px;
      font-size: 0.9rem;
      margin-bottom: 6px;
    }
    .testimonial-card blockquote {
      font-style: italic;
      font-size: 0.95rem;
      color: #2d2d40;
      margin-bottom: 12px;
      line-height: 1.5;
    }
    .testimonial-card .author {
      display: flex;
      align-items: center;
      gap: 12px;
    }
    .testimonial-card .author img {
      width: 40px;
      height: 40px;
      border-radius: 50%;
      object-fit: cover;
      background: #e3dcd3;
    }
    .testimonial-card .author .name {
      font-weight: 600;
      font-size: 0.9rem;
    }
    .testimonial-card .author .role {
      font-size: 0.8rem;
      color: #6b6b80;
    }

    /* newsletter */
    .newsletter-wrap {
      background: #1c1c28;
      border-radius: 24px;
      padding: 40px 44px;
      color: #fff;
      display: flex;
      align-items: center;
      justify-content: space-between;
      flex-wrap: wrap;
      gap: 24px;
    }
    .newsletter-wrap h3 {
      font-size: 1.4rem;
      font-weight: 700;
    }
    .newsletter-wrap p {
      opacity: 0.7;
      font-size: 0.95rem;
    }
    .newsletter-wrap form {
      display: flex;
      gap: 10px;
      flex: 1;
      max-width: 440px;
      flex-wrap: wrap;
    }
    .newsletter-wrap input {
      flex: 1;
      min-width: 160px;
      padding: 12px 18px;
      border-radius: 60px;
      border: 0;
      background: rgba(255,255,255,0.08);
      color: #fff;
      outline: 2px solid transparent;
      transition: 0.2s;
    }
    .newsletter-wrap input::placeholder {
      color: rgba(255,255,255,0.4);
    }
    .newsletter-wrap input:focus {
      outline-color: #c76b4a;
      background: rgba(255,255,255,0.14);
    }
    .newsletter-wrap .btn {
      background: #c76b4a;
      color: #fff;
      border-color: #c76b4a;
    }
    .newsletter-wrap .btn:hover {
      background: #b0583a;
      border-color: #b0583a;
    }
    #newsletterMsg {
      width: 100%;
      margin-top: 6px;
      font-size: 0.9rem;
      opacity: 0.9;
    }

    /* footer */
    footer {
      padding: 40px 0 20px;
      border-top: 1px solid rgba(0,0,0,0.04);
      margin-top: 8px;
    }
    .footer-grid {
      display: grid;
      grid-template-columns: 2fr 1fr 1fr 1fr;
      gap: 32px;
      margin-bottom: 24px;
    }
    .footer-grid .brand-col .brand {
      font-size: 1.2rem;
      margin-bottom: 6px;
    }
    .footer-grid .brand-col p {
      color: #5a5a6e;
      font-size: 0.9rem;
      max-width: 260px;
      line-height: 1.5;
    }
    .footer-grid .brand-col .socials {
      display: flex;
      gap: 8px;
      margin-top: 12px;
    }
    .footer-grid .brand-col .socials a {
      width: 36px;
      height: 36px;
      border-radius: 50%;
      background: #f0eeea;
      display: grid;
      place-items: center;
      color: #5a5a6e;
      transition: 0.2s;
    }
    .footer-grid .brand-col .socials a:hover {
      background: #c76b4a;
      color: #fff;
    }
    .footer-grid .col h5 {
      font-weight: 700;
      font-size: 0.9rem;
      margin-bottom: 10px;
    }
    .footer-grid .col ul {
      list-style: none;
      display: flex;
      flex-direction: column;
      gap: 4px;
    }
    .footer-grid .col ul a {
      color: #5a5a6e;
      font-size: 0.9rem;
      transition: 0.2s;
    }
    .footer-grid .col ul a:hover {
      color: #c76b4a;
    }
    .footer-bottom {
      text-align: center;
      padding-top: 16px;
      border-top: 1px solid rgba(0,0,0,0.04);
      color: #8a8a9e;
      font-size: 0.8rem;
    }

    @media (max-width: 1024px) {
      .products-grid { grid-template-columns: repeat(3,1fr); }
      .categories-grid { grid-template-columns: repeat(3,1fr); }
      .footer-grid { grid-template-columns: 1fr 1fr; }
    }
    @media (max-width: 820px) {
      .hero { margin: 12px 12px 0; min-height: 280px; padding: 32px 0; }
      .hero h1 { font-size: 2rem; }
      .deal-wrap { flex-direction: column; }
      .deal-wrap .deal-img { flex: 0 0 200px; }
      .deal-wrap .deal-content { padding: 24px; }
      .newsletter-wrap { padding: 28px 24px; flex-direction: column; text-align: center; }
      .newsletter-wrap form { max-width: 100%; }
      nav.desktop-nav { display: none; }
      .mobile-toggle { display: grid; place-items: center; }
      .search-wrap { min-width: 120px; }
    }
    @media (max-width: 600px) {
      .products-grid { grid-template-columns: 1fr 1fr; gap: 12px; }
      .categories-grid { grid-template-columns: 1fr 1fr; gap: 10px; }
      .hero h1 { font-size: 1.6rem; }
      .section { padding: 28px 0; }
      .section-header h2 { font-size: 1.3rem; }
      .footer-grid { grid-template-columns: 1fr; gap: 18px; }
      .timer-box { min-width: 44px; padding: 4px 8px; }
      .timer-box .num { font-size: 1rem; }
      .deal-wrap .deal-content .price-big { font-size: 1.4rem; }
      .container { padding: 0 12px; }
      .product-card .body h5 { font-size: 0.85rem; }
    }
  </style>
</head>
<body>
<header>
  <div class="container header-inner">
    <div style="display:flex;align-items:center;gap:10px;">
      <button class="mobile-toggle" id="mobileToggle" aria-label="Menu"><i class="fas fa-bars"></i></button>
      <a class="brand" href="#"><i class="fas fa-store-alt"></i> Nexus<span class="accent">Shop</span></a>
    </div>
    <nav class="desktop-nav" aria-label="Main">
      <ul>
        <li><a href="#" class="active"><i class="fas fa-home"></i> Home</a></li>
        <li><a href="#categories"><i class="fas fa-th"></i> Categories</a></li>
        <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
        <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
        <li><a href="#testimonials"><i class="fas fa-star"></i> Reviews</a></li>
      </ul>
    </nav>
    <div style="display:flex;align-items:center;gap:8px;">
      <div class="search-wrap">
        <input type="search" id="searchInput" placeholder="Search..." aria-label="Search">
        <button id="searchBtn"><i class="fas fa-search"></i></button>
      </div>
      <div class="header-actions">
        <button class="icon-btn" aria-label="Account"><i class="far fa-user"></i></button>
        <button class="icon-btn" aria-label="Wishlist"><i class="far fa-heart"></i></button>
        <div class="cart-wrap">
          <button class="icon-btn" id="cartBtn" aria-label="Cart"><i class="fas fa-shopping-bag"></i></button>
          <span class="cart-count" id="cartCount">0</span>
        </div>
      </div>
    </div>
  </div>
  <div id="mobileMenu">
    <div class="container">
      <ul>
        <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
        <li><a href="#categories"><i class="fas fa-th"></i> Categories</a></li>
        <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
        <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
        <li><a href="#testimonials"><i class="fas fa-star"></i> Reviews</a></li>
        <li><a href="#"><i class="far fa-user"></i> Account</a></li>
      </ul>
    </div>
  </div>
</header>

<main>
  <section class="hero" aria-label="Hero">
    <div class="container">
      <div class="tag"><i class="fas fa-sparkles"></i> New collection 2026</div>
      <h1>Premium goods,<br>simple joy</h1>
      <p>Curated fashion, tech & accessories – free shipping on first order.</p>
      <div class="actions">
        <button class="btn btn-accent" id="shopNow"><i class="fas fa-arrow-right"></i> Shop now</button>
        <button class="btn btn-outline-light" id="exploreDeals"><i class="fas fa-clock"></i> Explore deals</button>
      </div>
    </div>
  </section>

  <section class="section" id="categories">
    <div class="container">
      <div class="section-header">
        <div><h2>Categories</h2><p>Find what you love</p></div>
        <a href="#" class="view-all">All <i class="fas fa-arrow-right"></i></a>
      </div>
      <div class="categories-grid" id="categoriesGrid"></div>
    </div>
  </section>

  <section class="section" id="products">
    <div class="container">
      <div class="section-header">
        <div><h2>🔥 Trending now</h2><p>What’s hot this week</p></div>
        <a href="#" class="view-all">View all <i class="fas fa-arrow-right"></i></a>
      </div>
      <div class="products-grid" id="productsGrid"></div>
    </div>
  </section>

  <section class="section" id="deals">
    <div class="container">
      <div class="section-header"><div><h2>⚡ Flash deal</h2><p>Hurry, limited stock</p></div></div>
      <div class="deal-wrap">
        <div class="deal-img"><img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=800&q=80" alt="MacBook Air" loading="lazy"></div>
        <div class="deal-content">
          <span class="tag"><i class="fas fa-bolt"></i> Limited offer</span>
          <h3>MacBook Air M2</h3>
          <p class="desc">Thin, light, powerful – the M2 chip redefines performance.</p>
          <div><span class="price-big">$999 <span class="old">$1,199</span></span></div>
          <p class="stock">Only <strong>12</strong> items left – grab yours!</p>
          <div class="timer-grid" id="dealTimer">
            <div class="timer-box"><div class="num" id="dealDays">0</div><div class="label">Days</div></div>
            <div class="timer-box"><div class="num" id="dealHours">00</div><div class="label">Hrs</div></div>
            <div class="timer-box"><div class="num" id="dealMinutes">00</div><div class="label">Min</div></div>
            <div class="timer-box"><div class="num" id="dealSeconds">00</div><div class="label">Sec</div></div>
          </div>
          <button class="btn btn-accent" id="buyDeal"><i class="fas fa-cart-plus"></i> Add to cart</button>
        </div>
      </div>
    </div>
  </section>

  <section class="section" id="testimonials">
    <div class="container">
      <div class="section-header"><div><h2>⭐ What our customers say</h2><p>Real reviews from real people</p></div></div>
      <div class="testimonials-scroll" id="testimonialsList"></div>
    </div>
  </section>

  <section class="section">
    <div class="container">
      <div class="newsletter-wrap">
        <div><h3>Stay in the loop</h3><p>Exclusive offers & early access</p></div>
        <form id="newsletterForm" onsubmit="return false;">
          <input type="email" id="newsletterEmail" placeholder="Your email" aria-label="Email" required>
          <button class="btn" id="subscribeBtn"><i class="fas fa-paper-plane"></i> Subscribe</button>
          <div id="newsletterMsg"></div>
        </form>
      </div>
    </div>
  </
