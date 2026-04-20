CREATE TABLE product(product_id int PRIMARY KEY,
product_name varchar,
price numeric,
quantity_available int
);

INSERT INTO product(product_id, product_name, price, quantity_available)
VALUES
(121, 'Laptop', 800, 10),
(122, 'Smartphone', 500, 15),
(123, 'Tablet', 300, 20),
(124, 'Headphones', 100, 30),
(125, 'Mouse', 20, 25),
(126, 'Keyboard', 50, 12),
(127, 'Monitor', 200, 8),
(128, 'Printer', 150, 5),
(129, 'External Hard Drives', 120, 0),
(130, 'USB Flash Drive', 10, 3);

SELECT SUM(price) as Total FROM product;
SELECT MIN(price) as Cheapest FROM product;
SELECT MAX(price) as Expensive FROM product;
SELECT AVG(price) as Average FROM product;
SELECT COUNT(product_name) as CT FROM product;

SELECT product_id, product_name, price, quantity_available, price*quantity_available as Amount FROM product;

SELECT product_id, product_name, price, quantity_available
FROM product
WHERE product_id >= 125 AND product_id < 129;

SELECT * from product offset 4 limit 4;

SELECT * from product WHERE price BETWEEN 200 AND  500;


SELECT * FROM product