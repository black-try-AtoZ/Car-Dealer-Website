<?php
// config/connection.php
// This script connects to the existing database.
// It should be included in any file that needs to query the database.

// --- Database Configuration ---
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "car_dealership";

// --- Create Connection ---
$conn = new mysqli($servername, $username, $password, $dbname);

// --- Check Connection ---
if ($conn->connect_error) {
    // Stop the script and show an error if the connection fails.
    die("Connection failed: " . $conn->connect_error);
}

// Set character set to utf8mb4 to support a wide range of characters
$conn->set_charset("utf8mb4");

// Note: We don't close the connection here.
// The script that includes this file will be responsible for closing it.
?>