<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "car_dealership";

// Connect to MySQL
$conn = new mysqli($servername, $username, $password);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Create database
$conn->query("CREATE DATABASE IF NOT EXISTS $dbname");
$conn->select_db($dbname);

// Create tables
$tables = [

    // cars table
    "CREATE TABLE IF NOT EXISTS cars (
        id INT AUTO_INCREMENT PRIMARY KEY,
        name VARCHAR(100) NOT NULL,
        brand VARCHAR(100) NOT NULL,
        model_year INT NOT NULL,
        price DECIMAL(12,2) NOT NULL,
        `condition` TEXT,
        ownership_history TEXT,
        vin VARCHAR(50),
        availability_status VARCHAR(100),
        main_image VARCHAR(255),
        category VARCHAR(50),
        created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    )",

    // car_images table
    "CREATE TABLE IF NOT EXISTS car_images (
        id INT AUTO_INCREMENT PRIMARY KEY,
        car_id INT NOT NULL,
        image_path VARCHAR(255) NOT NULL,
        caption VARCHAR(100),
        FOREIGN KEY (car_id) REFERENCES cars(id) ON DELETE CASCADE
    )",

    // car_specs table
    "CREATE TABLE IF NOT EXISTS car_specs (
        id INT AUTO_INCREMENT PRIMARY KEY,
        car_id INT NOT NULL,
        engine VARCHAR(100),
        fuel_type VARCHAR(50),
        top_speed VARCHAR(50),
        acceleration VARCHAR(50),
        transmission VARCHAR(50),
        drivetrain VARCHAR(50),
        FOREIGN KEY (car_id) REFERENCES cars(id) ON DELETE CASCADE
    )",

    // car_safety_features table
    "CREATE TABLE IF NOT EXISTS car_safety_features (
        id INT AUTO_INCREMENT PRIMARY KEY,
        car_id INT NOT NULL,
        feature TEXT,
        FOREIGN KEY (car_id) REFERENCES cars(id) ON DELETE CASCADE
    )",

    // car_technology table
    "CREATE TABLE IF NOT EXISTS car_technology (
        id INT AUTO_INCREMENT PRIMARY KEY,
        car_id INT NOT NULL,
        infotainment TEXT,
        interior TEXT,
        FOREIGN KEY (car_id) REFERENCES cars(id) ON DELETE CASCADE
    )",

    // car_offers table
    "CREATE TABLE IF NOT EXISTS car_offers (
        id INT AUTO_INCREMENT PRIMARY KEY,
        car_id INT NOT NULL,
        insurance_options TEXT,
        available_colors TEXT,
        customer_rating DECIMAL(3,2),
        FOREIGN KEY (car_id) REFERENCES cars(id) ON DELETE CASCADE
    )",

    // recommended_cars table
    "CREATE TABLE IF NOT EXISTS recommended_cars (
        id INT AUTO_INCREMENT PRIMARY KEY,
        car_id INT NOT NULL,
        recommended_car_id INT NOT NULL,
        FOREIGN KEY (car_id) REFERENCES cars(id) ON DELETE CASCADE,
        FOREIGN KEY (recommended_car_id) REFERENCES cars(id) ON DELETE CASCADE
    )"
];

// Execute each table creation
foreach ($tables as $sql) {
    if ($conn->query($sql) !== TRUE) {
        echo "Error creating table: " . $conn->error . "<br>";
    }
}

?>
