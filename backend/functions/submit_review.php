<?php
session_start();

// Helper function to sanitize input
function sanitize($value) {
    return htmlspecialchars(trim($value), ENT_QUOTES, 'UTF-8');
}

// Collect and sanitize inputs
$name   = sanitize($_POST['name'] ?? '');
$rating = intval($_POST['rating'] ?? 0);
$review = sanitize($_POST['review'] ?? '');

// Store values for sticky form
$_SESSION['review_form_values'] = [
    'name'   => $name,
    'rating' => $rating,
    'review' => $review
];

// Validate inputs
$errors = [];

if (empty($name)) {
    $errors['name'] = "Please enter your name.";
}

if ($rating < 1 || $rating > 5) {
    $errors['rating'] = "Rating must be between 1 and 5 stars.";
}

if (empty($review)) {
    $errors['review'] = "Review cannot be empty.";
}

// If errors, redirect back
if (!empty($errors)) {
    $_SESSION['form_errors'] = $errors;
    $_SESSION['form_success'] = false;
    header("Location: ../resources.php?submitted=1");
    exit;
}

// Success: set flag and redirect
$_SESSION['form_success'] = true;
header("Location: ../resources.php?submitted=1");
exit;
?>
