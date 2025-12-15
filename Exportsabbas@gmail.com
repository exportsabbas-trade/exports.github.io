index.html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Global Trade Hub</title>
  <meta name="description" content="A clean, professional import-export website focused on textiles, apparel, denim, and sports goods." />
  <style>
    :root {
      --primary: #1f3a8a;
      --secondary: #0f172a;
      --accent: #2563eb;
      --light: #f8fafc;
      --muted: #64748b;
    }

    * {
      box-sizing: border-box;
      margin: 0;
      padding: 0;
    }

    body {
      font-family: "Segoe UI", Roboto, Helvetica, Arial, sans-serif;
      background: var(--light);
      color: var(--secondary);
      line-height: 1.6;
    }

    header {
      background: linear-gradient(135deg, var(--primary), var(--accent));
      color: white;
      padding: 3rem 1.5rem;
      text-align: center;
    }

    header h1 {
      font-size: 2.5rem;
      margin-bottom: 0.5rem;
    }

    header p {
      font-size: 1.1rem;
      opacity: 0.95;
      max-width: 700px;
      margin: auto;
    }

    nav {
      background: white;
      display: flex;
      justify-content: center;
      gap: 2rem;
      padding: 1rem;
      box-shadow: 0 4px 10px rgba(0,0,0,0.05);
      position: sticky;
      top: 0;
      z-index: 10;
    }

    nav a {
      text-decoration: none;
      color: var(--secondary);
      font-weight: 600;
    }

    nav a:hover {
      color: var(--accent);
    }

    .container {
      max-width: 1100px;
      margin: auto;
      padding: 3rem 1.5rem;
    }

    .section-title {
      text-align: center;
      margin-bottom: 2rem;
    }

    .section-title h2 {
      font-size: 2rem;
      margin-bottom: 0.5rem;
    }

    .section-title p {
      color: var(--muted);
      max-width: 700px;
      margin: auto;
    }

    .grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
      gap: 1.5rem;
    }

    .card {
      background: white;
      border-radius: 14px;
      padding: 1.8rem;
      box-shadow: 0 15px 30px rgba(0,0,0,0.08);
      transition: transform 0.2s ease, box-shadow 0.2s ease;
    }

    .card:hover {
      transform: translateY(-4px);
      box-shadow: 0 20px 40px rgba(0,0,0,0.12);
    }

    .card h3 {
      margin-bottom: 0.6rem;
    }

    .card p {
      color: var(--muted);
      font-size: 0.95rem;
    }

    .highlight {
      background: #eef2ff;
      border-left: 5px solid var(--accent);
      padding: 1.5rem;
      border-radius: 10px;
    }

    .btn {
      display: inline-block;
      margin-top: 1rem;
      background: var(--accent);
      color: white;
      padding: 0.7rem 1.4rem;
      border-radius: 10px;
      text-decoration: none;
      font-weight: 600;
    }

    .btn:hover {
      opacity: 0.9;
    }

    footer {
      background: var(--secondary);
      color: #cbd5f5;
      padding: 2rem 1.5rem;
      text-align: center;
      margin-top: 3rem;
    }

    footer p {
      font-size: 0.9rem;
      opacity: 0.9;
    }

    @media (max-width: 600px) {
      header h1 {
        font-size: 2rem;
      }
    }
  </style>
</head>
<body>

  <header>
    <h1>Global Trade Hub</h1>
    <p>Connecting international markets through reliable import and export solutions for textiles, apparel, denim, and sports goods.</p>
  </header>

  <nav>
    <a href="#about">About</a>
    <a href="#products">Products</a>
    <a href="#services">Services</a>
    <a href="#contact">Contact</a>
  </nav>

  <section id="about" class="container">
    <div class="section-title">
      <h2>About Us</h2>
      <p>We are a global import-export platform focused on building long-term trade relationships across international markets.</p>
    </div>

    <div class="highlight">
      <p>
        Our expertise lies in sourcing, supplying, and distributing high-quality goods with a strong focus on compliance, consistency, and timely delivery. We work with trusted manufacturers and buyers worldwide to ensure smooth and transparent trade operations.
      </p>
    </div>
  </section>

  <section id="products" class="container">
    <div class="section-title">
      <h2>Product Categories</h2>
      <p>We specialize in high-demand goods across the textile and sports industries.</p>
    </div>

    <div class="grid">
      <div class="card">
        <h3>Textiles & Fabrics</h3>
        <p>Premium cotton, blended fabrics, knitted and woven textiles suitable for global apparel manufacturing.</p>
      </div>
      <div class="card">
        <h3>Denim & Jeans</h3>
        <p>High-quality denim fabrics and finished jeans with modern fits, washes, and export-ready packaging.</p>
      </div>
      <div class="card">
        <h3>Apparel & Clothing</h3>
        <p>Casual wear, formal garments, workwear, and seasonal collections produced to international standards.</p>
      </div>
      <div class="card">
        <h3>Sports Goods</h3>
        <p>Footballs, sportswear, training equipment, and accessories designed for durability and performance.</p>
      </div>
    </div>
  </section>

  <section id="services" class="container">
    <div class="section-title">
      <h2>Our Services</h2>
      <p>End-to-end trade solutions designed to simplify international business.</p>
    </div>

    <div class="grid">
      <div class="card">
        <h3>Import & Export Management</h3>
        <p>Complete handling of cross-border trade operations, documentation, and logistics coordination.</p>
      </div>
      <div class="card">
        <h3>Quality Control</h3>
        <p>Strict quality checks to ensure products meet buyer specifications and international standards.</p>
      </div>
      <div class="card">
        <h3>Global Sourcing</h3>
        <p>Connecting buyers with reliable manufacturers and suppliers across key production regions.</p>
      </div>
    </div>
  </section>

  <section id="contact" class="container">
    <div class="section-title">
      <h2>Contact Us</h2>
      <p>Reach out to discuss partnerships, sourcing, or export opportunities.</p>
    </div>

    <div class="card">
      <p><strong>Email:</strong> info@globaltradehub.com</p>
      <p><strong>Phone:</strong> +00 000 000 000</p>
      <p><strong>Business Hours:</strong> Monday – Friday, 9:00 AM – 6:00 PM</p>
      <a href="mailto:info@globaltradehub.com" class="btn">Get in Touch</a>
    </div>
  </section>

  <footer>
    <p>© 2025 Global Trade Hub. All rights reserved.</p>
    <p>International Import & Export | Textiles | Apparel | Sports Goods</p>
  </footer>

</body>
</html>
