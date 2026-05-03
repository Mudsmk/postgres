CREATE TABLE students (
    s_id INT PRIMARY KEY,
    f_name VARCHAR(50),
    l_name VARCHAR(50),
    dob DATE,
    sex CHAR(1),
    email VARCHAR(100),
    phone VARCHAR(20)
);

CREATE TABLE course (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100),
    credit_units INT
);

CREATE TABLE results (
    result_id SERIAL PRIMARY KEY,
    student_id INT,
    course_id INT,
    marks INT,
    exam_date DATE
);

CREATE TABLE grades (
    grade_id INT PRIMARY KEY,
    grade CHAR(1),
    lower_limit INT,
    upper_limit INT
);

INSERT INTO students (s_id, f_name, l_name, dob, sex, email, phone) VALUES
(1, 'Peter', 'Odongo', '1998-05-10', 'M', 'petero@examp.com', '+1712345678'),
(2, 'Esther', 'Nakato', '1999-08-15', 'F', 'esthern@exam.com', '+2723456789'),
(3, 'Isaac', 'Lubega', '2000-03-20', 'M', 'isaacl@examp.com', '+4734567890'),
(4, 'Ruth', 'Nalubega', '1997-11-25', 'F', 'ruthn@examp.com', '+1745678901'),
(5, 'Daniel', 'Ojok', '1996-09-05', 'M', 'dano@examp.com', '+2756789012');

INSERT INTO course (course_id, course_name, credit_units) VALUES
(1, 'Mathematics', 3),
(2, 'Physics', 4),
(3, 'Biology', 3),
(4, 'Chemistry', 4),
(5, 'Literature', 3);

INSERT INTO results (result_id, student_id, course_id, marks, exam_date) VALUES
(1, 1, 1, 80, '2024-03-20'),
(2, 2, 2, 75, '2024-03-21'),
(3, 3, 3, 85, '2024-03-22'),
(4, 4, 4, 70, '2024-03-22'),
(5, 5, 5, 90, '2024-03-23');

INSERT INTO grades (grade_id, grade, lower_limit, upper_limit) VALUES
(1, 'A', 80, 100),
(2, 'B', 70, 79),
(3, 'C', 60, 69),
(4, 'D', 50, 59),
(5, 'E', 40, 49);

ALTER TABLE students ADD COLUMN IF NOT EXISTS class VARCHAR(20);
ALTER TABLE course ADD COLUMN IF NOT EXISTS teacher VARCHAR(100);

INSERT INTO students (s_id, f_name, l_name, class, dob) 
VALUES (101, 'John', 'Smith', 'Grade 10', '2005-05-15');

INSERT INTO course (course_id, course_name, teacher) 
VALUES (201, 'Mathematics', 'Ms. Johnson');

INSERT INTO results (student_id, course_id, marks) VALUES 
(101, 201, 85),
(101, 202, 78);

UPDATE results 
SET marks = 82 
WHERE student_id = 101 AND course_id = 202;

SELECT AVG(marks) AS "Average Marks" FROM results;