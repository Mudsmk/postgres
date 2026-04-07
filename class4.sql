CREATE TABLE betting (
    bt_id VARCHAR(20) PRIMARY KEY,
    cus_name VARCHAR(20) NOT NULL,
    age INT CHECK (age > 20),
    email VARCHAR(50) NOT NULL UNIQUE,
    dayyte DATE DEFAULT CURRENT_DATE,
    emp_col VARCHAR(20)
);

INSERT INTO betting (bt_id, cus_name, age, email, dayyte)
VALUES
('BET_01', 'John', 25, 'john@isbat.com', CURRENT_DATE),
('BET_02', 'Bob', 45, 'bob@isbat.com', '2026-09-04'),
('BET_03', 'Mark', 85, 'mark@isbat.com', '2026-05-22'),
('BET_04', 'Sam', 23, 'sam@isbat.com', '2025-02-04'),
('BET_05', 'Mary', 65, 'mary@isbat.com', '2023-11-29'),
('BET_06', 'Sarah', 35, 'sarah@isbat.com', '2026-09-04');

SELECT * FROM betting;