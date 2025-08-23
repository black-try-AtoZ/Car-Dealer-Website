<?php
function getRandomCarId($conn) {
    $result = $conn->query("SELECT id FROM cars ORDER BY RAND() LIMIT 1");
    if ($result && $row = $result->fetch_assoc()) {
        return (int)$row['id'];
    }
    return 0; // fallback if query fails
}
