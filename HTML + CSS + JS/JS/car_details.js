document.addEventListener("DOMContentLoaded", () => {
    // Get car ID from the URL
    const params = new URLSearchParams(window.location.search);
    const selectedCar = params.get("car");

    // Hide all car details sections
    document.querySelectorAll(".vehicle-section").forEach(section => {
        section.style.display = "none";
    });

    // Show only the selected car details section
    if (selectedCar) {
        const targetSection = document.getElementById(selectedCar);
        if (targetSection) {
            targetSection.style.display = "block";
        }
    } else {
        // If no car is selected, show a default car section
        document.getElementById("jaguar-e-type").style.display = "block"; // Default example
        document.getElementById("tesla-model-s").style.display = "block";
        document.getElementById("rolls-royce-phantom").style.display = "block";
        document.getElementById("lamborghini-huracan").style.display = "block";
        document.getElementById("ford-ranger").style.display = "block";
        document.getElementById("toyota-highlander").style.display = "block";
    }
});
