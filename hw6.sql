CREATE TABLE productx (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    price DECIMAL(10, 2),
    category VARCHAR(50)
);

CREATE TABLE customerx (
    c_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone_number VARCHAR(20)
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT REFERENCES customers(c_id),
    product_id INT REFERENCES products(product_id),
    quantity INT,
    order_date DATE
);

CREATE TABLE shipments (
    shipment_id INT PRIMARY KEY,
    order_id INT REFERENCES orders(order_id),
    shipping_date DATE,
    tracking_number VARCHAR(50)
);

INSERT INTO productx (product_id, product_name, price, category) VALUES
(1, 'Laptop', 899.99, 'Electronics'),
(2, 'Smartphone', 499.99, 'Electronics'),
(3, 'Headphones', 79.99, 'Electronics'),
(4, 'T-shirt', 19.99, 'Apparel'),
(5, 'Jeans', 39.99, 'Apparel'),
(6, 'Sneakers', 59.99, 'Apparel'),
(7, 'Bookshelf', 149.99, 'Furniture'),
(8, 'Sofa', 799.99, 'Furniture'),
(9, 'Dining Table', 299.99, 'Furniture');

INSERT INTO customerx (c_id, first_name, last_name, email, phone_number) VALUES
(1, 'John', 'Doe', 'john.doe@example.com', '+123456789012'),
(2, 'Alice', 'Smith', 'alice.smith@example.com', '+123456789013'),
(3, 'David', 'Brown', 'david.brown@example.com', '+123456789014'),
(4, 'Sarah', 'Johnson', 'sarah.johnson@example.com', '+123456789015'),
(5, 'Michael', 'Miller', 'michael.miller@example.com', '+123456789016');

INSERT INTO orders (order_id, customer_id, product_id, quantity, order_date) VALUES
(1, 1, 1, 1, '2024-03-20'),
(2, 2, 3, 1, '2024-03-21'),
(3, 3, 5, 3, '2024-03-22'),
(4, 4, 2, 1, '2024-03-22'),
(5, 5, 7, 1, '2024-03-23');

INSERT INTO shipments (shipment_id, order_id, shipping_date, tracking_number) VALUES
(1, 1, '2024-03-21', 'SH123456'),
(2, 2, '2024-03-22', 'SH234567'),
(3, 3, '2024-03-23', 'SH345678'),
(4, 4, '2024-03-24', 'SH456789'),
(5, 5, '2024-03-25', 'SH567890');

SELECT datname AS database_name, version(), pg_encoding_to_char(encoding) AS default_encoding 
FROM pg_database 
WHERE datname = 'home_work';

SELECT table_name 
FROM information_schema.tables 
WHERE table_schema = 'public';

SELECT column_name, data_type, is_nullable, column_default
FROM information_schema.columns
WHERE table_name = 'shipments';

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    department VARCHAR(50)
);

INSERT INTO employees (employee_id, name, email, department) 
VALUES (101, 'Kukulala Anita', 'kkanita@ymail.com', 'Sales');

UPDATE employees 
SET email = 'john.doe@webstore.com' 
WHERE employee_id = 101;