<?php
session_start();

// Helper function
function sanitize($value) {
    return htmlspecialchars(trim($value));
}

// Collect and sanitize inputs
$name    = sanitize($_POST['name'] ?? '');
$email   = filter_var(trim($_POST['email'] ?? ''), FILTER_SANITIZE_EMAIL);
$phone   = sanitize($_POST['phone'] ?? '');
$message = sanitize($_POST['message'] ?? '');

// Store values for sticky form
$_SESSION['form_values'] = [
    'name' => $name,
    'email' => $email,
    'phone' => $phone,
    'message' => $message
];

// Validate
$errors = [];

if (empty($name)) {
    $errors['name'] = "Please enter your name.";
}

if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
    $errors['email'] = "Please provide a valid email address.";
}

if (empty($phone)) {
    $errors['phone'] = "Phone number is required.";
}

// If errors, redirect back
if (!empty($errors)) {
    $_SESSION['form_errors'] = $errors;
    $_SESSION['form_success'] = false;
    header("Location: ../contact-us.php?submitted=1");
    exit;
}

// Success: set flag and redirect
$_SESSION['form_success'] = true;
header("Location: ../contact-us.php?submitted=1");
exit;
?>
