<?php
$page_title       = 'Explore Cars';
$page_description = 'Browse our full inventory of cars by category, year, price, and more.';
$page_css         = 'car-explore.css';
$page_js          = 'explore.js';

// Includes
require_once __DIR__ . '/includes/header.php';
require_once __DIR__ . '/functions/get_cars.php';
require_once __DIR__ . '/functions/get_filters_meta.php';
require_once __DIR__ . '/config/connection.php';

// Query parameters
$category   = $_GET['category']   ?? '';
$year_min   = $_GET['year_min']   ?? '';
$year_max   = $_GET['year_max']   ?? '';
$price_min  = $_GET['price_min']  ?? '';
$price_max  = $_GET['price_max']  ?? '';
$sort       = $_GET['sort']       ?? 'newest';
$page       = max(1, (int)($_GET['page'] ?? 1));
$perPage    = 9;

// Filter array for querying
$filters = [
    'category'   => $category,
    'year_min'   => $year_min,
    'year_max'   => $year_max,
    'price_min'  => $price_min,
    'price_max'  => $price_max,
];

// Metadata for filter UI
$categories = getCategories($conn);   // e.g., ['Classic', 'Electric', ...]
$yearRange  = getYearRange($conn);    // e.g., ['min' => 1960, 'max' => 2024]
$priceRange = getPriceRange($conn);   // e.g., ['min' => 5000, 'max' => 150000]

// Fetch cars and total count
$cars       = getCars($conn, $filters, $sort, $page, $perPage);
$totalCars  = getTotalCars($conn, $filters);
?>

<form method="GET" class="filter-form">
    <!-- Category Dropdown -->
    <select name="category">
        <option value="">All Categories</option>
        <?php foreach ($categories as $c): ?>
            <option value="<?= htmlspecialchars($c) ?>" <?= $c === $category ? 'selected' : '' ?>>
                <?= htmlspecialchars($c) ?>
            </option>
        <?php endforeach; ?>
    </select>

    <!-- Year Range Dropdown -->
    <select name="year_min">
        <option value="">Min Year</option>
        <?php for ($y = $yearRange['min_year']; $y <= $yearRange['max_year']; $y += 5): ?>
            <option value="<?= $y ?>" <?= ($year_min ?? '') == $y ? 'selected' : '' ?>><?= $y ?></option>
        <?php endfor; ?>
    </select>

    <select name="year_max">
        <option value="">Max Year</option>
        <?php for ($y = $yearRange['max_year']; $y >= $yearRange['min_year']; $y -= 5): ?>
            <option value="<?= $y ?>" <?= ($year_max ?? '') == $y ? 'selected' : '' ?>><?= $y ?></option>
        <?php endfor; ?>
    </select>

    <!-- Price Range Dropdown -->
    <select name="price_min">
        <option value="">Min Price</option>
        <?php foreach ([0, 20000, 50000, 100000, 150000] as $p): ?>
            <option value="<?= $p ?>" <?= ($price_min ?? '') == $p ? 'selected' : '' ?>>$<?= number_format($p) ?></option>
        <?php endforeach; ?>
    </select>

    <select name="price_max">
        <option value="">Max Price</option>
        <?php foreach ([20000, 50000, 100000, 150000, 999999] as $p): ?>
            <option value="<?= $p ?>" <?= ($price_max ?? '') == $p ? 'selected' : '' ?>>$<?= number_format($p) ?></option>
        <?php endforeach; ?>
    </select>

    <!-- Sort Dropdown -->
    <select name="sort">
        <option value="newest" <?= $sort === 'newest' ? 'selected' : '' ?>>Newest</option>
        <option value="oldest" <?= $sort === 'oldest' ? 'selected' : '' ?>>Oldest</option>
        <option value="price_low" <?= $sort === 'price_low' ? 'selected' : '' ?>>Price: Low to High</option>
        <option value="price_high" <?= $sort === 'price_high' ? 'selected' : '' ?>>Price: High to Low</option>
    </select>

    <!-- Action Buttons -->
    <button type="submit">Apply Filters</button>
    <a href="car-explore.php"><button type="button">Clear Filters</button></a>
</form>

<?php
$carsPerPage = 9;
$offset = ($page - 1) * $carsPerPage;

$filters = [
    'category'   => $category,
    'year_min'   => $_GET['year_min'] ?? '',
    'year_max'   => $_GET['year_max'] ?? '',
    'price_min'  => $_GET['price_min'] ?? '',
    'price_max'  => $_GET['price_max'] ?? '',
];

$cars       = getCars($conn, $filters, $sort, $page, $carsPerPage);
$totalCars  = getTotalCars($conn, $filters);
$totalPages = ceil($totalCars / $carsPerPage);
?>

<section class="vehicle-list">
    <?php if (empty($cars)): ?>
        <p>No matching cars found.</p>
    <?php else: ?>
        <?php foreach ($cars as $car): ?>
            <?php include __DIR__ . '/includes/car_card.php'; ?>
        <?php endforeach; ?>
    <?php endif; ?>
</section>

<nav class="pagination">
    <?php if (!empty($cars)): ?>
    <!-- Render car cards -->
        <?php if ($page > 1): ?>
            <a href="?<?= http_build_query(array_merge($_GET, ['page' => $page - 1])) ?>">Prev</a>
        <?php endif; ?>

        <span>Page <?= $page ?> of <?= $totalPages ?></span>

        <?php if ($page < $totalPages): ?>
            <a href="?<?= http_build_query(array_merge($_GET, ['page' => $page + 1])) ?>">Next</a>
        <?php endif; ?>
    <?php endif; ?>
</nav>

<?php include __DIR__ . '/includes/footer.php'; ?>
