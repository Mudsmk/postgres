CREATE TABLE subususu(
product_id INT PRIMARY KEY,
product_name VARCHAR,
"price($)" NUMERIC,
quantity_available NUMERIC
);

INSERT INTO subususu(product_id, product_name, "price($)", quantity_available)
VALUES
(121, 'Laptop', 800, 10),
(122, 'Smartphone', 500, 15),
(123, 'Tablet', 300, 20),
(124, 'Headphones', 100, 30),
(125, 'Mouse', 20, 25),
(126, 'Keyboard', 50, 12),
(127, 'Monitor', 200, 8),
(128, 'Printer', 150, 5),
(129, 'Hard Drive', 120, 0),
(130, 'Flash Drive', 10, 3);


SELECT SUM("price($)") AS "Total Price" FROM subususu;

SELECT product_name FROM subususu WHERE "price($)" > 100;

SELECT product_id, product_name, "price($)" FROM subususu WHERE quantity_available = 0;

SELECT product_id, product_name, "price($)" AS "original price","price($)" - "price($)" * 0.1 AS "discounted price" FROM subususu;
SELECT * FROM subususu;