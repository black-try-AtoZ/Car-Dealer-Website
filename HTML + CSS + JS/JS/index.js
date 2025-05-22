//For the slideshow
document.addEventListener("DOMContentLoaded", () => {
    const slides = document.querySelectorAll(".slides img");
    let currentSlide = 0;

    function showSlide() {
        slides.forEach((slide, index) => {
            slide.style.opacity = index === currentSlide ? "1" : "0";
        });

        currentSlide = (currentSlide + 1) % slides.length;
    }

    setInterval(showSlide, 3000); // Change slide every 3 seconds
    showSlide(); // Show the first slide immediately
});