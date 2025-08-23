<?php
function buildFilters($filters, &$whereSql) {
    $conditions = [];

    if (!empty($filters['category'])) {
        $conditions[] = "category = '" . mysqli_real_escape_string($GLOBALS['conn'], $filters['category']) . "'";
    }
    if (!empty($filters['year_min'])) {
        $conditions[] = "model_year >= " . (int)$filters['year_min'];
    }
    if (!empty($filters['year_max'])) {
        $conditions[] = "model_year <= " . (int)$filters['year_max'];
    }
    if (!empty($filters['price_min'])) {
        $conditions[] = "price >= " . (float)$filters['price_min'];
    }
    if (!empty($filters['price_max'])) {
        $conditions[] = "price <= " . (float)$filters['price_max'];
    }

    $whereSql = $conditions ? "WHERE " . implode(" AND ", $conditions) : "";
}

function buildSorting($sort) {
    switch ($sort) {
        case 'price_low':
            return "ORDER BY price ASC";
        case 'price_high':
            return "ORDER BY price DESC";
        case 'newest':
            return "ORDER BY model_year DESC";
        case 'oldest':
            return "ORDER BY model_year ASC";
        default:
            return "ORDER BY created_at DESC";
    }
}
