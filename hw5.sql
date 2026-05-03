CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10, 2)
);

CREATE TABLE customer_order (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT REFERENCES products(product_id),
    quantity INT,
    order_date DATE
);

INSERT INTO products (product_id, product_name, category, price) VALUES
(1, 'Laptop', 'Electronics', 899.99),
(2, 'Smartphone', 'Electronics', 499.99),
(3, 'Headphones', 'Electronics', 79.99),
(4, 'T-shirt', 'Apparel', 19.99),
(5, 'Jeans', 'Apparel', 39.99),
(6, 'Sneakers', 'Apparel', 59.99),
(7, 'Bookshelf', 'Furniture', 149.99),
(8, 'Sofa', 'Furniture', 799.99),
(9, 'Dining Table', 'Furniture', 299.99);

INSERT INTO customer_order (order_id, customer_id, product_id, quantity, order_date) VALUES
(1, 101, 1, 2, '2024-03-20'),
(2, 102, 3, 1, '2024-03-21'),
(3, 103, 5, 3, '2024-03-22'),
(4, 105, 7, 1, '2024-03-23'),
(5, 106, 4, 2, '2024-03-23'),
(6, 108, 8, 1, '2024-03-24'),
(7, 109, 9, 2, '2024-03-25'),
(8, 110, 1, 1, '2024-03-25');

SELECT p.category, SUM(p.price * o.quantity) AS total_sales_amount
FROM products p
JOIN customer_order o ON p.product_id = o.product_id
GROUP BY p.category;

SELECT p.product_name, SUM(o.quantity) AS total_quantity_sold
FROM products p
JOIN customer_order o ON p.product_id = o.product_id
GROUP BY p.product_name
ORDER BY total_quantity_sold DESC
LIMIT 5;

SELECT o.customer_id, SUM(p.price * o.quantity) AS total_order_amount
FROM customer_order o
JOIN products p ON o.product_id = p.product_id
GROUP BY o.customer_id
HAVING SUM(p.price * o.quantity) > 500.00;

SELECT *
FROM products
WHERE product_name ILIKE '%organic%';

ALTER TABLE products ADD COLUMN stock_quantity INT DEFAULT 15;

SELECT *
FROM products
WHERE stock_quantity < 10;