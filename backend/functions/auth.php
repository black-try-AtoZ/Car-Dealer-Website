<?php
require_once __DIR__ . '/../config/connection.php';
session_start();

/**
 * Validate input data
 */
function validateInput($name, $username, $email, $password) {
    if (empty($name) || !preg_match("/^[a-zA-Z\s]+$/", $name)) {
        return "Invalid name. Only letters and spaces allowed.";
    }

    if (empty($username) || !preg_match("/^[a-zA-Z0-9_]{3,20}$/", $username)) {
        return "Invalid username. Use 3–20 characters: letters, numbers, underscores.";
    }

    if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
        return "Invalid email format.";
    }

    if (strlen($password) < 8 || !preg_match("/[A-Za-z]/", $password) || !preg_match("/\d/", $password)) {
        return "Password must be at least 8 characters and include letters and numbers.";
    }

    return true;
}

/**
 * Check if email or username already exists
 */
function userExists($conn, $email, $username) {
    $stmt = $conn->prepare("SELECT id FROM users WHERE email = ? OR username = ?");
    $stmt->bind_param("ss", $email, $username);
    $stmt->execute();
    $stmt->store_result();
    return $stmt->num_rows > 0;
}

/**
 * Register a new user
 */
function registerUser($conn, $name, $username, $email, $password) {
    $validation = validateInput($name, $username, $email, $password);
    if ($validation !== true) return $validation;

    if (userExists($conn, $email, $username)) {
        return "Email or username already registered.";
    }

    $hashedPassword = password_hash($password, PASSWORD_DEFAULT);
    $stmt = $conn->prepare("INSERT INTO users (name, username, email, password) VALUES (?, ?, ?, ?)");
    $stmt->bind_param("ssss", $name, $username, $email, $hashedPassword);

    return $stmt->execute() ? true : "Registration failed: " . $stmt->error;
}

/**
 * Login user
 */
function loginUser($conn, $usernameOrEmail, $password) {
    $stmt = $conn->prepare("SELECT id, name, password FROM users WHERE email = ? OR username = ?");
    $stmt->bind_param("ss", $usernameOrEmail, $usernameOrEmail);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($user = $result->fetch_assoc()) {
        if (password_verify($password, $user['password'])) {
            $_SESSION['user_id'] = $user['id'];
            $_SESSION['user_name'] = $user['name'];
            return true;
        } else {
            return "Incorrect password.";
        }
    } else {
        return "No user found with that email or username.";
    }
}

/**
 * Logout user
 */
function logoutUser() {
    session_unset();
    session_destroy();
    header("Location: login.php");
    exit;
}

/**
 * Check login status
 */
function isLoggedIn() {
    return isset($_SESSION['user_id']);
}
