<?php
require_once __DIR__ . '/../config/db.php';

function getCategories($conn) {
    $sql = "SELECT DISTINCT category FROM cars WHERE category IS NOT NULL ORDER BY category ASC";
    $result = mysqli_query($conn, $sql);
    $categories = [];
    while ($row = mysqli_fetch_assoc($result)) {
        $categories[] = $row['category'];
    }
    return $categories;
}

function getYearRange($conn) {
    $sql = "SELECT MIN(model_year) as min_year, MAX(model_year) as max_year FROM cars";
    $result = mysqli_query($conn, $sql);
    return mysqli_fetch_assoc($result);
}

function getPriceRange($conn) {
    $sql = "SELECT MIN(price) as min_price, MAX(price) as max_price FROM cars";
    $result = mysqli_query($conn, $sql);
    return mysqli_fetch_assoc($result);
}
