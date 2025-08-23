<?php
// expects $car array present
$name  = htmlspecialchars($car['name']);
$brand = htmlspecialchars($car['brand']);
$img   = htmlspecialchars($car['main_image'] ?: 'assets/images/placeholder-car.jpg');
$year  = (int)$car['model_year'];
$price = number_format((float)$car['price'], 2);
$id    = (int)$car['id'];
?>

<div class="vehicle">
    <a href="car-details.php?id=<?php echo $id; ?>">
        <img src="<?php echo $img; ?>" alt="<?php echo $brand . ' ' . $name; ?>">
        <p><?php echo $brand . " " . $name; ?> (<?php echo $year; ?>)</p>
        <p>$<?php echo $price; ?></p>
        <button>View Details</button>
    </a>
</div>
