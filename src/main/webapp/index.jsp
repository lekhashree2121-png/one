<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>NexusShop · warm & earthy</title>
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
      background: #f6f2eb;
      color: #2d2a24;
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

    /* buttons — warm clay & olive */
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
      background: #6b4f3c;
      color: #fefcf7;
      border-color: #6b4f3c;
    }
    .btn-primary:hover {
      background: #554030;
      transform: translateY(-2px);
      box-shadow: 0 8px 20px rgba(107, 79, 60, 0.2);
    }
    .btn-accent {
      background: #b87c5a;
      color: #fefcf7;
      border-color: #b87c5a;
    }
    .btn-accent:hover {
      background: #a06948;
      transform: translateY(-2px);
      box-shadow: 0 8px 24px rgba(184, 124, 90, 0.25);
    }
    .btn-outline-light {
      background: rgba(255, 252, 247, 0.10);
      color: #fefcf7;
      border-color: rgba(255, 252, 247, 0.25);
    }
    .btn-outline-light:hover {
      background: rgba(255, 252, 247, 0.20);
      border-color: rgba(255, 252, 247, 0.5);
      transform: translateY(-2px);
    }
    .btn-sm {
      padding: 6px 16px;
      font-size: 0.85rem;
    }

    /* header — warm white */
    header {
      position: sticky;
      top: 0;
      z-index: 50;
      background: rgba(252, 248, 240, 0.92);
      backdrop-filter: blur(12px);
      -webkit-backdrop-filter: blur(12px);
      border-bottom: 1px solid rgba(107, 79, 60, 0.06);
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
      color: #3d342b;
    }
    .brand i {
      color: #b87c5a;
      font-size: 1.5rem;
    }
    .brand span.accent {
      color: #b87c5a;
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
      color: #6b5f53;
      transition: all 0.15s;
    }
    nav.desktop-nav a:hover,
    nav.desktop-nav a.active {
      background: #e6ddd2;
      color: #2d2a24;
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
      color: #6b5f53;
      transition: 0.2s;
      font-size: 1.1rem;
    }
    .icon-btn:hover {
      background: #e6ddd2;
      color: #2d2a24;
    }
    .cart-wrap {
      position: relative;
    }
    .cart-count {
      position: absolute;
      top: -4px;
      right: -4px;
      background: #b87c5a;
      color: #fefcf7;
      font-size: 0.7rem;
      font-weight: 700;
      width: 18px;
      height: 18px;
      border-radius: 50%;
      display: grid;
      place-items: center;
      border: 2px solid #fcf8f0;
    }
    .search-wrap {
      display: flex;
      align-items: center;
      background: #ece4d9;
      border-radius: 60px;
      padding: 0 12px 0 18px;
      border: 2px solid transparent;
      transition: 0.2s;
      min-width: 180px;
    }
    .search-wrap:focus-within {
      border-color: #b87c5a;
      background: #fefcf7;
      box-shadow: 0 0 0 4px rgba(184, 124, 90, 0.10);
    }
    .search-wrap input {
      border: 0;
      background: transparent;
      padding: 8px 0;
      width: 100%;
      outline: none;
      font-size: 0.9rem;
      color: #2d2a24;
    }
    .search-wrap input::placeholder {
      color: #9a8b7c;
    }
    .search-wrap button {
      padding: 6px 0 6px 8px;
      color: #7a6b5c;
      transition: 0.2s;
    }
    .search-wrap button:hover {
      color: #b87c5a;
    }
    .mobile-toggle {
      display: none;
      width: 40px;
      height: 40px;
      border-radius: 50%;
      background: #ece4d9;
      font-size: 1.2rem;
      color: #2d2a24;
    }
    #mobileMenu {
      display: none;
      background: #fcf8f0;
      border-top: 1px solid rgba(107, 79, 60, 0.06);
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
      color: #2d2a24;
    }
    #mobileMenu a:hover {
      background: #ece4d9;
    }
    #mobileMenu a i {
      width: 24px;
      color: #7a6b5c;
    }

    /* hero — deep earth */
    .hero {
      position: relative;
      border-radius: 24px;
      overflow: hidden;
      margin: 18px 20px 0;
      background: linear-gradient(145deg, #3d342b, #5a4a3a);
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
      opacity: 0.12;
      z-index: 0;
    }
    .hero .container {
      position: relative;
      z-index: 1;
    }
    .hero .tag {
      display: inline-block;
      background: rgba(184, 124, 90, 0.25);
      color: #e3cdbb;
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
      color: #fefcf7;
      line-height: 1.1;
      max-width: 600px;
      margin-bottom: 12px;
      letter-spacing: -0.5px;
    }
    .hero p {
      color: rgba(254, 252, 247, 0.8);
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
      color: #2d2a24;
    }
    .section-header p {
      color: #7a6b5c;
      margin-top: 2px;
      font-size: 0.95rem;
    }
    .view-all {
      font-weight: 600;
      color: #b87c5a;
      display: flex;
      align-items: center;
      gap: 6px;
      font-size: 0.9rem;
      white-space: nowrap;
      transition: 0.2s;
    }
    .view-all:hover {
      gap: 12px;
      color: #a06948;
    }

    /* categories — soft cards */
    .categories-grid {
      display: grid;
      grid-template-columns: repeat(6, 1fr);
      gap: 14px;
    }
    .cat-card {
      background: #fcf8f0;
      border-radius: 18px;
      padding: 20px 12px;
      text-align: center;
      box-shadow: 0 4px 16px rgba(107, 79, 60, 0.04);
      transition: 0.2s;
      border: 2px solid transparent;
      cursor: default;
    }
    .cat-card:hover {
      transform: translateY(-4px);
      box-shadow: 0 12px 28px rgba(107, 79, 60, 0.06);
      border-color: #dacfc2;
    }
    .cat-card .icon {
      width: 52px;
      height: 52px;
      background: #ece4d9;
      border-radius: 50%;
      display: grid;
      place-items: center;
      margin: 0 auto 10px;
      font-size: 1.4rem;
      color: #b87c5a;
      transition: 0.2s;
    }
    .cat-card:hover .icon {
      background: #b87c5a;
      color: #fefcf7;
    }
    .cat-card h4 {
      font-size: 0.9rem;
      font-weight: 600;
      color: #2d2a24;
    }
    .cat-card .count {
      font-size: 0.8rem;
      color: #9a8b7c;
    }

    /* products — warm cards */
    .products-grid {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: 18px;
    }
    .product-card {
      background: #fcf8f0;
      border-radius: 18px;
      overflow: hidden;
      box-shadow: 0 4px 16px rgba(107, 79, 60, 0.04);
      transition: 0.2s;
      border: 2px solid transparent;
      display: flex;
      flex-direction: column;
    }
    .product-card:hover {
      transform: translateY(-4px);
      box-shadow: 0 12px 32px rgba(107, 79, 60, 0.08);
      border-color: #dacfc2;
    }
    .product-card .img-wrap {
      position: relative;
      background: #ece4d9;
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
      background: #b87c5a;
      color: #fefcf7;
      padding: 2px 12px;
      border-radius: 40px;
      font-size: 0.7rem;
      font-weight: 700;
      letter-spacing: 0.3px;
    }
    .product-card .badge.sale {
      background: #c9a87c;
      color: #2d2a24;
    }
    .product-card .wish-btn {
      position: absolute;
      top: 12px;
      right: 12px;
      width: 34px;
      height: 34px;
      border-radius: 50%;
      background: rgba(252, 248, 240, 0.9);
      backdrop-filter: blur(4px);
      display: grid;
      place-items: center;
      color: #7a6b5c;
      transition: 0.2s;
      font-size: 0.95rem;
    }
    .product-card .wish-btn:hover {
      background: #fefcf7;
      color: #b87c5a;
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
      color: #9a8b7c;
      font-weight: 600;
    }
    .product-card .body h5 {
      font-size: 0.95rem;
      font-weight: 600;
      margin: 4px 0 2px;
      line-height: 1.3;
      color: #2d2a24;
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
      color: #2d2a24;
    }
    .product-card .body .old-price {
      color: #9a8b7c;
      text-decoration: line-through;
      font-size: 0.85rem;
    }
    .product-card .body .rating {
      display: flex;
      align-items: center;
      gap: 4px;
      font-size: 0.85rem;
      color: #c9a87c;
      margin-top: 4px;
    }
    .product-card .body .rating span {
      color: #7a6b5c;
    }
    .product-card .footer {
      padding: 0 14px 14px;
    }
    .product-card .footer .add-btn {
      width: 100%;
      padding: 8px;
      border-radius: 40px;
      background: #6b4f3c;
      color: #fefcf7;
      font-weight: 600;
      font-size: 0.85rem;
      transition: 0.2s;
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 6px;
    }
    .product-card .footer .add-btn:hover {
      background: #b87c5a;
    }
    .product-card .footer .add-btn.added {
      background: #5f7a6b;
    }

    /* deal — earth tones */
    .deal-wrap {
      display: flex;
      background: #fcf8f0;
      border-radius: 24px;
      overflow: hidden;
      box-shadow: 0 4px 20px rgba(107, 79, 60, 0.04);
    }
    .deal-wrap .deal-img {
      flex: 0 0 44%;
      background: #ece4d9;
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
      background: #c9a87c;
      padding: 4px 14px;
      border-radius: 60px;
      font-size: 0.7rem;
      font-weight: 700;
      text-transform: uppercase;
      letter-spacing: 0.4px;
      color: #2d2a24;
      margin-bottom: 10px;
    }
    .deal-wrap .deal-content h3 {
      font-size: 1.5rem;
      font-weight: 700;
      color: #2d2a24;
    }
    .deal-wrap .deal-content .desc {
      color: #6b5f53;
      margin: 4px 0 12px;
    }
    .deal-wrap .deal-content .price-big {
      font-size: 1.8rem;
      font-weight: 800;
      color: #2d2a24;
    }
    .deal-wrap .deal-content .price-big .old {
      font-size: 1rem;
      font-weight: 400;
      color: #9a8b7c;
      text-decoration: line-through;
      margin-left: 8px;
    }
    .deal-wrap .deal-content .stock {
      font-size: 0.9rem;
      color: #6b5f53;
      margin: 4px 0 14px;
    }
    .deal-wrap .deal-content .stock strong {
      color: #b87c5a;
    }
    .timer-grid {
      display: flex;
      gap: 10px;
      margin: 6px 0 16px;
    }
    .timer-box {
      background: #2d2a24;
      color: #fefcf7;
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
      background: #dacfc2;
      border-radius: 20px;
    }
    .testimonial-card {
      flex: 0 0 300px;
      background: #fcf8f0;
      border-radius: 18px;
      padding: 20px 22px;
      box-shadow: 0 4px 16px rgba(107, 79, 60, 0.04);
      scroll-snap-align: start;
      transition: 0.2s;
    }
    .testimonial-card:hover {
      box-shadow: 0 12px 32px rgba(107, 79, 60, 0.06);
    }
    .testimonial-card .stars {
      color: #c9a87c;
      letter-spacing: 2px;
      font-size: 0.9rem;
      margin-bottom: 6px;
    }
    .testimonial-card blockquote {
      font-style: italic;
      font-size: 0.95rem;
      color: #3d342b;
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
      background: #ece4d9;
    }
    .testimonial-card .author .name {
      font-weight: 600;
      font-size: 0.9rem;
      color: #2d2a24;
    }
    .testimonial-card .author .role {
      font-size: 0.8rem;
      color: #7a6b5c;
    }

    /* newsletter — deep earth */
    .newsletter-wrap {
      background: #3d342b;
      border-radius: 24px;
      padding: 40px 44px;
      color: #fefcf7;
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
      opacity: 0.75;
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
      background: rgba(254, 252, 247, 0.08);
      color: #fefcf7;
      outline: 2px solid transparent;
      transition: 0.2s;
    }
    .newsletter-wrap input::placeholder {
      color: rgba(254, 252, 247, 0.4);
    }
    .newsletter-wrap input:focus {
      outline-color: #b87c5a;
      background: rgba(254, 252, 247, 0.14);
    }
    .newsletter-wrap .btn {
      background: #b87c5a;
      color: #fefcf7;
      border-color: #b87c5a;
    }
    .newsletter-wrap .btn:hover {
      background: #a06948;
      border-color: #a06948;
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
      border-top: 1px solid rgba(107, 79, 60, 0.06);
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
      color: #2d2a24;
    }
    .footer-grid .brand-col p {
      color: #6b5f53;
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
      background: #ece4d9;
      display: grid;
      place-items: center;
      color: #6b5f53;
      transition: 0.2s;
    }
    .footer-grid .brand-col .socials a:hover {
      background: #b87c5a;
      color: #fefcf7;
    }
    .footer-grid .col h5 {
      font-weight: 700;
      font-size: 0.9rem;
      margin-bottom: 10px;
      color: #2d2a24;
    }
    .footer-grid .col ul {
      list-style: none;
      display: flex;
      flex-direction: column;
      gap: 4px;
    }
    .footer-grid .col ul a {
      color: #6b5f53;
      font-size: 0.9rem;
      transition: 0.2s;
    }
    .footer-grid .col ul a:hover {
      color: #b87c5a;
    }
    .footer-bottom {
      text-align: center;
      padding-top: 16px;
      border-top: 1px solid rgba(107, 79, 60, 0.06);
      color: #9a8b7c;
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
  </section>
</main>

<footer>
  <div class="container">
    <div class="footer-grid">
      <div class="brand-col">
        <div class="brand"><i class="fas fa-store-alt"></i> Nexus<span class="accent">Shop</span></div>
        <p>Modern e‑commerce with a warm, earthy feel. Quality products, seamless experience.</p>
        <div class="socials">
          <a href="#" aria-label="Facebook"><i class="fab fa-facebook-f"></i></a>
          <a href="#" aria-label="Twitter"><i class="fab fa-twitter"></i></a>
          <a href="#" aria-label="Instagram"><i class="fab fa-instagram"></i></a>
          <a href="#" aria-label="YouTube"><i class="fab fa-youtube"></i></a>
        </div>
      </div>
      <div class="col"><h5>Company</h5><ul><li><a href="#">About</a></li><li><a href="#">Careers</a></li><li><a href="#">Press</a></li><li><a href="#">Blog</a></li></ul></div>
      <div class="col"><h5>Support</h5><ul><li><a href="#">Help Center</a></li><li><a href="#">Shipping</a></li><li><a href="#">Returns</a></li><li><a href="#">Contact</a></li></ul></div>
      <div class="col"><h5>Legal</h5><ul><li><a href="#">Privacy</a></li><li><a href="#">Terms</a></li><li><a href="#">Cookies</a></li></ul></div>
    </div>
    <div class="footer-bottom">&copy; <span id="year"></span> NexusShop. All rights reserved.</div>
  </div>
</footer>

<script>
  // ----- DATA -----
  const CATEGORIES = [
    { id: 'phones', name: 'Smartphones', icon: 'fa-mobile-alt', count: 24 },
    { id: 'laptops', name: 'Laptops', icon: 'fa-laptop', count: 18 },
    { id: 'clothing', name: 'Clothing', icon: 'fa-tshirt', count: 42 },
    { id: 'gadgets', name: 'Gadgets', icon: 'fa-headphones', count: 31 },
    { id: 'footwear', name: 'Footwear', icon: 'fa-shoe-prints', count: 27 },
    { id: 'accessories', name: 'Accessories', icon: 'fa-watch', count: 39 }
  ];
  const PRODUCTS = [
    { id: 1, title: 'iPhone 14 Pro Max', price: 1099, oldPrice: 1199, rating: 5, reviews: 128, badge: 'New', img: 'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80', category: 'Smartphones' },
    { id: 2, title: 'MacBook Pro 14"', price: 1999, rating: 4, reviews: 86, badge: '', img: 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80', category: 'Laptops' },
    { id: 3, title: 'Apple Watch Series 8', price: 349, oldPrice: 399, rating: 5, reviews: 214, badge: 'Sale', img: 'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=600&q=80', category: 'Accessories' },
    { id: 4, title: 'Nike Air Max 270', price: 150, rating: 4, reviews: 53, badge: '', img: 'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=600&q=80', category: 'Footwear' },
    { id: 5, title: 'Sony A7 IV Camera', price: 2499, rating: 5, reviews: 42, badge: 'New', img: 'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=600&q=80', category: 'Gadgets' },
    { id: 6, title: 'Chanel No. 5', price: 120, rating: 5, reviews: 189, badge: '', img: 'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=600&q=80', category: 'Accessories' },
    { id: 7, title: 'Travel Backpack', price: 79, oldPrice: 99, rating: 4, reviews: 67, badge: 'Sale', img: 'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=600&q=80', category: 'Accessories' },
    { id: 8, title: 'Sony WH-1000XM5', price: 399, rating: 5, reviews: 156, badge: '', img: 'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=600&q=80', category: 'Gadgets' }
  ];
  const TESTIMONIALS = [
    { name: 'Ava Martin', role: 'Verified Buyer', avatar: 'https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80', text: 'Fast shipping and excellent support. The product exceeded my expectations!', stars: 5 },
    { name: 'Michael Lee', role: 'Frequent Shopper', avatar: 'https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=80&q=80', text: 'Great selection and smooth checkout. Will definitely shop again.', stars: 4 },
    { name: 'Sophia Chen', role: 'Designer', avatar: 'https://images.unsplash.com/photo-1494790108378-be9c29b29330?auto=format&fit=crop&w=80&q=80', text: 'Love the quality and the packaging. Everything arrived in perfect condition.', stars: 5 },
    { name: 'James Wilson', role: 'Tech Enthusiast', avatar: 'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?auto=format&fit=crop&w=80&q=80', text: 'Amazing prices on electronics. The M2 MacBook deal was unbeatable.', stars: 5 }
  ];

  let cartCount = 0;

  // DOM refs
  const categoriesGrid = document.getElementById('categoriesGrid');
  const productsGrid = document.getElementById('productsGrid');
  const cartCountEl = document.getElementById('cartCount');
  const searchInput = document.getElementById('searchInput');
  const searchBtn = document.getElementById('searchBtn');
  const mobileToggle = document.getElementById('mobileToggle');
  const mobileMenu = document.getElementById('mobileMenu');
  const newsletterForm = document.getElementById('newsletterForm');
  const newsletterEmail = document.getElementById('newsletterEmail');
  const newsletterMsg = document.getElementById('newsletterMsg');
  const testimonialsList = document.getElementById('testimonialsList');

  function escapeHtml(text) {
    return String(text).replace(/[&<>"']/g, s => ({ '&':'&amp;', '<':'&lt;', '>':'&gt;', '"':'&quot;', "'":'&#39;' }[s]));
  }

  function renderCategories() {
    categoriesGrid.innerHTML = '';
    CATEGORIES.forEach(cat => {
      const el = document.createElement('div');
      el.className = 'cat-card';
      el.innerHTML = `<div class="icon"><i class="fas ${cat.icon}"></i></div><h4>${cat.name}</h4><div class="count">${cat.count} items</div>`;
      el.addEventListener('click', () => { searchInput.value = cat.name; filterProducts(cat.name); document.getElementById('products').scrollIntoView({ behavior: 'smooth', block: 'start' }); });
      categoriesGrid.appendChild(el);
    });
  }

  function renderProducts(list) {
    productsGrid.innerHTML = '';
    if (!list.length) { productsGrid.innerHTML = `<p style="grid-column:1/-1;text-align:center;padding:40px;color:#7a6b5c;">No products found.</p>`; return; }
    list.forEach(p => {
      const el = document.createElement('article');
      el.className = 'product-card';
      const badgeClass = p.badge === 'Sale' ? 'sale' : '';
      const badgeHtml = p.badge ? `<span class="badge ${badgeClass}">${p.badge}</span>` : '';
      const oldPriceHtml = p.oldPrice ? `<span class="old-price">$${p.oldPrice.toLocaleString()}</span>` : '';
      const stars = '★'.repeat(Math.round(p.rating)) + '☆'.repeat(5 - Math.round(p.rating));
      el.innerHTML = `
        <div class="img-wrap"><img src="${p.img}" alt="${escapeHtml(p.title)}" loading="lazy">${badgeHtml}<button class="wish-btn" aria-label="Wishlist"><i class="far fa-heart"></i></button></div>
        <div class="body"><div class="cat-tag">${p.category}</div><h5>${escapeHtml(p.title)}</h5><div class="price-row"><span class="price">$${p.price.toLocaleString()}</span>${oldPriceHtml}</div><div class="rating">${stars} <span>(${p.reviews})</span></div></div>
        <div class="footer"><button class="add-btn" data-id="${p.id}"><i class="fas fa-cart-plus"></i> Add</button></div>
      `;
      productsGrid.appendChild(el);
    });
    productsGrid.querySelectorAll('.add-btn').forEach(btn => {
      btn.addEventListener('click', function(e) {
        e.stopPropagation();
        const id = Number(this.dataset.id);
        addToCart(id, this);
      });
    });
  }

  function renderTestimonials() {
    testimonialsList.innerHTML = '';
    TESTIMONIALS.forEach(t => {
      const stars = '★'.repeat(t.stars) + '☆'.repeat(5 - t.stars);
      const el = document.createElement('div');
      el.className = 'testimonial-card';
      el.innerHTML = `<div class="stars">${stars}</div><blockquote>“${escapeHtml(t.text)}”</blockquote><div class="author"><img src="${t.avatar}" alt="${escapeHtml(t.name)}" loading="lazy"><div><div class="name">${escapeHtml(t.name)}</div><div class="role">${escapeHtml(t.role)}</div></div></div>`;
      testimonialsList.appendChild(el);
    });
  }

  function updateCartCount() {
    cartCountEl.textContent = cartCount;
    cartCountEl.style.transform = 'scale(1.3)';
    setTimeout(() => cartCountEl.style.transform = 'scale(1)', 200);
  }

  function addToCart(productId, btnEl) {
    const p = PRODUCTS.find(x => x.id === productId);
    if (!p) return;
    cartCount++;
    updateCartCount();
    if (btnEl) {
      const orig = btnEl.innerHTML;
      btnEl.innerHTML = '<i class="fas fa-check"></i> Added';
      btnEl.classList.add('added');
      setTimeout(() => { btnEl.innerHTML = orig; btnEl.classList.remove('added'); }, 1500);
    }
  }

  function filterProducts(query) {
    const q = String(query || '').trim().toLowerCase();
    if (!q) { renderProducts(PRODUCTS); return; }
    const filtered = PRODUCTS.filter(p => p.title.toLowerCase().includes(q) || p.category.toLowerCase().includes(q));
    renderProducts(filtered);
  }

  // Deal timer
  (function setupDealTimer() {
    const now = new Date();
    const target = new Date(now.getTime() + (24 * 60 + 36) * 60 * 1000);
    function tick() {
      const diff = target - new Date();
      if (diff <= 0) {
        document.getElementById('dealDays').textContent = '0';
        document.getElementById('dealHours').textContent = '00';
        document.getElementById('dealMinutes').textContent = '00';
        document.getElementById('dealSeconds').textContent = '00';
        return;
      }
      const days = Math.floor(diff / (24*3600*1000));
      const hours = Math.floor((diff % (24*3600*1000)) / (3600*1000));
      const mins = Math.floor((diff % (3600*1000)) / (60*1000));
      const secs = Math.floor((diff % (60*1000)) / 1000);
      document.getElementById('dealDays').textContent = days;
      document.getElementById('dealHours').textContent = String(hours).padStart(2, '0');
      document.getElementById('dealMinutes').textContent = String(mins).padStart(2, '0');
      document.getElementById('dealSeconds').textContent = String(secs).padStart(2, '0');
    }
    tick();
    setInterval(tick, 1000);
  })();

  // Events
  searchBtn.addEventListener('click', () => filterProducts(searchInput.value));
  searchInput.addEventListener('keydown', e => { if (e.key === 'Enter') filterProducts(e.target.value); });

  mobileToggle.addEventListener('click', () => {
    const isOpen = mobileMenu.style.display === 'block';
    mobileMenu.style.display = isOpen ? 'none' : 'block';
    mobileToggle.innerHTML = isOpen ? '<i class="fas fa-bars"></i>' : '<i class="fas fa-times"></i>';
  });
  mobileMenu.querySelectorAll('a').forEach(link => link.addEventListener('click', () => {
    mobileMenu.style.display = 'none';
    mobileToggle.innerHTML = '<i class="fas fa-bars"></i>';
  }));

  document.getElementById('shopNow').addEventListener('click', () => document.getElementById('products').scrollIntoView({ behavior: 'smooth' }));
  document.getElementById('exploreDeals').addEventListener('click', () => document.getElementById('deals').scrollIntoView({ behavior: 'smooth' }));

  document.getElementById('buyDeal').addEventListener('click', function() {
    cartCount++;
    updateCartCount();
    const orig = this.innerHTML;
    this.innerHTML = '<i class="fas fa-check"></i> Added!';
    this.style.background = '#5f7a6b';
    setTimeout(() => { this.innerHTML = orig; this.style.background = ''; }, 1600);
  });

  newsletterForm.addEventListener('submit', (e) => {
    e.preventDefault();
    const email = newsletterEmail.value.trim();
    if (!email || !email.includes('@')) {
      newsletterMsg.textContent = 'Please enter a valid email.';
      newsletterMsg.style.color = '#d9b5a0';
      newsletterMsg.style.display = 'block';
      return;
    }
    newsletterMsg.textContent = '🎉 Thanks for subscribing!';
    newsletterMsg.style.color = '#b8c9b0';
    newsletterMsg.style.display = 'block';
    newsletterEmail.value = '';
    setTimeout(() => { newsletterMsg.style.display = 'none'; }, 3500);
  });

  document.getElementById('cartBtn').addEventListener('click', () => alert(`🛒 Your cart has ${cartCount} item${cartCount !== 1 ? 's' : ''}.`));
  document.getElementById('year').textContent = new Date().getFullYear();

  // Init
  renderCategories();
  renderProducts(PRODUCTS);
  renderTestimonials();
  updateCartCount();

  window.addEventListener('resize', () => {
    if (window.innerWidth > 820) { mobileMenu.style.display = 'none'; mobileToggle.innerHTML = '<i class="fas fa-bars"></i>'; }
  });
  console.log('🌿 NexusShop — warm earthy theme loaded.');
</script>
</body>
</html>
