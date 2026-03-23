CREATE TABLE products(
serial_no serial primary key,
product VARCHAR,
price numeric,
delivery_date DATE
);

INSERT INTO products (product, price, delivery_date)
VALUES('Generator', 1200000, '26-03-2026'),
('Laptop', 1000000, '30-03-2026'),
('Smart TV 43', 700000, '14-04-2026'),
('Tv Stand', 200000, '14-04-2026'),
('Office Table', 300000, '18-04-2026'),
('Head Phones', 75000, '28-03-2026'),
('Wireless Keyboard', 70000, '20-04-2026'),
('Monitor', 500000, '22-03-2026');

ALTER TABLE products
ADD COLUMN discount TEXT;

UPDATE products set discount = '30%' where serial_no = 1;
UPDATE products set discount = '25%' where serial_no = 2;
UPDATE products set discount = '50%' where serial_no = 3;
UPDATE products set discount = '30%' where serial_no = 4;
UPDATE products set discount = '40%' where serial_no = 5;
UPDATE products set discount = '30%' where serial_no = 6;
UPDATE products set discount = '25%' where serial_no = 7;
UPDATE products set discount = '10%' where serial_no = 8;

UPDATE products set delivery_date = '2026-04-18' where serial_no = 3;

SELECT * FROM products where serial_no = 3;
SELECT product, price, discount FROM products;

DELETE FROM products where serial_no = 4;

SELECT product, 0.3*price as D_Amount from products where serial_no = 1;
SELECT * from products where product LIKE '%e%';
SELECT * from products where price > 500000;