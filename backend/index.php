<?php
$page_title       = 'Home';
$page_description = 'Find high-quality cars with flexible financing. Explore classics, EVs, luxury, trucks, and SUVs.';
$page_css         = 'index-style.css';
$page_js          = 'index.js';

require_once __DIR__ . '/includes/header.php';
require_once __DIR__ . '/functions/get_cars.php'; // for featured cars (new helper below)

// Minimal, maintainable slide list (add more as needed)
$slides = [
    ['src' => 'assets/images/jaguar-e-type.jpg',          'alt' => 'Jaguar E-Type'],
    ['src' => 'assets/images/tesla-model-s.jpg',          'alt' => 'Tesla Model S'],
    ['src' => 'assets/images/rolls-royce-phantom.jpg',    'alt' => 'Rolls-Royce Phantom'],
    ['src' => 'assets/images/lamborghini-huracan.jpg',    'alt' => 'Lamborghini Huracán'],
    ['src' => 'assets/images/ford-ranger.jpg',            'alt' => 'Ford Ranger PHEV'],
    ['src' => 'assets/images/bmw-ix3.jpg',                'alt' => 'BMW iX3'],
];
?>

<section class="herosection">
    <div class="hero-copy">
        <h1>Drive your dream car today</h1>
        <p>Find the best deals here right now.</p>
    </div>

    <div class="slides" aria-label="Featured models">
        <?php foreach ($slides as $s): ?>
            <img
                src="<?= htmlspecialchars($s['src']) ?>"
                alt="<?= htmlspecialchars($s['alt']) ?>"
                loading="lazy"
                decoding="async"
            >
        <?php endforeach; ?>

        <div class="explore-btn">
            <h2>Explore Our Collection</h2>
            <p>Discover a wide range of vehicles that suit your needs and budget.</p>
            <a href="car-explore.html"><button>Explore</button></a>
        </div>
    </div>
</section>

<section id="intro">
    <h2>Welcome to <b>Yonas Car Dealer</b></h2>
    <p>We offer high-quality cars with easy financing options.</p>
    <p>Find the perfect vehicle that fits your style and budget. Explore our latest inventory and unbeatable deals!</p>
</section>

<section id="about-us">
    <h2>Why choose us?</h2>
    <p>At <b>Yonas Car Dealer</b>, we offer top-quality vehicles, competitive financing, and exceptional customer service.</p>
    <ul>
        <li>Wide selection of new and used cars</li>
        <li>Hassle-free financing options</li>
        <li>Trusted by thousands of happy customers</li>
    </ul>
</section>

<section id="products" class="quick-links">
    <h2>Our products</h2>

    <div class="card-container">
        <section id="classic-cars" class="card">
            <a href="car-explore.php?category=Classic">
                <img src="assets/images/ford-mustang.jpg" alt="Classic Cars">
                <span>Classic Cars</span>
            </a>
        </section>

        <section id="electric-cars" class="card">
            <a href="car-explore.php?category=Electric">
                <img src="assets/images/bmw-ix3.jpg" alt="Electric Cars">
                <span>Electric Cars</span>
            </a>
        </section>

        <section id="luxury-cars" class="card">
            <a href="car-explore.php?category=Luxury">
                <img src="assets/images/bentley-continental.jpg" alt="Luxury Cars">
                <span>Luxury Cars</span>
            </a>
        </section>
    </div>

    <div class="card-container">
        <section id="exotic-cars" class="card">
            <a href="car-explore.php?category=Exotic">
                <img src="assets/images/aston-martin-vanquish.jpg" alt="Exotic Cars">
                <span>Exotic Cars</span>
            </a>
        </section>

        <section id="trucks" class="card">
            <a href="car-explore.php?category=Truck">
                <img src="assets/images/ford-f150.jpg" alt="Trucks">
                <span>Trucks</span>
            </a>
        </section>

        <section id="suvs" class="card">
            <a href="car-explore.php?category=SUV">
                <img src="assets/images/dacia-bigster.jpg" alt="SUVs">
                <span>SUVs</span>
            </a>
        </section>
    </div>
    <div class="card-container">
        <section id="all-cars" class="card">
            <a href="car-explore.php">
                <span class="browse-all">All Cars</span>
            </a>
        </section>
    </div>
</section>

<?php include __DIR__ . '/includes/footer.php'; ?>