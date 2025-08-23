document.addEventListener("DOMContentLoaded", function () {
    // --- Logic for handling URL parameter from homepage ---

    const params = new URLSearchParams(window.location.search);
    const selectedCard = params.get("card");
    const allSections = document.querySelectorAll("#featured-vehicles > section");

    // ONLY hide sections if a specific card was selected from the homepage
    if (selectedCard) {
        // Hide all sections initially
        allSections.forEach(section => {
            section.style.display = "none";
        });

        // Show the selected category section if it exists
        const targetSection = document.getElementById(selectedCard);
        if (targetSection) {
            targetSection.style.display = "block";
        }
    } else {
        // --- Default view for direct navigation ---
        // If no card is specified in URL, show the default "featured" section.
        // This assumes #featured-vehicles is the container for all car sections.
        // Your CSS already makes #classic-cars visible by default, which is good.
        // If you want all to be visible, you could loop and show them here.
        document.getElementById("featured-vehicles").style.display = "block";
    }

    // --- Logic for the category filter dropdown ---

    const categoryDropdown = document.getElementById("category");
    const allCategorySections = document.querySelectorAll("section[id]"); // Select all sections with an ID for filtering

    categoryDropdown.addEventListener("change", function () {
        const selectedValue = this.value;

        // If "All Categories" is selected, show all sections
        if (selectedValue === "#") {
            allCategorySections.forEach(section => {
                section.style.display = "block";
            });
            return;
        }

        const selectedCategory = selectedValue.substring(1); // Remove '#'

        // Hide all sections
        allCategorySections.forEach(section => {
            section.style.display = "block";
        });

        // Show only the selected category section
        const targetSection = document.getElementById(selectedCategory);
        if (targetSection) {
            targetSection.style.display = "block";
        }
    });
});