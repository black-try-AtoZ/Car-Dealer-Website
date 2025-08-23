-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 23, 2025 at 12:28 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `car_dealership`
--

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `brand` varchar(100) NOT NULL,
  `model_year` int(11) NOT NULL,
  `price` decimal(12,2) NOT NULL,
  `condition` text DEFAULT NULL,
  `ownership_history` text DEFAULT NULL,
  `vin` varchar(50) DEFAULT NULL,
  `availability_status` varchar(100) DEFAULT NULL,
  `main_image` varchar(255) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`id`, `name`, `brand`, `model_year`, `price`, `condition`, `ownership_history`, `vin`, `availability_status`, `main_image`, `category`, `created_at`) VALUES
(1, 'Jaguar E-Type', 'Jaguar', 1965, 55000.00, 'Fully restored, showroom quality', 'Collector-owned, minimal mileage', 'JAGE1965ETYPE1234', 'Rare, limited stock', 'assets/images/jaguar-e-type.jpg', 'Classic', '2025-08-19 15:51:27'),
(2, 'Ford Mustang', 'Ford', 1967, 45000.00, 'Restored, collector-grade', 'Single-owner classic', 'MUST1967FORD5678', 'Limited', 'assets/images/ford-mustang.jpg', 'Classic', '2025-08-19 15:51:29'),
(3, 'Ferrari 250 GTO', 'Ferrari', 1962, 50000000.00, 'Museum-grade, race-ready', 'Exclusive to elite collectors & racing teams', 'FERR250GTO1962890', 'Extremely rare, auction-only', 'assets/images/ferrari-250-gto.jpg', 'Classic', '2025-08-19 15:51:30'),
(4, 'Porsche 911 Carrera', 'Porsche', 1973, 120000.00, 'Fully restored, collector-grade', 'Low-mileage, auction-level model', 'PORSCHE1973911C123', 'Rare, limited stock', 'assets/images/porsche-911.jpg', 'Classic', '2025-08-19 15:51:31'),
(5, 'Aston Martin DB5', 'Aston Martin', 1964, 990000.00, 'Fully restored, collector-grade', 'Used in iconic films, rare auction model', 'ASTONDB51964X234', 'Extremely rare', 'assets/images/aston-martin-db5.jpg', 'Classic', '2025-08-19 15:51:32'),
(6, 'Tesla Model S', 'Tesla', 2025, 80000.00, 'Brand new', 'Range: 405 miles per charge. Charging Speed: 200 miles in 15 minutes (Supercharger).', 'TESLAMODELS2025X345', 'Available for immediate delivery', 'assets/images/tesla-model-s.jpg', 'Electric', '2025-08-19 15:58:59'),
(7, 'BMW iX3', 'BMW', 2025, 65000.00, 'Brand new', 'Range: 286 miles per charge. Charging Speed: Fast-charging 80% in 30 minutes.', 'BMWIX32025X765', 'In stock', 'assets/images/bmw-ix3.jpg', 'Electric', '2025-08-19 15:59:00'),
(8, 'Cupra Raval', 'Cupra', 2025, 40000.00, 'Brand new', 'Range: 280 miles per charge. Charging Speed: Fast-charging up to 80% in 30 minutes.', 'CUPRARAVAL2025X987', 'Available for pre-order', 'assets/images/cupra-raval.jpg', 'Electric', '2025-08-19 15:59:02'),
(9, 'Nissan Leaf', 'Nissan', 2025, 32000.00, 'Brand new', 'Range: 226 miles per charge. Charging Speed: Fast-charging 80% in 45 minutes.', 'NISSANLEAF2025X456', 'Available for purchase', 'assets/images/nissan-leaf.jpg', 'Electric', '2025-08-19 15:59:03'),
(10, 'Mercedes-Benz EQE SUV', 'Mercedes-Benz', 2025, 90000.00, 'Brand new', 'Range: 342 miles per charge. Charging Speed: 10-80% in 31 minutes (DC Fast Charging).', 'MERCEQESUV2025X678', 'Available for immediate purchase', 'assets/images/mercedes-eqe-suv.jpg', 'Electric', '2025-08-19 15:59:03'),
(11, 'Rolls-Royce Phantom', 'Rolls-Royce', 2025, 500000.00, 'Brand new', 'Fuel Efficiency: 14 MPG City / 21 MPG Highway', 'RRPHANTOM2025X999', 'Limited stock', 'assets/images/rolls-royce-phantom.jpg', 'Luxury', '2025-08-19 15:59:03'),
(12, 'Bentley Continental GT', 'Bentley', 2025, 250000.00, 'Brand new', 'Fuel Efficiency: 16 MPG City / 26 MPG Highway', 'BENTGT2025X555', 'In stock', 'assets/images/bentley-continental.jpg', 'Luxury', '2025-08-19 15:59:04'),
(13, 'Mercedes-Maybach S-Class', 'Mercedes-Benz', 2025, 200000.00, 'Brand new', 'Fuel Efficiency: 16 MPG City / 24 MPG Highway', 'MAYBS2025X888', 'In stock', 'assets/images/mercedes-maybach.jpg', 'Luxury', '2025-08-19 15:59:04'),
(14, 'BMW 7 Series', 'BMW', 2025, 160000.00, 'Brand new', 'Fuel Efficiency: 18 MPG City / 26 MPG Highway', 'BMW7SERIES2025X777', 'In stock', 'assets/images/bmw-7series.jpg', 'Luxury', '2025-08-19 15:59:04'),
(15, 'Audi A8 L', 'Audi', 2025, 150000.00, 'Brand new', 'Fuel Efficiency: 19 MPG City / 28 MPG Highway', 'AUDIA8L2025X555', 'In stock', 'assets/images/audi-a8.jpg', 'Luxury', '2025-08-19 15:59:05'),
(16, 'Lamborghini Huracán', 'Lamborghini', 2025, 250000.00, 'Brand new', 'Fuel Efficiency: 13 MPG City / 18 MPG Highway', 'LAMHURACAN2025X777', 'Limited stock', 'assets/images/lamborghini-huracan.jpg', 'Exotic', '2025-08-19 16:50:04'),
(17, 'Aston Martin Vanquish', 'Aston Martin', 2025, 300000.00, 'Brand new', 'Fuel Efficiency: 14 MPG City / 22 MPG Highway', 'ASTVANQ2025X999', 'Limited stock', 'assets/images/aston-martin-vanquish.jpg', 'Exotic', '2025-08-19 16:50:06'),
(18, 'Ferrari SF90 Stradale', 'Ferrari', 2025, 450000.00, 'Brand new', 'Fuel Efficiency: 18 MPG Combined', 'FERSF902025X999', 'Exclusive, limited stock', 'assets/images/ferrari-sf90.jpg', 'Exotic', '2025-08-19 16:50:06'),
(19, 'McLaren Artura', 'McLaren', 2025, 250000.00, 'Brand new', 'Fuel Efficiency: 18 MPG Combined', 'MCLARTURA2025X888', 'Exclusive, limited stock', 'assets/images/mclaren-artura.jpg', 'Exotic', '2025-08-19 16:50:08'),
(20, 'Bugatti Chiron', 'Bugatti', 2025, 3000000.00, 'Brand new', 'Fuel Efficiency: 9 MPG City / 14 MPG Highway', 'BUGCHIRON2025X999', 'Extremely limited, invitation-only', 'assets/images/bugatti-chiron.jpg', 'Exotic', '2025-08-19 16:50:08'),
(21, 'Ford Ranger PHEV', 'Ford', 2025, 42000.00, 'Brand new', 'Fuel Efficiency: 24 MPG City / 30 MPG Highway', 'FORDRANGERPHEV2025X123', 'In stock', 'assets/images/ford-ranger.jpg', 'Trucks', '2025-08-19 16:50:10'),
(22, 'Ford F-150', 'Ford', 2025, 40000.00, 'Brand new', 'Fuel Efficiency: 22 MPG City / 29 MPG Highway', 'FORDF1502025X888', 'In stock', 'assets/images/ford-f150.jpg', 'Trucks', '2025-08-19 16:50:10'),
(23, 'GMC Sierra 1500', 'GMC', 2025, 50000.00, 'Brand new', 'Fuel Efficiency: 18 MPG Combined', 'GMCSIERRA15002025X654', 'In stock', 'assets/images/gmc-sierra-1500.jpg', 'Trucks', '2025-08-19 16:50:11'),
(24, 'Chevrolet Silverado 1500', 'Chevrolet', 2025, 47000.00, 'Brand new', 'Fuel Efficiency: 26 MPG Combined (Diesel)', 'CHEVSILVERADO15002025X777', 'In stock', 'assets/images/chevrolet-silverado-1500.jpg', 'Trucks', '2025-08-19 16:50:11'),
(25, 'GMC Hummer EV', 'GMC', 2025, 110000.00, 'Brand new', 'Electric Range: 350 miles per full charge', 'GMCHUMMEREV2025X777', 'Limited stock', 'assets/images/gmc-hummer.jpg', 'Trucks', '2025-08-19 16:50:12'),
(26, 'Toyota Highlander', 'Toyota', 2025, 38000.00, 'Brand new', 'Fuel Efficiency: 24 MPG City / 33 MPG Highway', 'TOYHIGHL2025X876', 'In stock', 'assets/images/toyota-highlander.jpg', 'SUVs', '2025-08-19 16:57:51'),
(27, 'Dacia Bigster', 'Dacia', 2025, 30000.00, 'Brand new', 'Fuel Efficiency: 28 MPG City / 36 MPG Highway', 'DACBIGSTER2025X234', 'In stock', 'assets/images/dacia-bigster.jpg', 'SUVs', '2025-08-19 16:57:53'),
(28, 'Land Rover Defender', 'Land Rover', 2025, 55000.00, 'Brand new', 'Fuel Efficiency: 18 MPG City / 23 MPG Highway', 'LRDEFENDER2025X567', 'In stock', 'assets/images/land-rover-defender.jpg', 'SUVs', '2025-08-19 16:57:55'),
(29, 'Hyundai Ioniq 7', 'Hyundai', 2025, 45000.00, 'Brand new', 'Electric Range: 320 miles per full charge', 'HYIONIQ72025X789', 'In stock', 'assets/images/hyundai-ioniq7.jpg', 'SUVs', '2025-08-19 16:57:56'),
(30, 'Mercedes-Benz EQS SUV', 'Mercedes-Benz', 2025, 120000.00, 'Brand new', 'Electric Range: 350 miles per full charge', 'MERCEQSSUV2025X432', 'Limited stock', 'assets/images/mercedes-eqs.jpg', 'SUVs', '2025-08-19 16:57:58');

