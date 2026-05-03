CREATE TABLE authors (
    author_id SERIAL PRIMARY KEY,
    author_name VARCHAR(100),
    nationality VARCHAR(50)
);

CREATE TABLE books (
    book_id SERIAL PRIMARY KEY,
    title VARCHAR(255),
    author_id INT,
    price NUMERIC(10,2),
    discount NUMERIC(10,2)
);

CREATE TABLE customers (
    c_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    contact VARCHAR(20)
);

CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INT,
    book_id INT,
    quantity INT,
    order_date DATE
);

ALTER TABLE books ADD COLUMN genre VARCHAR(50);

INSERT INTO authors (author_id, author_name, nationality) VALUES
(1, 'Ngugi wa Thiong''o', 'Kenyan'),
(2, 'Meja Mwangi', 'Kenyan'),
(3, 'Grace Ogot', 'Kenyan'),
(4, 'Okot p''Bitek', 'Ugandan');

INSERT INTO books (book_id, title, author_id, genre, price) VALUES
(1, 'The River Between', 1, 'Fiction', 350.00),
(2, 'Devil on the Cross', 2, 'Fiction', 400.00),
(3, 'Matigari', 3, 'Fiction', 300.00),
(4, 'Dust', 4, 'Poetry', 200.00),
(5, 'Blossoms of the Savannah', 1, 'Fiction', 380.00),
(6, 'A Grain of Wheat', 2, 'Fiction', 370.00);

INSERT INTO customers (c_id, first_name, last_name, email, contact) VALUES
(1, 'Jane', 'Kamau', 'jane.kamau@example.com', '+254712345678'),
(2, 'Peter', 'Maina', 'peter.maina@example.com', '+254723456789'),
(3, 'Mary', 'Wanjiru', 'mary.wanjiru@example.com', '+2547434567890'),
(4, 'John', 'Mwangi', 'john.mwangi@example.com', '+254745678901'),
(5, 'Sarah', 'Njeri', 'sarah.njeri@example.com', '+254756789012');

INSERT INTO orders (order_id, customer_id, book_id, quantity, order_date) VALUES
(1, 1, 1, 2, '2024-03-20'),
(2, 2, 2, 1, '2024-03-21'),
(3, 3, 3, 3, '2024-03-22'),
(4, 4, 4, 1, '2024-03-22'),
(5, 5, 5, 2, '2024-03-23'),
(6, 1, 6, 1, '2024-03-23');

ALTER TABLE books ALTER COLUMN price TYPE DECIMAL(12,2);

ALTER TABLE books ADD CONSTRAINT fk_author FOREIGN KEY (author_id) REFERENCES authors(author_id);

ALTER TABLE books DROP COLUMN discount;

ALTER TABLE orders RENAME TO customer_orders;