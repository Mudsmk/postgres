CREATE TABLE employees(
emp_id serial primary key,
first_name VARCHAR(50),
last_name VARCHAR(50),
email VARCHAR(100),
salary numeric,
hire_date DATE
);

INSERT INTO employees(first_name,last_name,email,salary,hire_date)
VALUES('Alice', 'Johnson', 'alice.j@company.com', 75000, '2023-01-15'),
('Bob', 'Smith', 'bob.s@company.com', 62000, '2023-03-22'),
('Charlie', 'Brown', 'charlie.b@company.com', 58000, '2023-05-10'),
('Amos', 'Tyson', 'amos.t@company.com', 75600, '2023-02-18'),
('Vicky', 'Tendo', 'vicky.t@company.com', 65500, '2023-07-27'),
('Valerie', 'Jane', 'val.j@company.com', 59400, '2023-12-15');

ALTER TABLE employees ADD COLUMN department VARCHAR(50)

DELETE FROM employees WHERE email = 'bob.s@company.com'

TRUNCATE employees

-- Because truncate deletes the entire records in the table at once where maintaining the structure making it faster while delete deletes record or row by row 

SELECT * FROM employees

DROP  TABLE employees

SELECT first_name,last_name FROM employees WHERE first_name LIKE 'A%'

SELECT * FROM employees ORDER BY first_name DESC;

SELECT first_name, salary FROM employees ORDER BY salary ASC;

SELECT first_name, salary, hire_date FROM employees ORDER BY salary DESC;

UPDATE employees SET department = 'HR' WHERE emp_id = 1;
UPDATE employees SET department = 'FINANCE' WHERE emp_id = 2;
UPDATE employees SET department = 'ACCOUNTS' WHERE emp_id = 3;
UPDATE employees SET department = 'CASH CENTER' WHERE emp_id = 4;
UPDATE employees SET department = 'CREDIT' WHERE emp_id = 5;
UPDATE employees SET department = 'IT' WHERE emp_id = 6;

SELECT emp_id  YOYO, first_name  YUYU, salary  yeye FROM employees;

SELECT first_name ||' '|| last_name AS Full_Name FROM employees;

SELECT DISTINCT first_name, last_name FROM employees;