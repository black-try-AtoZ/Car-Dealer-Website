document.addEventListener("DOMContentLoaded", () => {
    const scrollBtn = document.getElementById("scrollUpBtn");

    // Show button only when scrolling down
    window.addEventListener("scroll", () => {
        if (window.scrollY > 500) {
            scrollBtn.style.display = "block";
        } else {
            scrollBtn.style.display = "none";
        }
    });

    // Scroll to the top when clicked
    scrollBtn.addEventListener("click", () => {
        window.scrollTo({ top: 0, behavior: "smooth" });
    });
});
