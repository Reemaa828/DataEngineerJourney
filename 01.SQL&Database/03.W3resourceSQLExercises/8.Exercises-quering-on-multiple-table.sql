-- Active: 1730152040073@@mysql-db@3306@reemtest

-- 8 exercises

-- 1.
SELECT cust_name, name, s.city FROM salesman s, customer c WHERE s.city = c.city ;

-- 2.
SELECT cust_name, name FROM salesman s, customer c WHERE s.salesman_id=c.salesman_id ;

-- 3.
SELECT ord_no, cust_name, o.customer_id, o.salesman_id FROM salesman s, customer c, orders o WHERE o.customer_id = c.customer_id and o.salesman_id = s.salesman_id and s.city <> c.city ;

-- 4.
SELECT ord_no, cust_name FROM orders o, customer c where o.customer_id=c.customer_id ;

-- 5.
SELECT cust_name as customer, grade as Grade, ord_no FROM orders o, customer c WHERE o.customer_id = c.customer_id and grade is not null and o.salesman_id= c.salesman_id and c.city is not NULL;

-- 6.
SELECT cust_name as Customer, c.city as City FROM salesman s,  customer c WHERE s.salesman_id=c.salesman_id and commission*100 BETWEEN 12 and 14 ; 

-- 7.
SELECT  purch_amt*commission as commission, cust_name, commission*100 as "commission%", ord_no FROM salesman s, customer c, orders o WHERE s.salesman_id=o.salesman_id and o.customer_id=c.customer_id and grade >=200 ;

-- 8.
SELECT * FROM customer c, orders o where o.customer_id=c.customer_id AND ord_date='2012-10-05' ; 
