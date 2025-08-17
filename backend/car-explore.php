<php
$page_css = 'car-explore.css';
include 'includes/header.php';
?>

    <section class="hero">
        <h1>Explore Vehicles</h1>
        <div class="filter">
            <label for="category"><strong>Filter by Category:</strong></label>
            <select id="category">
                <option value="#">-- Select Category --</option>
                <option value="#classic-cars">Classic Cars</option>
                <option value="#electric-cars">Electric Cars</option>
                <option value="#luxury-cars">Luxury Cars</option>
                <option value="#exotic-cars">Exotic Cars</option>
                <option value="#trucks">Trucks</option>
                <option value="#suvs">SUVs</option>  
            </select>
        </div>
    </section>

    <section id="featured-vehicles">
        <!-- Classic Cars -->
        <section id="classic-cars">
            <h2>Classic Cars</h2>
            <div class="vehicle-list">
                <div class="vehicle">
                    <a href="car-details.html?car=jaguar-e-type">
                        <img src="assets/images/jaguar-e-type.jpg" alt="Jaguar E-Type">
                    </a>
                    <p>Jaguar E-Type | 1965 | $55,000</p>
                    <a href="car-details.html?car=jaguar-e-type"><button>View Details</button></a>
                </div>
                <div class="vehicle">
                    <a href="car-details.html?car=ford-mustang">
                        <img src="assets/images/ford-mustang.jpg" alt="Ford Mustang">
                    </a>
                    <p>Ford Mustang | 1967 | $45,000</p>
                    <a href="car-details.html?car=ford-mustang"><button>View Details</button></a>
                </div>
                <div class="vehicle">
                    <a href="car-details.html?car=ferrari-250-gto">
                        <img src="assets/images/ferrari-250-gto.jpg" alt="Ferrari 250 GTO">
                    </a>
                    <p>Ferrari 250 GTO | 1962 | $50,000,000</p>
                    <a href="car-details.html?car=ferrari-250-gto"><button>View Details</button></a>
                </div>
                <div class="vehicle">
                    <a href="car-details.html?car=porsche-911">
                        <img src="assets/images/porsche-911.jpg" alt="Porsche 911 Carrera">
                    </a>
                    <p>Porsche 911 Carrera | 1973 | $60,000</p>
                    <a href="car-details.html?car=porsche-911"><button>View Details</button></a>
                </div>
                <div class="vehicle">
                    <a href="car-details.html?car=aston-martin-db5">
                        <img src="assets/images/aston-martin-db5.jpg" alt="Aston Martin DB5">
                    </a>
                    <p>Aston Martin DB5 | 1964 | $990,000</p>
                    <a href="car-details.html?car=aston-martin-db5"><button>View Details</button></a>
                </div>
            </div>
        </section>

        <!-- Electric Cars -->

        <section id="electric-cars">
            <h2>Electric Cars</h2>
            <div class="vehicle-list">
                <div class="vehicle">
                    <a href="car-details.html?car=tesla-model-s">
                        <img src="assets/images/tesla-model-s.jpg" alt="Tesla Model S">
                    </a>
                    <p>Tesla Model S | 2025 | $80,000</p>
                    <a href="car-details.html?car=tesla-model-s"><button>View Details</button></a>
                </div>
                <div class="vehicle">
                    <a href="car-details.html?car=bmw-ix3">
                        <img src="assets/images/bmw-ix3.jpg" alt="BMW iX3">
                    </a>
                    <p>BMW iX3 | 2025 | $65,000</p>
                    <a href="car-details.html?car=bmw-ix3"><button>View Details</button></a>
                </div>
                <div class="vehicle">
                    <a href="car-details.html?car=cupra-raval">
                        <img src="assets/images/cupra-raval.jpg" alt="Cupra Raval">
                    </a>
                    <p>Cupra Raval | 2025 | $40,000</p>
                    <a href="car-details.html?car=cupra-raval"><button>View Details</button></a>
                </div>
                <div class="vehicle">
                    <a href="car-details.html?car=nissan-leaf">
                        <img src="assets/images/nissan-leaf.jpg" alt="Nissan Leaf">
                    </a>
                    <p>Nissan Leaf | 2025 | $32,000</p>
                    <a href="car-details.html?car=nissan-leaf"><button>View Details</button></a>
                </div>
                <div class="vehicle">
                    <a href="car-details.html?car=mercedes-eqe-suv">
                        <img src="assets/images/mercedes-eqe-suv.jpg" alt="Mercedes-Benz EQE SUV">
                    </a>
                    <p>Mercedes-Benz EQE SUV | 2025 | $90,000</p>
                    <a href="car-details.html?car=mercedes-eqe-suv"><button>View Details</button></a>
                </div>
            </div>
        </section>

        <!-- Luxury Cars -->

        <section id="luxury-cars">
            <h2>Luxury Cars</h2>
            <div class="vehicle-list">
                <div class="vehicle">
                    <a href="car-details.html?car=rolls-royce-phantom">
                        <img src="assets/images/rolls-royce-phantom.jpg" alt="Rolls-Royce Phantom">
                    </a>
                    <p>Rolls-Royce Phantom | 2025 | $500,000</p>
                    <a href="car-details.html?car=rolls-royce-phantom"><button>View Details</button></a>
                </div>
                <div class="vehicle">
                    <a href="car-details.html?car=bentley-continental">
                        <img src="assets/images/bentley-continental.jpg" alt="Bentley Continental GT">
                    </a>
                    <p>Bentley Continental GT | 2025 | $250,000</p>
                    <a href="car-details.html?car=bentley-continental"><button>View Details</button></a>
                </div>
                <div class="vehicle">
                    <a href="car-details.html?car=mercedes-maybach">
                        <img src="assets/images/mercedes-maybach.jpg" alt="Mercedes-Maybach S-Class">
                    </a>
                    <p>Mercedes-Maybach S-Class | 2025 | $200,000</p>
                    <a href="car-details.html?car=mercedes-maybach"><button>View Details</button></a>
                </div>
                <div class="vehicle">
                    <a href="car-details.html?car=bmw-7series">
                        <img src="assets/images/bmw-7series.jpg" alt="BMW 7 Series">
                    </a>
                    <p>BMW 7 Series | 2025 | $160,000</p>
                    <a href="car-details.html?car=bmw-7series"><button>View Details</button></a>
                </div>
                <div class="vehicle">
                    <a href="car-details.html?car=audi-a8">
                        <img src="assets/images/audi-a8.jpg" alt="Audi A8 L">
                    </a>
                    <p>Audi A8 L | 2025 | $150,000</p>
                    <a href="car-details.html?car=audi-a8"><button>View Details</button></a>
                </div>
            </div>
        </section>

        <!-- Exotic Cars -->
        
        <section id="exotic-cars">
            <h2>Exotic Cars</h2>
            <div class="vehicle-list">
                <div class="vehicle">
                    <a href="car-details.html?car=lamborghini-huracan">
                        <img src="assets/images/lamborghini-huracan.jpg" alt="Lamborghini Huracan">
                    </a>
                    <p>Lamborghini Huracan | 2025 | $250,000</p>
                    <a href="car-details.html?car=lamborghini-huracan"><button>View Details</button></a>
                </div>
                <div class="vehicle">
                    <a href="car-details.html?car=aston-martin-vanquish">
                        <img src="assets/images/aston-martin-vanquish.jpg" alt="Aston Martin Vanquish">
                    </a>
                    <p>Aston Martin Vanquish | 2025 | $300,000</p>
                    <a href="car-details.html?car=aston-martin-vanquish"><button>View Details</button></a>
                </div>
                <div class="vehicle">
                    <a href="car-details.html?car=ferrari-sf90">
                        <img src="assets/images/ferrari-sf90.jpg" alt="Ferrari SF90 Stradale">
                    </a>
                    <p>Ferrari SF90 Stradale | 2025 | $450,000</p>
                    <a href="car-details.html?car=ferrari-sf90"><button>View Details</button></a>
                </div>
                <div class="vehicle">
                    <a href="car-details.html?car=mclaren-artura">
                        <img src="assets/images/mclaren-artura.jpg" alt="McLaren Artura">
                    </a>
                    <p>McLaren Artura | 2025 | $250,000</p>
                    <a href="car-details.html?car=mclaren-artura"><button>View Details</button></a>
                </div>
                <div class="vehicle">
                    <a href="car-details.html?car=bugatti-chiron">
                        <img src="assets/images/bugatti-chiron.jpg" alt="Bugatti Chiron">
                    </a>
                    <p>Bugatti Chiron | 2025 | $3,000,000</p>
                    <a href="car-details.html?car=bugatti-chiron"><button>View Details</button></a>
                </div>
            </div>
        </section>

        <!-- Trucks -->
        <section id="trucks">
            <h2>Trucks</h2>
            <div class="vehicle-list">
                <div class="vehicle">
                    <a href="car-details.html?car=ford-ranger">
                        <img src="assets/images/ford-ranger.jpg" alt="Ford Ranger PHEV">
                    </a>
                    <p>Ford Ranger PHEV | 2025 | $42,000</p>
                    <a href="car-details.html?car=ford-ranger"><button>View Details</button></a>
                </div>
                <div class="vehicle">
                    <a href="car-details.html?car=ford-f150">
                        <img src="assets/images/ford-f150.jpg" alt="Ford F-150">
                    </a>
                    <p>Ford F-150 | 2025 | $40,000</p>
                    <a href="car-details.html?car=ford-f150"><button>View Details</button></a>
                </div>
                <div class="vehicle">
                    <a href="car-details.html?car=gmc-sierra-1500">
                        <img src="assets/images/gmc-sierra-1500.jpg" alt="GMC Sierra 1500">
                    </a>
                    <p>GMC Sierra 1500 | 2025 | $50,000</p>
                    <a href="car-details.html?car=gmc-sierra-1500"><button>View Details</button></a>
                </div>
                <div class="vehicle">
                    <a href="car-details.html?car=chevrolet-silverado-1500">
                        <img src="assets/images/chevrolet-silverado-1500.jpg" alt="Chevrolet Silverado 1500">
                    </a>
                    <p>Chevrolet Silverado 1500 | 2025 | $47,000</p>
                    <a href="car-details.html?car=chevrolet-silverado-1500"><button>View Details</button></a>
                </div>
                <div class="vehicle">
                    <a href="car-details.html?car=gmc-hummer">
                        <img src="assets/images/gmc-hummer.jpg" alt="GMC Hummer EV">
                    </a>
                    <p>GMC Hummer EV | 2025 | $110,000</p>
                    <a href="car-details.html?car=gmc-hummer"><button>View Details</button></a>
                </div>
            </div>
        </section>

        <!-- SUVs -->
        <section id="suvs">
            <h2>SUVs</h2>
            <div class="vehicle-list">
                <div class="vehicle">
                    <a href="car-details.html?car=toyota-highlander">
                        <img src="assets/images/toyota-highlander.jpg" alt="Toyota Highlander">
                    </a>
                    <p>Toyota Highlander | 2025 | $38,000</p>
                    <a href="car-details.html?car=toyota-highlander"><button>View Details</button></a>
                </div>
                <div class="vehicle">
                    <a href="car-details.html?car=dacia-bigster">
                        <img src="assets/images/dacia-bigster.jpg" alt="Dacia Bigster">
                    </a>
                    <p>Dacia Bigster | 2025 | $30,000</p>
                    <a href="car-details.html?car=dacia-bigster"><button>View Details</button></a>
                </div>
                <div class="vehicle">
                    <a href="car-details.html?car=land-rover-defender">
                        <img src="assets/images/land-rover-defender.jpg" alt="Land Rover Defender">
                    </a>
                    <p>Land Rover Defender | 2025 | $55,000</p>
                    <a href="car-details.html?car=land-rover-defender"><button>View Details</button></a>
                </div>
                <div class="vehicle">
                    <a href="car-details.html?car=hyundai-ioniq7">
                        <img src="assets/images/hyundai-ioniq7.jpg" alt="Hyundai Ioniq 7">
                    </a>
                    <p>Hyundai Ioniq 7 | 2025 | $45,000</p>
                    <a href="car-details.html?car=hyundai-ioniq7"><button>View Details</button></a>
                </div>
                <div class="vehicle">
                    <a href="car-details.html?car=mercedes-eqs">
                        <img src="assets/images/mercedes-eqs.jpg" alt="Mercedes-Benz EQS SUV">
                    </a>
                    <p>Mercedes-Benz EQS SUV | 2025 | $120,000</p>
                    <a href="car-details.html?car=mercedes-eqs"><button>View Details</button></a>
                </div>
            </div>
        </section>
    </section>
    
<php 
$page_js = "car-explore.js";
include 'includes/footer.php';
?>
