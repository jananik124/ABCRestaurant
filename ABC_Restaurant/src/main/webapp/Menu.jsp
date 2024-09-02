<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ABC Restaurant - Order</title>
    <style>
        body {
            background: url('https://wallpapers.com/images/hd/pizza-background-h4hj80ccg7yfkrow.jpg') no-repeat center center/cover;
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            color: #333;
            background-color: #f4f4f4;
        }
        header {
            background-color: #333;
            color: #fff;
            padding: 10px 0;
        }
        header .container {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 0 20px;
        }
        header .logo img {
        width: 100px;
        height: 100px; /* Ensure the height is equal to the width for a perfect circle */
        border-radius: 50%; /* This makes the image round */
        margin-bottom: 5px;
        object-fit: cover; /* Ensures the image covers the entire area */
    }
        header nav {
            display: flex;
        }
        header nav a {
            color: #fff;
            text-decoration: none;
            margin-left: 20px;
            font-size: 18px;
        }
        header nav a:hover {
            text-decoration: underline;
        }
        .section {
            padding: 20px;
            margin: 0 auto;
            max-width: 1200px;
        }
        .dish-container {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
            gap: 20px;
        }
        .dish {
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            margin-bottom: 20px;
            padding: 20px;
            display: flex;
            align-items: center;
        }
        .dish img {
            width: 150px;
            border-radius: 4px;
            margin-right: 20px;
        }
        .dish h3 {
            margin: 0;
        }
        .dish button {
            background-color: #333;
            color: #fff;
            border: none;
            padding: 10px 20px;
            font-size: 16px;
            cursor: pointer;
            border-radius: 4px;
        }
        .dish button:hover {
            background-color: #555;
        }
        footer {
            background-color: #333;
            color: #fff;
            text-align: center;
            padding: 10px 0;
        }
    </style>
