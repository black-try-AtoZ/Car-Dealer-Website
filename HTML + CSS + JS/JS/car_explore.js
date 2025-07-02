document.getElementById("category").addEventListener("change", function() {
    const selectedCategory = this.value.substring(1); // Removes '#' from value
    const allSections = document.querySelectorAll("section[id]");

    // Hide all sections except the dropdown menu
    allSections.forEach(section => {
        section.style.display = "none";
    });

    // Show the selected category section
    const targetSection = document.getElementById(selectedCategory);
    if (targetSection) {
        targetSection.style.display = "block";
    }

    // If the user selects the first default option, show all sections again
    if (selectedCategory === "") {
        allSections.forEach(section => {
            section.style.display = "block";
        });
        return; // Exit function to prevent hiding all sections
    }
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