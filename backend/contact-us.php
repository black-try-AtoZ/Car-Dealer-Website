<?php 
$page_title = 'Contact Us';
$page_css = 'contact-us.css';
include 'includes/header.php';

session_start();
$form_errors   = $_SESSION['form_errors'] ?? [];
$form_values   = $_SESSION['form_values'] ?? [];
$form_success  = $_SESSION['form_success'] ?? false;
unset($_SESSION['form_errors'], $_SESSION['form_values'], $_SESSION['form_success']);
?>

<!-- Contact Form Section -->
<section class="contact-form">
    <h2>Contact Us</h2>

    <?php if ($form_success): ?>
        <div class="form-success" role="status">
            ✅ Thank you for reaching out! We'll get back to you during business hours.
        </div>
    <?php endif; ?>

    <form method="POST" action="functions/send_message.php" novalidate aria-label="Contact form">
        <label for="name">
            Name: <span class="required">*</span>
            <?php if (!empty($form_errors['name'])): ?>
                <span class="inline-error" role="alert"><?= htmlspecialchars($form_errors['name']) ?></span>
            <?php endif; ?>
        </label>
        <input type="text" id="name" name="name" required
               placeholder="e.g., Jane Doe"
               value="<?= htmlspecialchars($form_values['name'] ?? '') ?>"
               aria-required="true">

        <label for="email">
            Email: <span class="required">*</span>
            <?php if (!empty($form_errors['email'])): ?>
                <span class="inline-error" role="alert"><?= htmlspecialchars($form_errors['email']) ?></span>
            <?php endif; ?>
        </label>
        <input type="email" id="email" name="email" required
               placeholder="e.g., jane@example.com"
               value="<?= htmlspecialchars($form_values['email'] ?? '') ?>"
               aria-required="true">

        <label for="phone">
            Phone: <span class="required">*</span>
            <?php if (!empty($form_errors['phone'])): ?>
                <span class="inline-error" role="alert"><?= htmlspecialchars($form_errors['phone']) ?></span>
            <?php endif; ?>
        </label>
        <input type="tel" id="phone" name="phone" required
               placeholder="e.g., 0912345678"
               value="<?= htmlspecialchars($form_values['phone'] ?? '') ?>"
               aria-required="true">

        <label for="message">Message:</label>
        <textarea id="message" name="message"
                  placeholder="Write your message here..."
                  aria-label="Message field"><?= htmlspecialchars($form_values['message'] ?? '') ?></textarea>

        <p class="privacy-note">🔒 We respect your privacy. Your information will not be shared.</p>

        <button type="submit">Submit</button>
    </form>
</section>

<!-- Contact Information Section -->
<section class="contact-info">
    <h2>Our Office & Contact Details</h2>
    <div class="info-grid">
        <div class="info-item">
            <h3>Office Location</h3>
            <p>Find our offices worldwide and pay us a visit.</p>
            <p><a target="_blank" href="https://maps.app.goo.gl/uGfyqa4bzVpqvZZU9">Head Office</a></p>
            <p><a target="_blank" href="https://maps.app.goo.gl/1c9dkQzK3W62jp7d7">Branch Office</a></p>
            <p><a target="_blank" href="https://maps.app.goo.gl/F4XJNjg2qfeBX3C59">Showroom</a></p>
        </div>
        <div class="info-item">
            <h3>Phone Numbers</h3>
            <p><a href="tel:+2511101106060">+2511101106060</a></p>
            <p><a href="tel:+2511101106061">+2511101106061</a></p>
            <p><a href="tel:+2511101106090">+2511101106090</a></p>
        </div>
        <div class="info-item">
            <h3>Business Hours</h3>
                <p>Monday–Friday: 9:00 AM – 6:00 PM</p>
                <p>Saturday: 10:00 AM – 4:00 PM</p>
                <p>Sunday: Closed</p>
        </div>
        <div class="info-item">
            <h3>Email</h3>
            <p><a href="mailto:yonascardealer@gmail.com">yonascardealer@gmail.com</a></p>
        </div>
    </div>
</section>

<!-- Location Map -->
<section class="map-section">
    <h2>Find Us Here</h2>
    <img src="assets/images/map.jpg" alt="Map location" usemap="#image-map">
    <map name="image-map">
        <area target="_blank" href="https://maps.app.goo.gl/uGfyqa4bzVpqvZZU9" coords="248,207,281,231" shape="rect">
        <area target="_blank" href="https://maps.app.goo.gl/1c9dkQzK3W62jp7d7" coords="317,218,353,243" shape="rect">
        <area target="_blank" href="https://maps.app.goo.gl/F4XJNjg2qfeBX3C59" coords="417,217,454,241" shape="rect">
    </map>
</section>

<?php if ($form_success): ?>
    <div id="success-toast" class="toast-success" role="status">
        ✅ Message sent successfully!
    </div>
<?php endif; ?>


<?php
$page_js = 'contact-us.js';
include 'includes/footer.php';
?>
