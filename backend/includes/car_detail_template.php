<section id="<?= htmlspecialchars($car['id']) ?>" class="vehicle-section">
    <h2 class="section-title"><?= htmlspecialchars($car['name']) ?> (<?= htmlspecialchars($car['model_year']) ?>)</h2>

    <!-- Main Vehicle Image -->
    <?php if (!empty($car['main_image'])): ?>
        <div class="vehicle-main-image">
            <img src="<?= htmlspecialchars($car['main_image']) ?>" alt="<?= htmlspecialchars($car['name']) ?>">
        </div>
    <?php endif; ?>

    <!-- Image Gallery -->
    <?php if (!empty($car['gallery_images'])): ?>
        <section class="image-gallery">
            <h3><?= htmlspecialchars($car['name']) ?> - Image Gallery</h3>
            <div class="gallery-container">
                <?php foreach ($car['gallery_images'] as $img): ?>
                    <a href="<?= htmlspecialchars($img['image_path']) ?>" target="_blank">
                        <img src="<?= htmlspecialchars($img['image_path']) ?>" alt="<?= htmlspecialchars($img['caption']) ?>">
                    </a>
                    <span><?= htmlspecialchars($img['caption']) ?></span>
                <?php endforeach; ?>
            </div>
        </section>
    <?php endif; ?>

    <!-- Vehicle Overview -->
    <section class="vehicle-details">
        <h3>Vehicle Overview</h3>
        <ul>
            <li>Brand: <?= htmlspecialchars($car['brand']) ?></li>
            <li>Price: $<?= number_format($car['price'], 2) ?></li>
            <li>Category: <?= htmlspecialchars($car['category']) ?></li>
            <li>Condition: <?= nl2br(htmlspecialchars($car['condition'])) ?></li>
            <li>Ownership History: <?= nl2br(htmlspecialchars($car['ownership_history'])) ?></li>
            <li>VIN: <?= htmlspecialchars($car['vin']) ?></li>
            <li>Availability Status: <?= htmlspecialchars($car['availability_status']) ?></li>
        </ul>
    </section>

    <!-- Performance & Engine Specs -->
    <?php if (!empty($car['specs'])): ?>
        <section class="performance-specs">
            <h3>Performance & Engine Specs</h3>
            <ul>
                <?php foreach ($car['specs'] as $key => $value): ?>
                    <?php if ($key !== 'id' && $key !== 'car_id'): ?>
                        <li><?= ucfirst(str_replace('_', ' ', $key)) ?>: <?= htmlspecialchars($value) ?></li>
                    <?php endif; ?>
                <?php endforeach; ?>
            </ul>
        </section>
    <?php endif; ?>

    <!-- Safety Features -->
    <?php if (!empty($car['safety_features'])): ?>
        <section class="safety-features">
            <h3>Safety Features</h3>
            <ul>
                <?php foreach ($car['safety_features'] as $feature): ?>
                    <li><?= htmlspecialchars($feature) ?></li>
                <?php endforeach; ?>
            </ul>
        </section>
    <?php endif; ?>

    <!-- Technology & Interior -->
    <?php if (!empty($car['technology'])): ?>
        <section class="technology-interior">
            <h3>Technology & Interior</h3>
            <ul>
                <li>Infotainment: <?= nl2br(htmlspecialchars($car['technology']['infotainment'])) ?></li>
                <li>Interior: <?= nl2br(htmlspecialchars($car['technology']['interior'])) ?></li>
            </ul>
        </section>
    <?php endif; ?>

    <!-- Special Offers & Insurance -->
    <?php if (!empty($car['offers'])): ?>
        <section class="special-offers">
            <h3>Special Offers & Insurance</h3>
            <ul>
                <li>Insurance Options: <?= nl2br(htmlspecialchars($car['offers']['insurance_options'])) ?></li>
                <li>Available Colors: <?= nl2br(htmlspecialchars($car['offers']['available_colors'])) ?></li>
                <li>Customer Rating: <?= htmlspecialchars($car['offers']['customer_rating']) ?>/5</li>
            </ul>
        </section>
    <?php endif; ?>

    <!-- Contact for Inquiry -->
    <div class="contact-button">
        <a href="contact-us.php"><button>Contact for Inquiry</button></a>
    </div>

    <!-- Recommended Classic Cars -->
    <?php if (!empty($car['recommended'])): ?>
        <section class="recommended-cars">
            <h3>Recommended Classic Cars</h3>
            <div class="recommended-grid">
                <?php foreach ($car['recommended'] as $rec): ?>
                    <div class="vehicle">
                        <a href="car-details.php?id=<?= $rec['id'] ?>">
                            <img src="<?= htmlspecialchars($rec['main_image']) ?>" alt="<?= htmlspecialchars($rec['name']) ?>">
                            <p><?= htmlspecialchars($rec['brand']) ?> <?= htmlspecialchars($rec['name']) ?> | <?= htmlspecialchars($rec['model_year']) ?> | $<?= number_format($rec['price'], 2) ?></p>
                        </a>
                        <a href="car-details.php?id=<?= $rec['id'] ?>"><button>View Details</button></a>
                    </div>
                <?php endforeach; ?>
            </div>
        </section>
    <?php endif; ?>
</section>
