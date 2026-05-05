CREATE TABLE dresses(
dress_id SERIAL PRIMARY KEY,
dress_name VARCHAR,
siz CHAR,
color VARCHAR,
price NUMERIC,
quantity INT
);

INSERT INTO dresses(dress_name, siz, color, price, quantity)
VALUES
('Floral Maxi Dress', 'M', 'Blue', 49000, 50),
('Striped Midi Dress', 'S', 'Black/White', 39000, 30),
('Off-Shoulder Ruffle Dress', 'L', 'Red', 60000, 20),
('Checked Shirts', 'M', 'Red', 27500, 15);

UPDATE dresses SET price = price + 0.1 * price;

UPDATE dresses SET quantity = quantity - 1 WHERE dress_id = 1;
UPDATE dresses SET quantity = quantity - 1 WHERE dress_id = 2;

CREATE VIEW vDelete AS SELECT * FROM dresses WHERE quantity > 0;
SELECT * FROM vDelete;

SELECT * FROM dresses;

CREATE TABLE studentz(
id INT PRIMARY KEY,
name TEXT,
age INT,
grade TEXT
);

ALTER TABLE studentz ADD COLUMN email TEXT;

DROP TABLE studentz;

CREATE TABLE emp(
emp_id INT,
emp_name TEXT,
department TEXT,
salary NUMERIC NOT NULL
);

ALTER TABLE emp ADD CONSTRAINT emp_pk PRIMARY KEY (emp_id);

CREATE TABLE dept(
dept_id INT PRIMARY KEY,
dept_name TEXT
);

ALTER TABLE emp ADD CONSTRAINT emp_dept_fk FOREIGN KEY (emp_id) REFERENCES dept(dept_id);


CREATE TABLE productx (
    product_id INT,
    product_name VARCHAR,
    category VARCHAR,
    price DECIMAL
);

CREATE TABLE customer_orders (
    order_id INT,
    customer_id INT,
    product_id INT,
    quantity INT,
    order_date DATE
);

INSERT INTO productx (product_id, product_name, category, price) VALUES
(1, 'Cooker', 'Electronics', 899.99),
(2, 'Power bank', 'Electronics', 499.99),
(3, 'External HDD', 'Electronics', 79.99),
(4, 'Shorts', 'Apparel', 19.99),
(5, 'Trousers', 'Apparel', 39.99),
(6, 'Boots', 'Apparel', 59.99),
(7, 'Centre table', 'Furniture', 149.99),
(8, 'Sofa', 'Furniture', 799.99);

INSERT INTO customer_orders (order_id, customer_id, product_id, quantity, order_date) VALUES
(1, 101, 1, 2, '2024-03-20'),
(2, 102, 3, 1, '2024-03-21'),
(3, 103, 5, 3, '2024-03-22'),
(4, 105, 7, 1, '2024-03-23'),
(5, 106, 4, 2, '2024-03-23'),
(6, 108, 8, 1, '2024-03-24'),
(7, 109, 8, 2, '2024-03-25'),
(8, 110, 1, 1, '2024-03-25');

SELECT p.category, SUM(p.price * co.quantity) AS total_sales
FROM productx p
JOIN customer_orders co ON p.product_id = co.product_id
GROUP BY p.category;

SELECT p.product_name, SUM(co.quantity) AS total_quantity_sold
FROM productx p
JOIN customer_orders co ON p.product_id = co.product_id
GROUP BY p.product_name
ORDER BY total_quantity_sold DESC
LIMIT 5;

SELECT co.customer_id, SUM(p.price * co.quantity) AS total_order_amount
FROM customer_orders co
JOIN productx p ON co.product_id = p.product_id
GROUP BY co.customer_id
HAVING SUM(p.price * co.quantity) > 500.00;

SELECT * 
FROM productx 
WHERE product_name LIKE '%organic%';

SELECT * 
FROM productx 
WHERE price < 499;



