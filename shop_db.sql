CREATE DATABASE IF NOT EXISTS shop_db;
USE shop_db;

CREATE TABLE IF NOT EXISTS categories (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS products (
    id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    stock INT NOT NULL DEFAULT 0,
    category_id INT NOT NULL,
    FOREIGN KEY (category_id) REFERENCES categories(id)
);

INSERT INTO categories (id, name) VALUES
(1, 'Компьютеры'),
(2, 'Аксессуары')
ON DUPLICATE KEY UPDATE name = VALUES(name);

INSERT INTO products (id, title, price, stock, category_id) VALUES
(1, 'Ноутбук 15', 85000.00, 10, 1),
(2, 'Монитор 27', 28000.00, 5, 1),
(3, 'Клавиатура', 6500.00, 20, 2),
(4, 'Мышь беспроводная', 2500.00, 30, 2)
ON DUPLICATE KEY UPDATE
title = VALUES(title),
price = VALUES(price),
stock = VALUES(stock),
category_id = VALUES(category_id);
