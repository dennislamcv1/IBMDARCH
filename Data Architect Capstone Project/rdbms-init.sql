-- Create the database
CREATE DATABASE IF NOT EXISTS products;

-- Use the created database
USE products;

-- Create the catalog table
CREATE TABLE IF NOT EXISTS catalog (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(255) NOT NULL,
    category VARCHAR(100),
    size VARCHAR(50),
    color VARCHAR(50),
    price DECIMAL(10, 2) NOT NULL,
    quantity_in_stock INT DEFAULT 0,
    date_added TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Insert 100 sample rows into the catalog table
INSERT INTO catalog (product_name, category, size, color, price, quantity_in_stock) VALUES
('T-Shirt', 'Clothing', 'M', 'Red', 19.99, 100),
('Jeans', 'Clothing', 'L', 'Blue', 49.99, 50),
('Jacket', 'Outerwear', 'M', 'Black', 89.99, 30),
('Sneakers', 'Footwear', '8', 'White', 59.99, 200),
('Sweater', 'Clothing', 'L', 'Grey', 29.99, 75),
('Dress', 'Clothing', 'S', 'Black', 59.99, 20),
('Hoodie', 'Clothing', 'M', 'Navy', 39.99, 150),
('Shorts', 'Clothing', 'L', 'Khaki', 25.99, 80),
('Scarf', 'Accessories', 'One Size', 'Red', 15.99, 200),
('Gloves', 'Accessories', 'One Size', 'Black', 9.99, 150),
('Boots', 'Footwear', '9', 'Brown', 89.99, 40),
('T-Shirt', 'Clothing', 'S', 'Green', 17.99, 120),
('Leggings', 'Clothing', 'M', 'Black', 29.99, 130),
('Cap', 'Accessories', 'One Size', 'Blue', 19.99, 90),
('Socks', 'Accessories', 'One Size', 'White', 5.99, 500),
('Blouse', 'Clothing', 'M', 'White', 39.99, 70),
('Skirt', 'Clothing', 'S', 'Pink', 24.99, 60),
('Sweater', 'Clothing', 'XL', 'Beige', 35.99, 50),
('Raincoat', 'Outerwear', 'L', 'Yellow', 69.99, 30),
('Polo', 'Clothing', 'M', 'Red', 22.99, 200),
('Cargo Pants', 'Clothing', 'L', 'Olive', 34.99, 80),
('Blazer', 'Clothing', 'L', 'Black', 89.99, 40),
('Chinos', 'Clothing', 'M', 'Navy', 45.99, 90),
('Boots', 'Footwear', '10', 'Black', 79.99, 60),
('Sneakers', 'Footwear', '7', 'Grey', 69.99, 100),
('Shirt', 'Clothing', 'S', 'Blue', 27.99, 75),
('Puffer Jacket', 'Outerwear', 'M', 'Red', 99.99, 25),
('Tank Top', 'Clothing', 'S', 'White', 14.99, 150),
('Joggers', 'Clothing', 'M', 'Black', 39.99, 120),
('Tracksuit', 'Clothing', 'L', 'Black', 59.99, 60),
('Fleece Jacket', 'Outerwear', 'XL', 'Grey', 79.99, 35),
('Rain Boots', 'Footwear', '8', 'Yellow', 39.99, 100),
('Linen Shirt', 'Clothing', 'L', 'White', 45.99, 50),
('Wool Sweater', 'Clothing', 'S', 'Brown', 60.00, 40),
('Beanie', 'Accessories', 'One Size', 'Grey', 12.99, 120),
('Cardigan', 'Clothing', 'M', 'Beige', 49.99, 30),
('Chukka Boots', 'Footwear', '9', 'Tan', 69.99, 100),
('Windbreaker', 'Outerwear', 'S', 'Black', 45.99, 75),
('Flannel Shirt', 'Clothing', 'M', 'Red/Black', 34.99, 60),
('V-neck T-Shirt', 'Clothing', 'L', 'Grey', 22.99, 110),
('Leather Jacket', 'Outerwear', 'M', 'Brown', 199.99, 15),
('Ankle Boots', 'Footwear', '8', 'Black', 79.99, 80),
('Wristwatch', 'Accessories', 'One Size', 'Silver', 99.99, 50),
('Belt', 'Accessories', 'One Size', 'Black', 18.99, 200),
('Slip-ons', 'Footwear', '7', 'White', 39.99, 120),
('Sundress', 'Clothing', 'M', 'Floral', 44.99, 30),
('Peacoat', 'Outerwear', 'S', 'Navy', 129.99, 25),
('Cargo Shorts', 'Clothing', 'L', 'Grey', 27.99, 100),
('Sweatpants', 'Clothing', 'M', 'Black', 28.99, 110),
('Running Shoes', 'Footwear', '9', 'Blue', 89.99, 150),
('Sunglasses', 'Accessories', 'One Size', 'Black', 29.99, 90),
('Sport Bra', 'Clothing', 'M', 'Pink', 19.99, 150),
('Flip Flops', 'Footwear', '8', 'Blue', 14.99, 200),
('Sports Shorts', 'Clothing', 'M', 'Grey', 22.99, 120),
('Thermal Shirt', 'Clothing', 'L', 'Black', 49.99, 50),
('Wrap Dress', 'Clothing', 'S', 'Blue', 55.99, 40),
('Chinos', 'Clothing', 'XL', 'Khaki', 44.99, 70),
('Moccasins', 'Footwear', '9', 'Brown', 49.99, 60),
('Gaiters', 'Accessories', 'One Size', 'Green', 25.99, 30),
('Thermal Socks', 'Accessories', 'One Size', 'Red', 12.99, 100),
('Fleece Pants', 'Clothing', 'L', 'Grey', 39.99, 80),
('Bermuda Shorts', 'Clothing', 'L', 'Beige', 29.99, 100),
('Chiffon Blouse', 'Clothing', 'M', 'White', 39.99, 70),
('Clogs', 'Footwear', '8', 'Black', 39.99, 50),
('Wool Hat', 'Accessories', 'One Size', 'Pink', 15.99, 80),
('Track Pants', 'Clothing', 'L', 'Black', 34.99, 90),
('Hiking Boots', 'Footwear', '10', 'Brown', 129.99, 40),
('Skater Dress', 'Clothing', 'S', 'Purple', 55.99, 30),
('Mesh T-Shirt', 'Clothing', 'M', 'Black', 21.99, 130),
('Casual Loafers', 'Footwear', '7', 'Tan', 59.99, 60),
('Leggings', 'Clothing', 'L', 'Black', 24.99, 200),
('Bootcut Jeans', 'Clothing', 'M', 'Blue', 54.99, 80),
('Straw Hat', 'Accessories', 'One Size', 'Beige', 19.99, 50),
('Sweatshirt', 'Clothing', 'S', 'Red', 39.99, 120),
('Peacoat', 'Outerwear', 'M', 'Gray', 129.99, 50),
('Robe', 'Clothing', 'L', 'White', 59.99, 70),
('Ankle Socks', 'Accessories', 'One Size', 'White', 4.99, 300),
('Flip Flops', 'Footwear', '9', 'Yellow', 18.99, 150),
('Pajama Set', 'Clothing', 'M', 'Pink', 39.99, 90),
('Snow Boots', 'Footwear', '8', 'Pink', 99.99, 25),
('Shirt Dress', 'Clothing', 'S', 'Light Blue', 45.99, 40),
('Cargo Pants', 'Clothing', 'M', 'Black', 49.99, 60),
('Dress Shoes', 'Footwear', '10', 'Black', 75.99, 45),
('Knitted Hat', 'Accessories', 'One Size', 'Red', 14.99, 200),
('Slippers', 'Footwear', '7', 'Pink', 22.99, 120),
('Rugby Shirt', 'Clothing', 'L', 'Green', 39.99, 60),
('Skater Shoes', 'Footwear', '8', 'Red', 54.99, 90),
('Bandana', 'Accessories', 'One Size', 'Black', 9.99, 100),
('Sport Shorts', 'Clothing', 'S', 'Yellow', 18.99, 130),
('Wrap Skirt', 'Clothing', 'L', 'White', 39.99, 50),
('Biker Jacket', 'Outerwear', 'M', 'Black', 149.99, 20),
('Knee-high Boots', 'Footwear', '8', 'Brown', 99.99, 70),
('Chino Shorts', 'Clothing', 'M', 'Blue', 29.99, 100);
