document.addEventListener("DOMContentLoaded", function () {
    document.getElementById("featured-vehicles").style.display = "block"; // Show the featured vehicles section by default

    const categoryDropdown = document.getElementById("category");
    const allSections = document.querySelectorAll("section[id]");

    categoryDropdown.addEventListener("change", function () {
        const selectedValue = this.value;

        // If the selected value is empty or just "#", do nothing
        if (selectedValue === "#") {
            allSections.forEach(section => {
                section.style.display = "block";
            });
            return;
        }

        const selectedCategory = selectedValue.substring(1); // Remove '#'

        // Hide all sections
        allSections.forEach(section => {
            section.style.display = "none";
        });

        // Show the selected category section
        const targetSection = document.getElementById(selectedCategory);
        if (targetSection) {
            targetSection.style.display = "block";
        }
    });
});



// For showing and hidding cards selected from home page
document.addEventListener("DOMContentLoaded", function () {
    const params = new URLSearchParams(window.location.search);
    const selectedCard = params.get("card");
    
    // Get all sections inside #featured-vehicles EXCEPT trucks and SUVs
    const allSections = document.querySelectorAll("#featured-vehicles > section");

    // Hide all sections initially
    allSections.forEach(section => {
        section.style.display = "none";
    });

    // Show the selected category section if it exists
    if (selectedCard) {
        const targetSection = document.getElementById(selectedCard);
        if (targetSection) {
            targetSection.style.display = "block";
        }
    }
});