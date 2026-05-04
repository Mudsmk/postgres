CREATE TABLE Author (
    AuthorId VARCHAR PRIMARY KEY,
    AuthorName VARCHAR
);

CREATE TABLE Book (
    BookID VARCHAR PRIMARY KEY,
    BookName VARCHAR,
    AuthorID VARCHAR REFERENCES Author(AuthorId),
    SoldCopies INTEGER,
    Price DECIMAL
);

INSERT INTO Author (AuthorId, AuthorName) VALUES
('A01', 'Martin'),
('A03', 'Phiona'),
('A04', 'Elinah'),
('A05', 'Titus');

INSERT INTO Book (BookID, BookName, AuthorID, SoldCopies, Price) VALUES
('Postgr01', 'Complete PostgreSQL for Developer', 'A01', 200, 200000),
('Postgr02', 'PostgreSQL Guide DBA', 'A05', 400, 150000),
('Postgr03', 'High Performance of Database', 'A03', 100, 100000),
('Postgr04', 'Learn PostgreSQL via Bootcamp', 'A04', 300, 120000),
('Postgr05', 'Mastering PostgreSQL in 21 Days', 'A05', 500, 250000);

SELECT * FROM Author;
SELECT * FROM Book;

SELECT a.AuthorName, b.BookName, b.Price
FROM Author a
JOIN Book b ON a.AuthorId = b.AuthorID;

SELECT a.*
FROM Author a
JOIN Book b ON a.AuthorId = b.AuthorID
GROUP BY a.AuthorId, a.AuthorName
HAVING COUNT(b.BookID) > 1;

SELECT (SoldCopies * Price) AS TotalCost
FROM Book
WHERE BookID = 'Postgr03';