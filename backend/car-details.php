<?php
$page_title = 'Car Details';
$page_description = 'View detailed information about a specific car, including images, specifications, and pricing.';
$page_css = 'car-details.css';

require_once __DIR__ . '/includes/header.php';
require_once __DIR__ . '/config/connection.php';
require_once __DIR__ . '/functions/get_cars.php';
require_once __DIR__ . '/functions/get_full_car_details.php';


if (isset($_GET['id'])) {
    $carId = (int)$_GET['id'];
} else {
    require_once __DIR__ . '/functions/get_random_cars.php'; // Load the function
    $carId = getRandomCarId($conn); // Call the function
}


$car = $carId > 0 ? getFullCarDetails($conn, $carId) : null;

if ($car) {
    include __DIR__ . '/includes/car_detail_template.php';
} else {
    echo "<p>No car found. Try browsing from the <a href='car-explore.php'>Explore page</a>.</p>";
}

?>
<?php include __DIR__ . '/includes/footer.php'; ?>
