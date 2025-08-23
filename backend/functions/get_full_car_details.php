<?php
function getFullCarDetails($conn, $carId) {
    $carId = (int)$carId;

    // Base car info
    $stmt = $conn->prepare("SELECT * FROM cars WHERE id = ?");
    $stmt->bind_param("i", $carId);
    $stmt->execute();
    $carResult = $stmt->get_result();
    $car = $carResult->fetch_assoc();
    if (!$car) return null;

    // Gallery images
    $stmt = $conn->prepare("SELECT image_path, caption FROM car_images WHERE car_id = ?");
    $stmt->bind_param("i", $carId);
    $stmt->execute();
    $galleryResult = $stmt->get_result();
    $car['gallery_images'] = $galleryResult->fetch_all(MYSQLI_ASSOC);

    // Specs
    $stmt = $conn->prepare("SELECT * FROM car_specs WHERE car_id = ?");
    $stmt->bind_param("i", $carId);
    $stmt->execute();
    $specsResult = $stmt->get_result();
    $car['specs'] = $specsResult->fetch_assoc();

    // Safety features
    $stmt = $conn->prepare("SELECT feature FROM car_safety_features WHERE car_id = ?");
    $stmt->bind_param("i", $carId);
    $stmt->execute();
    $safetyResult = $stmt->get_result();
    $car['safety_features'] = array_column($safetyResult->fetch_all(MYSQLI_ASSOC), 'feature');

    // Technology
    $stmt = $conn->prepare("SELECT * FROM car_technology WHERE car_id = ?");
    $stmt->bind_param("i", $carId);
    $stmt->execute();
    $techResult = $stmt->get_result();
    $car['technology'] = $techResult->fetch_assoc();

    // Offers
    $stmt = $conn->prepare("SELECT * FROM car_offers WHERE car_id = ?");
    $stmt->bind_param("i", $carId);
    $stmt->execute();
    $offersResult = $stmt->get_result();
    $car['offers'] = $offersResult->fetch_assoc();

    // Recommended cars
    $stmt = $conn->prepare("
        SELECT c.id, c.name, c.brand, c.model_year, c.price, c.main_image
        FROM recommended_cars rc
        JOIN cars c ON rc.recommended_car_id = c.id
        WHERE rc.car_id = ?
    ");
    $stmt->bind_param("i", $carId);
    $stmt->execute();
    $recommendedResult = $stmt->get_result();
    $car['recommended'] = $recommendedResult->fetch_all(MYSQLI_ASSOC);

    return $car;
}
