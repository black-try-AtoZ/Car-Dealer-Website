<?php
require_once __DIR__ . '/filter_cars.php';

function getCars($conn, $filters, $sort, $page, $perPage = 12) {
    buildFilters($filters, $whereSql);
    $order = buildSorting($sort);

    $offset = ($page - 1) * $perPage;
    $sql = "SELECT * FROM cars $whereSql $order LIMIT $offset, $perPage";
    $result = mysqli_query($conn, $sql);

    $cars = [];
    while ($row = mysqli_fetch_assoc($result)) {
        $cars[] = $row;
    }
    return $cars;
}

function getTotalCars($conn, $filters) {
    buildFilters($filters, $whereSql);
    $sql = "SELECT COUNT(*) as total FROM cars $whereSql";
    $result = mysqli_query($conn, $sql);
    $row = mysqli_fetch_assoc($result);
    return (int)$row['total'];
}

function getCarById($conn, $carId) {
    $sql = "SELECT * FROM cars WHERE id = ?";
    $stmt = mysqli_prepare($conn, $sql);
    mysqli_stmt_bind_param($stmt, "i", $carId);
    mysqli_stmt_execute($stmt);
    $result = mysqli_stmt_get_result($stmt);

    return mysqli_fetch_assoc($result);
}