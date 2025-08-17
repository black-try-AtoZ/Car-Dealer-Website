<php
$page_css = 'contact-us.css';
include 'includes/header.php'; 
?>

    <!-- Contact Form Section -->
    <section class="contact-form">
        <h2>Contact Us</h2>
        <form>
            <label for="name">Name: <span class="required">*</span></label>
            <input type="text" id="name" name="name">
            <div id="name-error" class="error-message"></div>

            <label for="email">Email: <span class="required">*</span></label>
            <input type="email" id="email" name="email">
            <div id="email-error" class="error-message"></div>

            <label for="phone">Phone: <span class="required">*</span></label>
            <input type="number" id="phone" name="phone">
            <div id="phone-error" class="error-message"></div>

            <label for="message">Message:</label>
            <textarea id="message" name="message"></textarea>

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
                <p><a alt="Head Office" target="-blank" href="https://maps.app.goo.gl/uGfyqa4bzVpqvZZU9">Head Office</a></p>
                <p><a alt="Branch Office" target="-blank" href="https://maps.app.goo.gl/1c9dkQzK3W62jp7d7">Branch Office</a></p>
                <p><a alt="Showroom" target="-blank" href="https://maps.app.goo.gl/F4XJNjg2qfeBX3C59">Showroom</a></p>
            </div>
            <div class="info-item">
                <h3>Phone Numbers</h3>
                <p><a href="tel:+2511101106060">+2511101106060</a></p>
                <p><a href="tel:+2511101106061">+2511101106061</a></p>
                <p><a href="tel:+2511101106090">+2511101106090</a></p>
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
            <area alt="location1" target="-blank" href="https://maps.app.goo.gl/uGfyqa4bzVpqvZZU9" coords="248,207,281,231" shape="rect">
            <area alt="location2" target="-blank" href="https://maps.app.goo.gl/1c9dkQzK3W62jp7d7" coords="317,218,353,243" shape="rect">
            <area alt="location3" target="-blank" href="https://maps.app.goo.gl/F4XJNjg2qfeBX3C59" coords="417,217,454,241" shape="rect">
        </map>
    </section>

<?php
$page_js = 'contact-us.js';
include 'includes/footer.php';
?>