</head>
<body>
    <header>
        <div class="container">
            <div class="logo"><img src="Images/ABCLOGO.png" alt="ABC Restaurant"></div>
            <nav>
                <a href="index.jsp">Home</a>
                <a href="Offers.jsp">Offers</a>
                <a href="Contact.jsp">Contact</a>
                <a href="Reservation.jsp">Reservation</a>
                <a href="Gallery.jsp">Gallery</a>
                <a href="Cart.jsp">Cart (<span id="cart-count">0</span>)</a>
            </nav>
        </div>
    </header>
    
    

     <div class="section">
        <h1>Order Dishes</h1>
        <div class="dish-container">
            <div class="dish">
                <img src="https://arthurs.lk/wp-content/uploads/2023/11/mas-party-pizza.png" alt="Mas Party Pizza">
                <div>
                    <h3>Mas Party Pizza</h3>
                    <p>Rs1000.00</p>
                    <button onclick="addToCart('Mas Party Pizza', 1000.00)">Add to Cart</button>
                </div>
            </div>
        <div class="dish">
            <img src="https://arthurs.lk/wp-content/uploads/2023/11/MASKADE-min.png" alt="Dish 2">
            <div>
                <h3>Curry Pork Pizza</h3>
                <p>Rs1750.00</p>
                <button onclick="addToCart('Curry Pork Pizza', 1750.00)">Add to Cart</button>
            </div>
        </div>
        <div class="dish">
            <img src="https://arthurs.lk/wp-content/uploads/2024/02/Bacon.png" alt="Dish 3">
            <div>
                <h3>Pani Bacon Chilli Pizza</h3>
                <p>Rs1800.00</p>
                <button onclick="addToCart('Pani Bacon Chilli Pizza', 1800.00)">Add to Cart</button>
            </div>
        </div>
        <div class="dish">
            <img src="https://arthurs.lk/wp-content/uploads/2019/12/MASKADE-min.png" alt="Dish 2">
            <div>
                <h3>Mas Kade</h3>
                <p>Rs1500.00</p>
                <button onclick="addToCart('Mas Kade', 1500.00)">Add to Cart</button>
            </div>
        </div>
        <div class="dish">
            <img src="https://arthurs.lk/wp-content/uploads/2020/04/mutton-min.png" alt="Dish 2">
            <div>
                <h3>Mutton Amu Miris</h3>
                <p>Rs1500.00</p>
                <button onclick="addToCart('Mutton Amu Miris', 1500.00)">Add to Cart</button>
            </div>
        </div>
        <div class="dish">
            <img src="https://arthurs.lk/wp-content/uploads/2020/05/Bacon-Biththara-min-300x300.png" alt="Dish 2">
            <div>
                <h3>Bacon Biththara</h3>
                <p>Rs1550.00</p>
                <button onclick="addToCart('Bacon Biththara', 1550.00)">Add to Cart</button>
            </div>
        </div>
        <div class="dish">
            <img src="https://arthurs.lk/wp-content/uploads/2020/04/Cheese-Hatharak-min-300x300.png" alt="Dish 2">
            <div>
                <h3>Cheese Hatharak</h3>
                <p>Rs1300.00</p>
                <button onclick="addToCart('Cheese Hatharak', 1300.00)">Add to Cart</button>
            </div>
        </div>
        <div class="dish">
            <img src="https://arthurs.lk/wp-content/uploads/2019/12/Cholesterol-min-300x300.png" alt="Dish 2">
            <div>
                <h3>Pizza Cholesterol</h3>
                <p>Rs1250.00</p>
                <button onclick="addToCart('Pizza Cholesterol', 1250.00)">Add to Cart</button>
            </div>
        </div>
        <div class="dish">
            <img src="https://arthurs.lk/wp-content/uploads/2019/12/salami-min-300x300.png" alt="Dish 2">
            <div>
                <h3>Salami</h3>
                <p>Rs990.00</p>
                <button onclick="addToCart('Salami', 990.00)">Add to Cart</button>
            </div>
        </div>
        <div class="dish">
            <img src="https://arthurs.lk/wp-content/uploads/2020/04/nai-miris-chicken-min-300x300.png" alt="Dish 2">
            <div>
                <h3>Chicken Nai Miris</h3>
                <p>Rs1800.00</p>
                <button onclick="addToCart('Chicken Nai Miris', 1800.00)">Add to Cart</button>
            </div>
        </div>
        <div class="dish">
            <img src="https://arthurs.lk/wp-content/uploads/2020/05/Paneer-Masala-min-1-300x300.png" alt="Dish 2">
            <div>
               
                <h3>Paneer Masala</h3>
                <p>Rs1500.00</p>
                <button onclick="addToCart('Paneer Masala', 1500.00)">Add to Cart</button>
            </div>
        </div>
        <div class="dish">
            <img src="https://arthurs.lk/wp-content/uploads/2020/06/Vegetable-Nai-Miris-min-300x300.png" alt="Dish 2">
            <div>
                <h3>Vegetable Nai Miris</h3>
                <p>Rs1000.00</p>
                <button onclick="addToCart('Vegetable Nai Miris', 1000.00)">Add to Cart</button>
            </div>
        </div>
        <div class="dish">
            <img src="https://arthurs.lk/wp-content/uploads/2020/06/bbq-min-300x300.png" alt="Dish 2">
            <div>
                <h3>Chicken BBQ</h3>
                <p>Rs1200.00</p>
                <button onclick="addToCart('Chicken BBQ', 1200.00)">Add to Cart</button>
            </div>
        </div>
        <div class="dish">
            <img src="https://arthurs.lk/wp-content/uploads/2019/12/Margherita-Pizza-min-300x300.png" alt="Dish 2">
            <div>
                <h3>Margherita Pizza</h3>
                <p>Rs1560.00</p>
                <button onclick="addToCart('Margherita Pizza', 1560.00)">Add to Cart</button>
            </div>
        </div>
        <div class="dish">
            <img src="https://arthurs.lk/wp-content/uploads/2019/12/sasuage-min-300x300.png" alt="Dish 2">
            <div>
                <h3>Chicken Sausage</h3>
                <p>Rs1600.00</p>
                <button onclick="addToCart('Chicken Sausage', 1600.00)">Add to Cart</button>
            </div>
        </div>
        <div class="dish">
            <img src="https://arthurs.lk/wp-content/uploads/2024/02/Bacon-300x300.png" alt="Dish 2">
            <div>
                <h3>9-Inch Pani Bacon Pizza</h3>
                <p>Rs1300.00</p>
                <button onclick="addToCart('9-Inch Pani Bacon Pizza', 1300.00)">Add to Cart</button>
            </div>
        </div>
        <div class="dish">
            <img src="https://arthurs.lk/wp-content/uploads/2024/01/chicken-naimiris-300x300.png" alt="Dish 2">
            <div>
                <h3>9-inch Chicken Naimiris Pizza</h3>
                <p>Rs1450.00</p>
                <button onclick="addToCart('9-inch Chicken Naimiris Pizza', 1450.00)">Add to Cart</button>
            </div>
        </div>
        <div class="dish">
            <img src="https://arthurs.lk/wp-content/uploads/2024/01/curry-pork-300x300.png" alt="Dish 2">
            <div>
                <h3>9-inch Curry pork Pizza</h3>
                <p>Rs1300.00</p>
                <button onclick="addToCart('9-inch Curry pork Pizza', 1300.00)">Add to Cart</button>
            </div>
        </div>
        <div class="dish">
            <img src="https://arthurs.lk/wp-content/uploads/2024/01/margerita-300x300.png" alt="Dish 2">
            <div>
                <h3>9-inch MAGARITA Pizza</h3>
                <p>Rs1400.00</p>
                <button onclick="addToCart('9-inch MAGARITA Pizza', 1400.00)">Add to Cart</button>
            </div>
        </div>
        <div class="dish">
            <img src="https://arthurs.lk/wp-content/uploads/2019/12/MASKADE-min-300x300.png" alt="Dish 2">
            <div>
                <h3>9-Inch Mas Kade Pizza</h3>
                <p>Rs1100.00</p>
                <button onclick="addToCart('9-Inch Mas Kade Pizza', 1100.00)">Add to Cart</button>
            </div>
        </div>
        <div class="dish">
            <img src="https://arthurs.lk/wp-content/uploads/2020/06/bbq-min-300x300.png" alt="Dish 2">
            <div>
                <h3>9-Inch Chicken BBQ Pizza</h3>
                <p>Rs1300.00</p>
                <button onclick="addToCart('9-Inch Chicken BBQ Pizza', 1300.00)">Add to Cart</button>
            </div>
        </div>
        <div class="dish">
            <img src="https://arthurs.lk/wp-content/uploads/2019/12/sasuage-min.png" alt="Dish 2">
            <div>
                <h3>9-Inch Chicken Sausage Pizza</h3>
                <p>Rs1250.00</p>
                <button onclick="addToCart('9-Inch Chicken Sausage Pizza', 1250.00)">Add to Cart</button>
            </div>
        </div>
        </div>
        <h1>Drinks</h1>
        <div class="dish-container">
            <div class="dish">
                <img src="https://images.lifestyleasia.com/wp-content/uploads/sites/7/2023/06/06212441/Low-calorie-beers-4-1600x900.jpg?tr=w-1366" alt="Beer">
                <div>
                    <h3>Beer</h3>
                    <p>Rs1000.00</p>
                    <button onclick="addToCart('Beer', 1000.00)">Add to Cart</button>
                </div>
            </div>
        <div class="dish">
            <img src="https://img.freepik.com/premium-photo/elegant-red-wine-lafite-goblet-romantic-moments_756535-4158.jpg" alt="Dish 1">
            <div>
                <h3>Red Wine</h3>
                <p>Rs1000.00</p>
                <button onclick="addToCart('Red Wine', 1000.00)">Add to Cart</button>
            </div>
        </div>
        <div class="dish">
            <img src="https://img.freepik.com/premium-photo/glass-white-wine-wooden-table-with-bokeh-lights-background_67394-1440.jpg" alt="Dish 1">
            <div>
                <h3>White Wine</h3>
                <p>Rs1000.00</p>
                <button onclick="addToCart('White Wine', 1000.00)">Add to Cart</button>
            </div>
        </div>
        <div class="dish">
            <img src="https://www.shefinds.com/files/2018/01/321Soda-2.jpg" alt="Dish 1">
            <div>
                <h3>Soda</h3>
                <p>Rs1000.00</p>
                <button onclick="addToCart('Soda', 1000.00)">Add to Cart</button>
            </div>
        </div>
        <div class="dish">
            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLctvEO0UFJehBr4YMZThREWvqTg45mmXSQQ&s" alt="Dish 1">
            <div>
                <h3>Iced Tea</h3>
                <p>Rs1000.00</p>
                <button onclick="addToCart('Iced Tea', 1000.00)">Add to Cart</button>
            </div>
        </div>
        <div class="dish">
            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTGAcgkEVFdSF_BxLDGCJ47iAlnpczpn7Gq-9qppPKf8f-DBFt4udp5wUaa9YjCqJGCfbo&usqp=CAU" alt="Dish 1">
            <div>
                <h3>Lemonade</h3>
                <p>Rs1000.00</p>
                <button onclick="addToCart('Lemonade', 1000.00)">Add to Cart</button>
            </div>
        </div>
        <div class="dish">
            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMv6G6f-WVMUGDeebBf4wU6X5PTHN-nRxswF9sByaLUmAcsUbw4HfZIfw1UEBCNTxfJdk&usqp=CAU" alt="Dish 1">
            <div>
                <h3>Negroni Cocktail</h3>
                <p>Rs1000.00</p>
                <button onclick="addToCart('Negroni Cocktail', 1000.00)">Add to Cart</button>
            </div>
        </div>
        <div class="dish">
            <img src="https://abeautifulmess.com/wp-content/uploads/2023/09/Margarita-Cocktail-1.jpg" alt="Dish 1">
            <div>
                <h3>Margarita Cocktail</h3>
                <p>Rs1000.00</p>
                <button onclick="addToCart('Margarita Cocktail', 1000.00)">Add to Cart</button>
            </div>
        </div>
        <div class="dish">
            <img src="https://crystella.com/wp-content/uploads/2023/07/b07c0eb5-daed-48ec-b7c6-a69791a82a55.jpeg" alt="Dish 1">
            <div>
                <h3>Sparkling Water</h3>
                <p>Rs1000.00</p>
                <button onclick="addToCart('Sparkling Water', 1000.00)">Add to Cart</button>
            </div>
        </div>
    </div>
    </div>

    <footer>
        <p>&copy; 2024 ABC Restaurant. All rights reserved.</p>
    </footer>

    <script>
        function addToCart(dishName, price) {
            // Get existing cart data from localStorage
            let cart = JSON.parse(localStorage.getItem('cart')) || [];
            
            // Add new item to cart
            cart.push({ name: dishName, price: price, quantity: 1 });

            // Save updated cart data to localStorage
            localStorage.setItem('cart', JSON.stringify(cart));

            // Update cart count
            document.getElementById('cart-count').innerText = cart.length;
        }

        // Update cart count on page load
        window.onload = function() {
            let cart = JSON.parse(localStorage.getItem('cart')) || [];
            document.getElementById('cart-count').innerText = cart.length;
        };
    </script>
</body>
</html>
