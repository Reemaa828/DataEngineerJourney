-- Active: 1730004805739@@mysql-db@3306@reemtest

-- 12 questions

-- 1.
SELECT * FROM customer where grade >100 ;

-- 2.
SELECT * FROM customer where grade > 100 and city="New YORK" ;

-- 3.
SELECT * FROM customer where grade > 100 OR city="New YORK" ;

-- 4.
SELECT * FROM customer where city="New york" or NOT grade >100 ;

-- 5.
SELECT * FROM customer WHERE not(city="NEW YORK" OR  grade > 100); 

-- 6.
SELECT * FROM orders WHERE not ((ord_date='2012-09-10' and salesman_id> 5005) or purch_amt>1000);

-- 7.
SELECT salesman_id, name, city, commission FROM salesman WHERE commission >0.10 AND commission < 0.12 ;

-- 8.
SELECT * FROM orders WHERE purch_amt <200 or not (ord_date >='2012-02-10'and customer_id < 3009);  

-- 9.
SELECT * FROM orders WHERE NOT ((ord_date='2012-08-17' or customer_id > 3005) and purch_amt <1000) ;

-- 10.
SELECT ord_no, purch_amt, (purch_amt / 6000)* 100 as achieved_tar, 100 - (purch_amt / 6000)* 100 as unachieved_tar from orders where ((purch_amt / 6000)* 100) > 50 ;

-- 11.
SELECT * FROM emp_details WHERE emp_lname in ('dosni','mardy');

-- 12.
SELECT * FROM emp_details WHERE emp_dept in (47,63);
