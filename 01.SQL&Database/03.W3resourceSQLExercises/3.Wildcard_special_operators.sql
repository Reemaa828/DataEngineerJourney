-- Active: 1730004805739@@mysql-db@3306@reemtest

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

-- 8.
SELECT * FROM salesman WHERE name not BETWEEN 'A' AND 'L';

-- 9.
SELECT * FROM customer WHERE cust_name REGEXP '^b' ;

-- 10.
SELECT * FROM customer WHERE cust_name REGEXP 'n$';

-- 11.
SELECT * FROM salesman WHERE name REGEXP '^n..i*' ;

-- 12.
SELECT * FROM testtable WHERE col1 REGEXP '_' ;
-- or
SELECT * FROM testtable WHERE col1 LIKE '%/_%' ESCAPE '/'

-- 13.
SELECT * FROM testtable WHERE col1 not LIKE '%/_%' ESCAPE '/'

-- 14.
SELECT * FROM testtable WHERE col1 LIKE '%/%' 

-- 15.
SELECT * FROM testtable WHERE col1 not LIKE '%/%' 

-- 16.
SELECT * FROM testtable WHERE col1 LIKE '%/_//%' ESCAPE '/' ;

-- 17.
SELECT * FROM testtable WHERE col1 not LIKE '%/_//%' ESCAPE '/' ;

-- 18.
SELECT * FROM testtable WHERE col1 LIKE '%/%%' ESCAPE '/' ;

-- 19.
SELECT * FROM testtable WHERE col1 not LIKE '%/%%' ESCAPE '/' ;

-- 20.
SELECT * FROM customer WHERE grade is NULL ;

-- 21.
SELECT * FROM customer WHERE grade IS NOT NULL ;

-- 22.
SELECT * FROM emp_details WHERE emp_lname REGEXP '^d' ;
-- or
SELECT * FROM emp_details WHERE emp_lname LIKE 'd%';
