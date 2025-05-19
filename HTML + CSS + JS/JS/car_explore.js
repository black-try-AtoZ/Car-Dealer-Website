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
