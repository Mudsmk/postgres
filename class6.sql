CREATE TABLE sales (
    sale_id VARCHAR,
    product_id SERIAL,
    quantity_sold INT,
    sale_amount DECIMAL
);

INSERT INTO sales (sale_id, product_id, quantity_sold, sale_amount) 
VALUES
('S01', 1, 10, 800.00),
('S03', 2, 15, 500.00),
('S04', 3, 20, 300.00),
('S05', 4, 30, 100.00),
('S08', 5, 25, 20.00),
('S09', 6, 12, 50.00),
('S10', 7, 8, 200.00);

SELECT SUM(sale_amount) AS "Total Sales Amount" FROM sales;

SELECT AVG(quantity_sold) AS "Average Quantity Sold per Transaction" FROM sales;

SELECT MAX(sale_amount) AS "Maximum Sale Amount" FROM sales;

SELECT product_id, quantity_sold FROM sales ORDER BY quantity_sold DESC LIMIT 1;

SELECT COUNT(sale_amount) AS "Total Number of Transactions" FROM sales;

SELECT MIN(sale_amount) AS "Minimum Sale Amount" FROM sales;

SELECT * FROM sales;

DROP TABLE sales;