-- --------------------------------------------------------

--
-- Table structure for table `car_images`
--

CREATE TABLE `car_images` (
  `id` int(11) NOT NULL,
  `car_id` int(11) NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `caption` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `car_images`
--

INSERT INTO `car_images` (`id`, `car_id`, `image_path`, `caption`) VALUES
(77, 1, 'assets/images/jaguar-front.jpg', 'Front View'),
(78, 1, 'assets/images/jaguar-left-side.jpg', 'Left Side View'),
(79, 1, 'assets/images/jaguar-interior.jpg', 'Interior View'),
(80, 1, 'assets/images/jaguar-right-side.jpg', 'Right Side View'),
(81, 1, 'assets/images/jaguar-rear.jpg', 'Rear View'),
(82, 2, 'assets/images/mustang-front.jpg', 'Front View'),
(83, 2, 'assets/images/mustang-left-side.jpg', 'Left Side View'),
(84, 2, 'assets/images/mustang-interior.jpg', 'Interior View'),
(85, 2, 'assets/images/mustang-right-side.jpg', 'Right Side View'),
(86, 2, 'assets/images/mustang-rear.jpg', 'Rear View'),
(87, 3, 'assets/images/gto-front.jpg', 'Front View'),
(88, 3, 'assets/images/gto-left-side.jpg', 'Left Side View'),
(89, 3, 'assets/images/gto-interior.jpg', 'Interior View'),
(90, 3, 'assets/images/gto-right-side.jpg', 'Right Side View'),
(91, 3, 'assets/images/gto-rear.jpg', 'Rear View'),
(92, 4, 'assets/images/911-front.jpg', 'Front View'),
(93, 4, 'assets/images/911-left-side.jpg', 'Left Side View'),
(94, 4, 'assets/images/911-interior.jpg', 'Interior View'),
(95, 4, 'assets/images/911-right-side.jpg', 'Right Side View'),
(96, 4, 'assets/images/911-rear.jpg', 'Rear View'),
(97, 5, 'assets/images/db5-front.jpg', 'Front View'),
(98, 5, 'assets/images/db5-left-side.jpg', 'Left Side View'),
(99, 5, 'assets/images/db5-interior.jpg', 'Interior View'),
(100, 5, 'assets/images/db5-right-side.jpg', 'Right Side View'),
(101, 5, 'assets/images/db5-rear.jpg', 'Rear View'),
(102, 6, 'assets/images/tesla-front.jpg', 'Front View'),
(103, 6, 'assets/images/tesla-left-side.jpg', 'Left Side View'),
(104, 6, 'assets/images/tesla-interior.jpg', 'Interior View'),
(105, 6, 'assets/images/tesla-right-side.jpg', 'Right Side View'),
(106, 6, 'assets/images/tesla-rear.jpg', 'Rear View'),
(107, 7, 'assets/images/bmw-front.jpg', 'Front View'),
(108, 7, 'assets/images/bmw-left-side.jpg', 'Left Side View'),
(109, 7, 'assets/images/bmw-interior.jpg', 'Interior View'),
(110, 7, 'assets/images/bmw-right-side.jpg', 'Right Side View'),
(111, 7, 'assets/images/bmw-rear.jpg', 'Rear View'),
(112, 8, 'assets/images/cupra-front.jpg', 'Front View'),
(113, 8, 'assets/images/cupra-left-side.jpg', 'Left Side View'),
(114, 8, 'assets/images/cupra-interior.jpg', 'Interior View'),
(115, 8, 'assets/images/cupra-right-side.jpg', 'Right Side View'),
(116, 8, 'assets/images/cupra-rear.jpg', 'Rear View'),
(117, 9, 'assets/images/leaf-front.jpg', 'Front View'),
(118, 9, 'assets/images/leaf-left-side.jpg', 'Left Side View'),
(119, 9, 'assets/images/leaf-interior.jpg', 'Interior View'),
(120, 9, 'assets/images/leaf-right-side.jpg', 'Right Side View'),
(121, 9, 'assets/images/leaf-rear.jpg', 'Rear View'),
(122, 10, 'assets/images/eqe-front.jpg', 'Front View'),
(123, 10, 'assets/images/eqe-left-side.jpg', 'Left Side View'),
(124, 10, 'assets/images/eqe-interior.jpg', 'Interior View'),
(125, 10, 'assets/images/eqe-right-side.jpg', 'Right Side View'),
(126, 10, 'assets/images/eqe-rear.jpg', 'Rear View'),
(127, 11, 'assets/images/phantom-front.jpg', 'Front View'),
(128, 11, 'assets/images/phantom-left-side.jpg', 'Left Side View'),
(129, 11, 'assets/images/phantom-interior.jpg', 'Interior View'),
(130, 11, 'assets/images/phantom-right-side.jpg', 'Right Side View'),
(131, 11, 'assets/images/phantom-rear.jpg', 'Rear View'),
(132, 12, 'assets/images/continental-front.jpg', 'Front View'),
(133, 12, 'assets/images/continental-left-side.jpg', 'Left Side View'),
(134, 12, 'assets/images/continental-interior.jpg', 'Interior View'),
(135, 12, 'assets/images/continental-right-side.jpg', 'Right Side View'),
(136, 12, 'assets/images/continental-rear.jpg', 'Rear View'),
(137, 13, 'assets/images/maybach-front.jpg', 'Front View'),
(138, 13, 'assets/images/maybach-left-side.jpg', 'Left Side View'),
(139, 13, 'assets/images/maybach-interior.jpg', 'Interior View'),
(140, 13, 'assets/images/maybach-right-side.jpg', 'Right Side View'),
(141, 13, 'assets/images/maybach-rear.jpg', 'Rear View'),
(142, 14, 'assets/images/7series-front.jpg', 'Front View'),
(143, 14, 'assets/images/7series-left-side.jpg', 'Left Side View'),
(144, 14, 'assets/images/7series-interior.jpg', 'Interior View'),
(145, 14, 'assets/images/7series-right-side.jpg', 'Right Side View'),
(146, 14, 'assets/images/7series-rear.jpg', 'Rear View'),
(147, 15, 'assets/images/a8-front.jpg', 'Front View'),
(148, 15, 'assets/images/a8-left-side.jpg', 'Left Side View'),
(149, 15, 'assets/images/a8-interior.jpg', 'Interior View'),
(150, 15, 'assets/images/a8-right-side.jpg', 'Right Side View'),
(151, 15, 'assets/images/a8-rear.jpg', 'Rear View'),
(152, 16, 'assets/images/huracan-front.jpg', 'Front View'),
(153, 16, 'assets/images/huracan-left-side.jpg', 'Left Side View'),
(154, 16, 'assets/images/huracan-interior.jpg', 'Interior View'),
(155, 16, 'assets/images/huracan-right-side.jpg', 'Right Side View'),
(156, 16, 'assets/images/huracan-rear.jpg', 'Rear View'),
(157, 17, 'assets/images/vanquish-front.jpg', 'Front View'),
(158, 17, 'assets/images/vanquish-left-side.jpg', 'Left Side View'),
(159, 17, 'assets/images/vanquish-interior.jpg', 'Interior View'),
(160, 17, 'assets/images/vanquish-right-side.jpg', 'Right Side View'),
(161, 17, 'assets/images/vanquish-rear.jpg', 'Rear View'),
(162, 18, 'assets/images/sf90-front.jpg', 'Front View'),
(163, 18, 'assets/images/sf90-left-side.jpg', 'Left Side View'),
(164, 18, 'assets/images/sf90-interior.jpg', 'Interior View'),
(165, 18, 'assets/images/sf90-right-side.jpg', 'Right Side View'),
(166, 18, 'assets/images/sf90-rear.jpg', 'Rear View'),
(167, 19, 'assets/images/artura-front.jpg', 'Front View'),
(168, 19, 'assets/images/artura-left-side.jpg', 'Left Side View'),
(169, 19, 'assets/images/artura-interior.jpg', 'Interior View'),
(170, 19, 'assets/images/artura-right-side.jpg', 'Right Side View'),
(171, 19, 'assets/images/artura-rear.jpg', 'Rear View'),
(172, 20, 'assets/images/chiron-front.jpg', 'Front View'),
(173, 20, 'assets/images/chiron-left-side.jpg', 'Left Side View'),
(174, 20, 'assets/images/chiron-interior.jpg', 'Interior View'),
(175, 20, 'assets/images/chiron-right-side.jpg', 'Right Side View'),
(176, 20, 'assets/images/chiron-rear.jpg', 'Rear View'),
(177, 21, 'assets/images/ranger-front.jpg', 'Front View'),
(178, 21, 'assets/images/ranger-left-side.jpg', 'Left Side View'),
(179, 21, 'assets/images/ranger-interior.jpg', 'Interior View'),
(180, 21, 'assets/images/ranger-right-side.jpg', 'Right Side View'),
(181, 21, 'assets/images/ranger-rear.jpg', 'Rear View'),
(182, 22, 'assets/images/f150-front.jpg', 'Front View'),
(183, 22, 'assets/images/f150-left-side.jpg', 'Left Side View'),
(184, 22, 'assets/images/f150-interior.jpg', 'Interior View'),
(185, 22, 'assets/images/f150-right-side.jpg', 'Right Side View'),
(186, 22, 'assets/images/f150-rear.jpg', 'Rear View'),
(187, 23, 'assets/images/sierra1500-front.jpg', 'Front View'),
(188, 23, 'assets/images/sierra1500-left-side.jpg', 'Left Side View'),
(189, 23, 'assets/images/sierra1500-interior.jpg', 'Interior View'),
(190, 23, 'assets/images/sierra1500-right-side.jpg', 'Right Side View'),
(191, 23, 'assets/images/sierra1500-rear.jpg', 'Rear View'),
(192, 24, 'assets/images/silverado1500-front.jpg', 'Front View'),
(193, 24, 'assets/images/silverado1500-left-side.jpg', 'Left Side View'),
(194, 24, 'assets/images/silverado1500-interior.jpg', 'Interior View'),
(195, 24, 'assets/images/silverado1500-right-side.jpg', 'Right Side View'),
(196, 24, 'assets/images/silverado1500-rear.jpg', 'Rear View'),
(197, 25, 'assets/images/hummer-front.jpg', 'Front View'),
(198, 25, 'assets/images/hummer-left-side.jpg', 'Left Side View'),
(199, 25, 'assets/images/hummer-interior.jpg', 'Interior View'),
(200, 25, 'assets/images/hummer-right-side.jpg', 'Right Side View'),
(201, 25, 'assets/images/hummer-rear.jpg', 'Rear View'),
(202, 26, 'assets/images/highlander-front.jpg', 'Front View'),
(203, 26, 'assets/images/highlander-left-side.jpg', 'Left Side View'),
(204, 26, 'assets/images/highlander-interior.jpg', 'Interior View'),
(205, 26, 'assets/images/highlander-right-side.jpg', 'Right Side View'),
(206, 26, 'assets/images/highlander-rear.jpg', 'Rear View'),
(207, 27, 'assets/images/bigster-front.jpg', 'Front View'),
(208, 27, 'assets/images/bigster-left-side.jpg', 'Left Side View'),
(209, 27, 'assets/images/bigster-interior.jpg', 'Interior View'),
(210, 27, 'assets/images/bigster-right-side.jpg', 'Right Side View'),
(211, 27, 'assets/images/bigster-rear.jpg', 'Rear View'),
(212, 28, 'assets/images/defender-front.jpg', 'Front View'),
(213, 28, 'assets/images/defender-left-side.jpg', 'Left Side View'),
(214, 28, 'assets/images/defender-interior.jpg', 'Interior View'),
(215, 28, 'assets/images/defender-right-side.jpg', 'Right Side View'),
(216, 28, 'assets/images/defender-rear.jpg', 'Rear View'),
(217, 29, 'assets/images/ioniq7-front.jpg', 'Front View'),
(218, 29, 'assets/images/ioniq7-left-side.jpg', 'Left Side View'),
(219, 29, 'assets/images/ioniq7-interior.jpg', 'Interior View'),
(220, 29, 'assets/images/ioniq7-right-side.jpg', 'Right Side View'),
(221, 29, 'assets/images/ioniq7-rear.jpg', 'Rear View'),
(222, 30, 'assets/images/eqs-front.jpg', 'Front View'),
(223, 30, 'assets/images/eqs-left-side.jpg', 'Left Side View'),
(224, 30, 'assets/images/eqs-interior.jpg', 'Interior View'),
(225, 30, 'assets/images/eqs-right-side.jpg', 'Right Side View'),
(226, 30, 'assets/images/eqs-rear.jpg', 'Rear View');

-- --------------------------------------------------------

--
-- Table structure for table `car_offers`
--

CREATE TABLE `car_offers` (
  `id` int(11) NOT NULL,
  `car_id` int(11) NOT NULL,
  `insurance_options` text DEFAULT NULL,
  `available_colors` text DEFAULT NULL,
  `customer_rating` decimal(3,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `car_offers`
--

INSERT INTO `car_offers` (`id`, `car_id`, `insurance_options`, `available_colors`, `customer_rating`) VALUES
(15, 1, 'Available with classic car insurance plans', 'Red, Silver, British Racing Green', 4.90),
(16, 2, 'Available with classic car insurance plans', 'Red, Black, Blue', 4.80),
(17, 3, 'Custom valuation for rare collector items', 'Red, Blue, Silver', 5.00),
(18, 4, 'Available with classic car insurance plans', 'Guards Red, Silver Metallic, Black', 4.90),
(19, 5, 'Available with classic car insurance plans', 'Silver Birch, Black, British Racing Green', 5.00),
(20, 6, 'Tesla Insurance available', 'White, Black, Red, Midnight Silver', 4.90),
(21, 7, 'Available with electric vehicle coverage', 'Black Sapphire, Mineral White, Phytonic Blue', 4.70),
(22, 8, 'Available with electric vehicle coverage', 'Midnight Black, Arctic Blue, Sunset Red', 4.50),
(23, 9, 'Available with electric vehicle coverage', 'Glacier White, Deep Blue Pearl, Gun Metallic', 4.60),
(24, 10, 'Available with premium EV coverage', 'Obsidian Black, Diamond White, Graphite Grey', 4.80),
(25, 11, 'Premium coverage available', 'Midnight Sapphire, Diamond Black, Arctic White', 4.90),
(26, 12, 'Luxury auto insurance plans available', 'Glacier White, Midnight Emerald, Neptune Blue', 4.80),
(27, 13, 'Full luxury protection & extended warranty available', 'Obsidian Black, Selenite Grey, Diamond White', 4.90),
(28, 14, 'Executive auto insurance available', 'Alpine White, Carbon Black, Phytonic Blue', 4.80),
(29, 15, 'Comprehensive luxury vehicle coverage', 'Glacier White, Mythos Black, Navarra Blue', 4.70),
(30, 16, 'Exotic car protection packages available', 'Verde Mantis, Arancio Borealis, Blu Cepheus', 4.90),
(31, 17, 'Exotic car protection packages available', 'Racing Green, Lunar White, Magnetic Silver', 4.80),
(32, 18, 'Exotic car protection plans available', 'Rosso Corsa, Giallo Modena, Nero Daytona', 4.90),
(33, 19, 'Exotic vehicle coverage available', 'Supernova Silver, Volcano Yellow, Aurora Blue', 4.80),
(34, 20, 'Elite hypercar protection plans available', 'Bleu Royale, Jet Black, Italian Red', 4.90),
(35, 21, 'Available with off-road & towing coverage', 'Iconic Silver, Velocity Blue, Shadow Black', 4.70),
(36, 22, 'Available with off-road & towing coverage', 'Carbonized Gray, Rapid Red, Oxford White', 4.80),
(37, 23, 'Heavy-duty & work truck coverage available', 'Summit White, Onyx Black, Titanium Rush', 4.80),
(38, 24, 'Heavy-duty & work truck coverage available', 'Summit White, Black, Sterling Gray', 4.80),
(39, 25, 'EV off-road & premium coverage available', 'Interstellar White, Moonshot Green, Deep Metallic Black', 4.90),
(40, 26, 'Available with family & SUV coverage', 'Celestial Silver, Midnight Black, Ruby Flare Pearl', 4.70),
(41, 27, 'Standard SUV coverage available', 'Titanium Gray, Alpine White, Deep Blue', 4.50),
(42, 28, 'Available with off-road coverage', 'Pangea Green, Fuji White, Santorini Black', 4.80),
(43, 29, 'EV-specific protection available', 'Gravity Gold, Amazon Gray, Cyber Silver', 4.70),
(44, 30, 'EV-specific coverage available', 'Obsidian Black, Diamond White, Nautical Blue', 4.90);

-- --------------------------------------------------------

--
-- Table structure for table `car_safety_features`
--

CREATE TABLE `car_safety_features` (
  `id` int(11) NOT NULL,
  `car_id` int(11) NOT NULL,
  `feature` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `car_safety_features`
--

INSERT INTO `car_safety_features` (`id`, `car_id`, `feature`) VALUES
(65, 1, 'Disc brakes (front & rear)'),
(66, 1, 'Reinforced steel frame'),
(67, 1, 'Aerodynamic stability'),
(68, 1, 'Collapsible steering column'),
(69, 2, 'Drum brakes (front & rear)'),
(70, 2, 'Steel-reinforced body frame'),
(71, 2, 'Basic lap seatbelts'),
(72, 2, 'Crash Test Ratings: Not officially rated (Pre-1970s standards)'),
(73, 3, 'Lightweight aluminum frame for high-speed stability'),
(74, 3, 'Roll cage for driver protection'),
(75, 3, 'Disc brakes (front & rear)'),
(76, 3, 'Racing harness seatbelt system'),
(77, 4, 'Disc brakes (front & rear)'),
(78, 4, 'Impact-absorbing bumper system'),
(79, 4, 'Reinforced steel frame for safety'),
(80, 4, 'Aerodynamic stability for high-speed handling'),
(81, 5, 'Disc brakes (front & rear)'),
(82, 5, 'Steel-reinforced body frame'),
(83, 5, 'Anti-roll bar suspension system'),
(84, 6, 'Full Self-Driving (Beta)'),
(85, 6, 'Autopilot with Adaptive Cruise Control'),
(86, 6, 'Collision Avoidance & Emergency Braking'),
(87, 6, '360-degree Camera System'),
(88, 6, 'Crash Test Ratings: 5-Star NHTSA Rating'),
(89, 7, 'Adaptive Cruise Control with Stop & Go'),
(90, 7, 'Lane-Keeping Assist & Automatic Emergency Braking'),
(91, 7, '360-degree Camera System & Parking Assist'),
(92, 7, 'Collision Prevention & Pedestrian Detection'),
(93, 8, 'Adaptive Cruise Control & Lane-Keeping Assist'),
(94, 8, 'Automated Emergency Braking & Pedestrian Detection'),
(95, 8, 'Rear Parking Sensors & 360-degree Camera'),
(96, 9, 'ProPILOT Assist with Adaptive Cruise Control'),
(97, 9, 'Automatic Emergency Braking with Pedestrian Detection'),
(98, 9, 'Rear Cross-Traffic Alert & Lane Departure Warning'),
(99, 10, 'Adaptive Cruise Control with Stop & Go'),
(100, 10, 'Lane-Keeping Assist & Automated Emergency Braking'),
(101, 10, '360-degree Camera & Active Parking Assist'),
(102, 10, 'Advanced Collision Avoidance System'),
(103, 11, 'Rolls-Royce bespoke safety suite'),
(104, 11, 'Adaptive Cruise Control & Lane Keep Assist'),
(105, 11, 'Blind Spot Monitoring & Rear Collision Warning'),
(106, 11, 'Night Vision & Parking Assist'),
(107, 12, 'Adaptive Cruise Control & Emergency Braking'),
(108, 12, 'Blind Spot Monitoring & Parking Sensors'),
(109, 12, 'Lane Keeping Assist & Traffic Sign Recognition'),
(110, 13, 'Adaptive Cruise Control & Highway Assist'),
(111, 13, 'Blind Spot Monitoring & Auto Emergency Braking'),
(112, 13, 'Active Lane Keeping & Traffic Sign Recognition'),
(113, 13, '360-degree Camera & Night Vision Assist'),
(114, 14, 'Adaptive Cruise Control & Highway Assist'),
(115, 14, 'Blind Spot Monitoring & Lane Departure Warning'),
(116, 14, 'Collision Avoidance System & Parking Assist'),
(117, 15, 'Adaptive Cruise Control & Traffic Jam Assist'),
(118, 15, 'Lane Departure Warning & Blind Spot Monitoring'),
(119, 15, 'Front & Rear Collision Detection'),
(120, 15, '360-degree Camera & Night Vision Assist'),
(121, 16, 'Adaptive Stability Control & ABS'),
(122, 16, 'Carbon Ceramic Brakes with High-Performance Calipers'),
(123, 16, 'Blind Spot Monitoring & Parking Sensors'),
(124, 16, 'Advanced Traction Control & Racing Mode'),
(125, 17, 'Adaptive Cruise Control & Stability Management'),
(126, 17, 'Carbon Ceramic Brakes & Electronic Traction Control'),
(127, 17, 'Parking Sensors & Blind Spot Monitoring'),
(128, 18, 'Advanced Stability Control & High-Performance ABS'),
(129, 18, 'Carbon Ceramic Brakes for Ultimate Stopping Power'),
(130, 18, 'Parking Sensors & Blind Spot Detection'),
(131, 19, 'Adaptive Stability Control & Dynamic ABS'),
(132, 19, 'Carbon Ceramic Brakes & Track-Optimized Traction Control'),
(133, 19, 'Parking Sensors & Blind Spot Detection'),
(134, 20, 'Advanced Traction Control & Dynamic Stability Management'),
(135, 20, 'Carbon Ceramic Brakes for Extreme Stopping Power'),
(136, 20, 'Blind Spot Monitoring & Parking Sensors'),
(137, 21, 'Adaptive Cruise Control & Lane-Keeping Assist'),
(138, 21, 'Blind Spot Monitoring & Rear Cross-Traffic Alert'),
(139, 21, 'Parking Assist & Automatic Emergency Braking'),
(140, 22, 'Adaptive Cruise Control & Lane-Keeping Assist'),
(141, 22, 'Blind Spot Monitoring & Rear Cross-Traffic Alert'),
(142, 22, 'Automatic Emergency Braking & Forward Collision Warning'),
(143, 23, 'GMC Pro Safety package with Lane Departure Warning'),
(144, 23, 'Blind Spot Monitoring & Rear Cross-Traffic Alert'),
(145, 23, 'Automatic Emergency Braking & Forward Collision Warning'),
(146, 24, 'Chevrolet Safety Assist with Adaptive Cruise Control'),
(147, 24, 'Blind Spot Warning & Lane Change Alert'),
(148, 24, 'Automatic Emergency Braking & Forward Collision Detection'),
(149, 25, 'Super Cruise Hands-Free Driving Assist'),
(150, 25, 'Blind Spot Monitoring & Collision Avoidance'),
(151, 25, '360-degree Camera with Off-Road Modes'),
(152, 26, 'Toyota Safety Sense 2.5+'),
(153, 26, 'Lane Departure Warning & Adaptive Cruise Control'),
(154, 26, 'Blind Spot Monitoring & Rear Cross-Traffic Alert'),
(155, 26, 'Parking Assist & Automatic Emergency Braking'),
(156, 27, 'Advanced Driver Assistance & Lane-Keeping Assist'),
(157, 27, 'Blind Spot Monitoring & Rear Cross-Traffic Alert'),
(158, 27, 'Parking Assist & Automatic Emergency Braking'),
(159, 27, 'Crash Test Ratings: 4-Star Euro NCAP Rating'),
(160, 28, 'Adaptive Cruise Control & Off-Road Stability Assist'),
(161, 28, 'Blind Spot Monitoring & Emergency Braking'),
(162, 28, '360-degree Camera System & Park Assist'),
(163, 28, 'Crash Test Ratings: 5-Star Euro NCAP Safety Rating'),
(164, 29, 'Hyundai SmartSense with Highway Driving Assist'),
(165, 29, 'Blind Spot Collision Avoidance & Rear Cross-Traffic Warning'),
(166, 29, '360-degree Surround View Monitor & Parking Assist'),
(167, 30, 'Mercedes-Benz Driver Assist with Semi-Autonomous Features'),
(168, 30, 'Blind Spot Monitoring & Auto Emergency Braking'),
(169, 30, '360-degree Camera & Active Steering Assist');

-- --------------------------------------------------------

--
-- Table structure for table `car_specs`
--

CREATE TABLE `car_specs` (
  `id` int(11) NOT NULL,
  `car_id` int(11) NOT NULL,
  `engine` varchar(100) DEFAULT NULL,
  `fuel_type` varchar(50) DEFAULT NULL,
  `top_speed` varchar(50) DEFAULT NULL,
  `acceleration` varchar(50) DEFAULT NULL,
  `transmission` varchar(50) DEFAULT NULL,
  `drivetrain` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `car_specs`
--

INSERT INTO `car_specs` (`id`, `car_id`, `engine`, `fuel_type`, `top_speed`, `acceleration`, `transmission`, `drivetrain`) VALUES
(16, 1, '4.2L Inline-6, 265 HP', 'Gasoline', '150 MPH', 'Under 7 seconds', '4-speed manual', 'Rear-Wheel Drive (RWD)'),
(17, 2, '6.4L V8, 320 HP', 'Gasoline', '140 MPH', 'Under 7.2 seconds', '3-speed automatic / 4-speed manual', 'Rear-Wheel Drive (RWD)'),
(18, 3, '3.0L V12, 300 HP', 'Gasoline', '174 MPH', 'Under 6.1 seconds', '5-speed manual', 'Rear-Wheel Drive (RWD)'),
(19, 4, '2.7L Flat-6, 210 HP', 'Gasoline', '152 MPH', 'Under 6.3 seconds', '5-speed manual', 'Rear-Wheel Drive (RWD)'),
(20, 5, '4.0L Inline-6, 282 HP', 'Gasoline', '145 MPH', 'Under 7.1 seconds', '5-speed manual / 3-speed automatic', 'Rear-Wheel Drive (RWD)'),
(21, 6, 'Dual Motor AWD / Plaid Tri-Motor', 'Electric', '200 MPH', 'Under 2 seconds (Plaid)', 'Single-speed automatic', 'All-Wheel Drive (AWD)'),
(22, 7, 'Single Motor RWD', 'Electric', '112 MPH', 'Under 6.8 seconds', 'Single-speed automatic', 'Rear-Wheel Drive (RWD)'),
(23, 8, 'Single Motor FWD', 'Electric', '99 MPH', 'Under 7.5 seconds', 'Single-speed automatic', 'Front-Wheel Drive (FWD)'),
(24, 9, 'Single Motor FWD', 'Electric', '98 MPH', 'Under 7.9 seconds', 'Single-speed automatic', 'Front-Wheel Drive (FWD)'),
(25, 10, 'Dual Motor AWD', 'Electric', '130 MPH', 'Under 4.7 seconds', 'Single-speed automatic', 'All-Wheel Drive (AWD)'),
(26, 11, '6.75L V12 Twin-Turbo, 563 HP', 'Gasoline', NULL, NULL, '8-speed automatic', 'Rear-Wheel Drive (RWD)'),
(27, 12, '4.0L V8 Twin-Turbo, 542 HP', 'Gasoline', NULL, '0-60 mph in 3.9 seconds', '8-speed dual-clutch automatic', 'All-Wheel Drive (AWD)'),
(28, 13, '4.0L V8 Bi-Turbo Mild Hybrid, 496 HP', 'Gasoline + Mild Hybrid System', NULL, NULL, '9-speed automatic', 'All-Wheel Drive (AWD)'),
(29, 14, '3.0L Inline-6 Twin-Turbo Mild Hybrid, 375 HP', 'Gasoline + Mild Hybrid System', NULL, '0-60 mph in 4.9 seconds', '8-speed automatic', 'All-Wheel Drive (AWD)'),
(30, 15, '3.0L V6 Turbocharged Mild Hybrid, 335 HP', 'Gasoline + Mild Hybrid System', NULL, '0-60 mph in 5.6 seconds', '8-speed automatic', 'Quattro All-Wheel Drive (AWD)'),
(31, 16, '5.2L V10 Naturally Aspirated, 631 HP', 'Gasoline', NULL, '0-60 mph in 2.9 seconds', '7-speed dual-clutch automatic', 'All-Wheel Drive (AWD)'),
(32, 17, '4.0L V8 Twin-Turbo, 650 HP', 'Gasoline', NULL, '0-60 mph in 3.3 seconds', '8-speed automatic', 'Rear-Wheel Drive (RWD)'),
(33, 18, '4.0L V8 Twin-Turbo Hybrid, 986 HP', 'Hybrid (Gasoline & Electric)', NULL, '0-60 mph in 2.5 seconds', '8-speed dual-clutch automatic', 'All-Wheel Drive (AWD)'),
(34, 19, '3.0L V6 Twin-Turbo Hybrid, 671 HP', 'Hybrid (Gasoline & Electric)', NULL, '0-60 mph in 3.0 seconds', '8-speed dual-clutch automatic', 'Rear-Wheel Drive (RWD)'),
(35, 20, '8.0L Quad-Turbo W16, 1,479 HP', 'Gasoline', '261 mph', '0-60 mph in 2.3 seconds', '7-speed dual-clutch automatic', 'All-Wheel Drive (AWD)'),
(36, 21, '2.3L Turbocharged Inline-4 Hybrid, 362 HP', 'Gasoline & Electric (Plug-in Hybrid)', NULL, NULL, '10-speed automatic', 'Four-Wheel Drive (4WD)'),
(37, 22, '3.5L V6 EcoBoost, 400 HP', 'Gasoline', NULL, NULL, '10-speed automatic', 'Four-Wheel Drive (4WD)'),
(38, 23, '5.3L V8, 355 HP / 383 lb-ft Torque', 'Gasoline', NULL, NULL, '10-speed automatic', 'Four-Wheel Drive (4WD)'),
(39, 24, '3.0L Duramax Turbo-Diesel I6, 305 HP / 495 lb-ft Torque', 'Diesel', NULL, NULL, '10-speed automatic', 'Four-Wheel Drive (4WD)'),
(40, 25, 'Triple Motor AWD, 1,000 HP', 'Electric', NULL, NULL, 'Single-speed automatic', 'All-Wheel Drive (AWD)'),
(41, 26, '2.4L Turbocharged 4-cylinder, 265 HP', 'Gasoline', NULL, NULL, '8-speed automatic', 'All-Wheel Drive (AWD)'),
(42, 27, '1.3L Turbocharged 4-cylinder, 150 HP', 'Gasoline', NULL, NULL, '6-speed automatic', 'Front-Wheel Drive (FWD)'),
(43, 28, '3.0L Inline-6 Turbocharged Mild Hybrid, 395 HP', 'Gasoline + Mild Hybrid System', NULL, NULL, '8-speed automatic', 'Four-Wheel Drive (4WD)'),
(44, 29, 'Dual Motor AWD, 308 HP', 'Electric', NULL, '0-60 mph in 5.5 seconds', 'Single-speed automatic', 'All-Wheel Drive (AWD)'),
(45, 30, 'Dual Motor AWD, 536 HP', 'Electric', NULL, '0-60 mph in 4.7 seconds', 'Single-speed automatic', 'All-Wheel Drive (AWD)');

-- --------------------------------------------------------

--
-- Table structure for table `car_technology`
--

CREATE TABLE `car_technology` (
  `id` int(11) NOT NULL,
  `car_id` int(11) NOT NULL,
  `infotainment` text DEFAULT NULL,
  `interior` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `car_technology`
--

INSERT INTO `car_technology` (`id`, `car_id`, `infotainment`, `interior`) VALUES
(15, 1, 'Classic analog gauges, vintage radio system', 'Leather seats, wood-trim dashboard, wire-spoke steering wheel'),
(16, 2, 'Classic analog dashboard, AM/FM radio', 'Vinyl seats, wood-trim steering wheel'),
(17, 3, 'Race-spec analog gauges', 'Leather bucket seats, roll cage, racing pedals'),
(18, 4, 'Analog gauges, vintage Blaupunkt stereo system', 'Leather bucket seats, premium dashboard trim'),
(19, 5, 'Smiths analog gauges, vintage radio system', 'Leather seats, wood-trim dashboard, luxury detailing'),
(20, 6, '17-inch touchscreen, wireless streaming', 'Heated & ventilated seats, minimalist cockpit'),
(21, 7, 'BMW iDrive 8, touchscreen display', 'Heated seats, panoramic roof, ambient lighting'),
(22, 8, '10-inch touchscreen, Apple CarPlay & Android Auto', 'Sporty seats, customizable ambient lighting'),
(23, 9, '8-inch touchscreen, Apple CarPlay & Android Auto', 'Eco-friendly upholstery, heated seats'),
(24, 10, 'MBUX Hyperscreen, AI-based voice assistant', 'Heated & ventilated leather seats, ambient lighting'),
(25, 11, '12.3-inch digital cockpit with Rolls-Royce bespoke UI', 'Handcrafted wood trim, starlight headliner, massage seats'),
(26, 12, '12.3-inch touchscreen with rotating display', 'Handcrafted wood veneers, quilted leather seats'),
(27, 13, '12.8-inch OLED touchscreen, Mercedes MBUX AI assistant', 'Reclining rear seats, massaging functions, executive lounge package'),
(28, 14, '14.9-inch curved touchscreen, BMW iDrive 8', 'Executive lounge seating, panoramic sunroof'),
(29, 15, '10.1-inch MMI touchscreen with Virtual Cockpit', 'Ambient lighting, ventilated seats, rear executive package'),
(30, 16, '8.4-inch touchscreen with Lamborghini Connect', 'Alcantara leather seats, digital instrument cluster'),
(31, 17, '10-inch touchscreen with Aston Martin UI', 'Fine leather upholstery, digital instrument cluster'),
(32, 18, 'Ferrari Interface with High-Resolution Display', 'Carbon Fiber Trim, Racing Bucket Seats'),
(33, 19, 'McLaren Touchscreen Interface with Race Mode Adjustments', 'Lightweight carbon fiber materials, race-inspired digital cockpit'),
(34, 20, 'Bugatti Connect with Custom Digital Interface', 'Handcrafted leather & carbon fiber cockpit'),
(35, 21, '12.1-inch touchscreen with Apple CarPlay & Android Auto', 'Heated & ventilated seats, leather upholstery'),
(36, 22, '12-inch touchscreen with Apple CarPlay & Android Auto', 'Heated & ventilated seats, leather upholstery'),
(37, 23, '13.4-inch touchscreen with GMC IntelliLink', 'Heated & ventilated leather seats, wireless charging'),
(38, 24, '13.4-inch touchscreen with Chevrolet MyLink', 'Heated & ventilated leather seats, wireless charging'),
(39, 25, '13.4-inch touchscreen with Hummer EV Command Center', 'Moonroof, UltraVision camera system'),
(40, 26, '12.3-inch touchscreen, Apple CarPlay & Android Auto', 'Heated & ventilated seats, panoramic sunroof'),
(41, 27, '10-inch touchscreen, Apple CarPlay & Android Auto', 'Cloth seats, manual air conditioning'),
(42, 28, '11.4-inch Pivi Pro touchscreen system', 'Leather upholstery, panoramic sunroof'),
(43, 29, '12.3-inch digital touchscreen with EV navigation', 'Lounge-inspired seating, panoramic roof'),
(44, 30, '56-inch Hyperscreen with AI Learning', 'Executive seats with massage functions, ambient lighting');

-- --------------------------------------------------------

--
-- Table structure for table `recommended_cars`
--

CREATE TABLE `recommended_cars` (
  `id` int(11) NOT NULL,
  `car_id` int(11) NOT NULL,
  `recommended_car_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `recommended_cars`
--

INSERT INTO `recommended_cars` (`id`, `car_id`, `recommended_car_id`) VALUES
(26, 1, 2),
(27, 1, 3),
(28, 1, 4),
(29, 1, 5),
(30, 2, 1),
(31, 2, 3),
(32, 2, 4),
(33, 2, 5),
(34, 3, 1),
(35, 3, 2),
(36, 3, 4),
(37, 3, 5),
(38, 4, 1),
(39, 4, 2),
(40, 4, 3),
(41, 4, 5),
(42, 5, 1),
(43, 5, 2),
(44, 5, 3),
(45, 5, 4),
(46, 6, 7),
(47, 6, 8),
(48, 6, 9),
(49, 6, 10),
(50, 7, 6),
(51, 7, 8),
(52, 7, 9),
(53, 7, 10),
(54, 11, 12),
(55, 11, 13),
(56, 11, 14),
(57, 11, 15),
(58, 12, 11),
(59, 12, 13),
(60, 12, 14),
(61, 12, 15),
(62, 8, 6),
(63, 8, 7),
(64, 8, 9),
(65, 8, 10),
(66, 9, 6),
(67, 9, 7),
(68, 9, 8),
(69, 9, 10),
(70, 10, 6),
(71, 10, 7),
(72, 10, 8),
(73, 10, 9),
(74, 13, 11),
(75, 13, 12),
(76, 13, 14),
(77, 13, 15),
(78, 14, 11),
(79, 14, 12),
(80, 14, 13),
(81, 14, 15),
(82, 15, 11),
(83, 15, 12),
(84, 15, 13),
(85, 15, 14),
(86, 16, 17),
(87, 16, 18),
(88, 16, 19),
(89, 16, 20),
(90, 17, 16),
(91, 17, 18),
(92, 17, 19),
(93, 17, 20),
(94, 18, 16),
(95, 18, 17),
(96, 18, 19),
(97, 18, 20),
(98, 19, 16),
(99, 19, 17),
(100, 19, 18),
(101, 19, 20),
(102, 20, 16),
(103, 20, 17),
(104, 20, 18),
(105, 20, 19),
(106, 21, 22),
(107, 21, 23),
(108, 21, 24),
(109, 21, 25),
(110, 22, 21),
(111, 22, 23),
(112, 22, 24),
(113, 22, 25),
(114, 23, 21),
(115, 23, 22),
(116, 23, 24),
(117, 23, 25),
(118, 24, 21),
(119, 24, 22),
(120, 24, 23),
(121, 24, 25),
(122, 25, 21),
(123, 25, 22),
(124, 25, 23),
(125, 25, 24),
(126, 26, 27),
(127, 26, 28),
(128, 26, 29),
(129, 26, 30),
(130, 27, 26),
(131, 27, 28),
(132, 27, 29),
(133, 27, 30),
(134, 28, 26),
(135, 28, 27),
(136, 28, 29),
(137, 28, 30),
(138, 29, 26),
(139, 29, 27),
(140, 29, 28),
(141, 29, 30),
(142, 30, 26),
(143, 30, 27),
(144, 30, 28),
(145, 30, 29);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `car_images`
--
ALTER TABLE `car_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `car_id` (`car_id`);

--
-- Indexes for table `car_offers`
--
ALTER TABLE `car_offers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `car_id` (`car_id`);

--
-- Indexes for table `car_safety_features`
--
ALTER TABLE `car_safety_features`
  ADD PRIMARY KEY (`id`),
  ADD KEY `car_id` (`car_id`);

--
-- Indexes for table `car_specs`
--
ALTER TABLE `car_specs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `car_id` (`car_id`);

--
-- Indexes for table `car_technology`
--
ALTER TABLE `car_technology`
  ADD PRIMARY KEY (`id`),
  ADD KEY `car_id` (`car_id`);

--
-- Indexes for table `recommended_cars`
--
ALTER TABLE `recommended_cars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `car_id` (`car_id`),
  ADD KEY `recommended_car_id` (`recommended_car_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `car_images`
--
ALTER TABLE `car_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=227;

--
-- AUTO_INCREMENT for table `car_offers`
--
ALTER TABLE `car_offers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `car_safety_features`
--
ALTER TABLE `car_safety_features`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;

--
-- AUTO_INCREMENT for table `car_specs`
--
ALTER TABLE `car_specs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `car_technology`
--
ALTER TABLE `car_technology`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `recommended_cars`
--
ALTER TABLE `recommended_cars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `car_images`
--
ALTER TABLE `car_images`
  ADD CONSTRAINT `car_images_ibfk_1` FOREIGN KEY (`car_id`) REFERENCES `cars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `car_offers`
--
ALTER TABLE `car_offers`
  ADD CONSTRAINT `car_offers_ibfk_1` FOREIGN KEY (`car_id`) REFERENCES `cars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `car_safety_features`
--
ALTER TABLE `car_safety_features`
  ADD CONSTRAINT `car_safety_features_ibfk_1` FOREIGN KEY (`car_id`) REFERENCES `cars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `car_specs`
--
ALTER TABLE `car_specs`
  ADD CONSTRAINT `car_specs_ibfk_1` FOREIGN KEY (`car_id`) REFERENCES `cars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `car_technology`
--
ALTER TABLE `car_technology`
  ADD CONSTRAINT `car_technology_ibfk_1` FOREIGN KEY (`car_id`) REFERENCES `cars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `recommended_cars`
--
ALTER TABLE `recommended_cars`
  ADD CONSTRAINT `recommended_cars_ibfk_1` FOREIGN KEY (`car_id`) REFERENCES `cars` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `recommended_cars_ibfk_2` FOREIGN KEY (`recommended_car_id`) REFERENCES `cars` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
