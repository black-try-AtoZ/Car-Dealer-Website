document.querySelector("form").addEventListener("submit", function(event) {
    let name = document.getElementById("name");
    let email = document.getElementById("email");
    let phone = document.getElementById("phone");

    let nameError = document.getElementById("name-error");
    let emailError = document.getElementById("email-error");
    let phoneError = document.getElementById("phone-error");

    let isValid = true;

    // Clear previous error messages
    document.querySelectorAll(".error-message").forEach(error => error.textContent = "");

    // Name validation
    if (!name.value.trim()) {
        nameError.textContent = "You have to enter your name.";
        isValid = false;
    }

    // Email validation
    if (!email.value.trim()) {
        emailError.textContent = "You have to enter your email.";
        isValid = false;
    } else if (!email.value.includes("@") || !/\.(com|net|org|edu|gov|info)$/i.test(email.value)) {
        emailError.textContent = "Email must contain '@' and end with a valid domain (e.g., .com, .net, .org).";
        isValid = false;
    }

    // Phone validation
    if (!phone.value.trim()) {
        phoneError.textContent = "You have to enter your phone number.";
        isValid = false;
    } else if (phone.value.length !== 10 || phone.value[0] !== '0') {
        phoneError.textContent = "Phone number must be 10 digits long and start with '0'.";
        isValid = false;
    }

    // Prevent form submission if validation fails
    if (!isValid) {
        event.preventDefault();
    } else {
        // If the form is valid, clear error messages explicitly before submission
        nameError.textContent = "";
        emailError.textContent = "";
        phoneError.textContent = "";
    }
});
