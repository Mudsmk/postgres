CREATE TABLE students(
s_id int,
s_name text,
s_age int
);

INSERT INTO students(s_id, s_name, s_age)
VALUES(1, 'MK', 25),
(2, 'LMK', 18),
(3, 'M', 30),
(4, 'K', 67),
(5, 'L', 5);

ALTER TABLE students
DROP course;
ADD COLUMN course varchar(20);


SELECT * FROM students;