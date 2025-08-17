<footer>
        <div class="logo">
            <img src="assets/images/logo.png" alt="Yonas Car Dealer Logo">
        </div>
        <div class="social-icons">
            <a href="https://twitter.com/" class="fa fa-twitter"></a>
            <a href="https://facebook.com/" class="fa fa-facebook"></a>
            <a href="https://linkedin.com/" class="fa fa-linkedin"></a>
            <a href="https://instagram.com/" class="fa fa-instagram"></a>
        </div>
        <nav>
            <a href="about-us.php">About Us</a>
            <a href="contact-us.php">Contact Us</a>
            <a href="terms-and-condition.php">Terms & Conditions</a>
            <a href="privacy-policy.php">Privacy Policy</a>
        </nav>
        <p><span><strong>&copy;</strong></span> 2025 Yonas Car Dealer. All rights reserved.</p>
    </footer>
    
    <button id="scrollUpBtn">▲</button>

    <script src="assets/js/scrollUpBtn.js"></script>
    <?php
        if (isset($page_js)) {
            echo '<script src="assets/js/' . $page_js . '"></script>';
        }
    ?>
</body>
</html>
