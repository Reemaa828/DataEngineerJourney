-- Active: 1730004805739@@mysql-db@3306

-- 22 exercises

-- 1.
SELECT * FROM salesman WHERE city in ('paris','rome');

-- 2.
SELECT * FROM salesman WHERE city in ('paris','rome');

-- 3.
SELECT * FROM salesman WHERE city NOT IN ('paris','rome');

-- 4.
SELECT * FROM customer WHERE customer_id IN ('3007','3008','3009');

-- 5.
SELECT * FROM salesman WHERE commission BETWEEN 0.12 AND 0.14;

-- 6.
SELECT * FROM orders WHERE (purch_amt BETWEEN 500 and 4000) and NOT purch_amt in ('948.50','1983.43');

-- 7.
SELECT * FROM salesman WHERE name REGEXP '^[a-l]';