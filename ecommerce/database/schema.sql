CREATE DATABASE ecommerce;
USE ecommerce;

CREATE TABLE users (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(50),
  email VARCHAR(80) UNIQUE,
  password VARCHAR(50),
  role ENUM('ADMIN','SELLER','BUYER')
);

CREATE TABLE products (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(80),
  description VARCHAR(200),
  price DECIMAL(10,2),
  stock INT,
  seller_id INT,
  FOREIGN KEY (seller_id) REFERENCES users(id)
);

CREATE TABLE orders (
  id INT AUTO_INCREMENT PRIMARY KEY,
  buyer_id INT,
  product_id INT,
  quantity INT,
  status VARCHAR(20) DEFAULT 'Placed',
  order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (buyer_id) REFERENCES users(id),
  FOREIGN KEY (product_id) REFERENCES products(id)
);

INSERT INTO users (name, email, password, role) VALUES
('Admin', 'admin@shop.com', 'admin123', 'ADMIN'),
('Meera', 'meera@shop.com', 'seller123', 'SELLER'),
('Aarav', 'aarav@shop.com', 'buyer123', 'BUYER');