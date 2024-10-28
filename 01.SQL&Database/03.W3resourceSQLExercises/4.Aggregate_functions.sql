
-- 25 exercises

-- 1.
SELECT SUM(purch_amt) FROM orders ;

-- 2.
SELECT AVG(purch_amt) FROM orders ;

-- 3.
SELECT COUNT(DISTINCT salesman_id) FROM orders ;

-- 4.
SELECT COUNT(*) from customer ;

-- 5.
SELECT COUNT(*) from customer where grade is not null ;

-- 6.
SELECT MAX(purch_amt) FROM orders;

-- 7.
SELECT MIN(purch_amt) FROM orders ;

-- 8.
SELECT city, max(grade) from customer GROUP BY city ;

-- 9.
SELECT customer_id, MAX(purch_amt) from orders GROUP BY customer_id;

-- 10.
SELECT customer_id, ord_date, MAX(purch_amt) FROM orders GROUP BY customer_id, ord_date ;

-- 11.
SELECT salesman_id, MAX(purch_amt) FROM orders WHERE ord_date='2012-08-17' GROUP BY salesman_id ;

-- 12.
SELECT customer_id, ord_date, MAX(purch_amt) FROM orders GROUP BY customer_id, ord_date HAVING MAX(purch_amt) > 2000 ;

-- 13.
SELECT MAX(purch_amt), ord_date, customer_id FROM orders GROUP BY customer_id, ord_Date HAVING MAX(purch_amt) BETWEEN 2000 and 6000 ;

-- 14.
SELECT MAX(purch_amt),customer_id,ord_date FROM orders GROUP BY customer_id, ord_date HAVING MAX(purch_amt) in ('2000','3000','5760','6000');

-- 15.
SELECT MAX(purch_amt), customer_id from orders where customer_id between 3002 and 3007 GROUP BY customer_id ;

-- 16.
SELECT MAX(purch_amt), customer_id from orders WHERE customer_id between 3002 and 3007 GROUP BY customer_id HAVING MAX(purch_amt) >1000;

-- 17.
SELECT max(purch_amt),salesman_id from orders WHERE salesman_id between 5003 and 5008 GROUP BY salesman_id ;

-- 18.
SELECT COUNT(*) from orders where ord_date='2012-08-17' ;

-- 19.
SELECT COUNT(salesman_id) FROM salesman ;

-- 20.
SELECT COUNT(ord_no),ord_date,salesman_id FROM orders GROUP BY ord_date, salesman_id ;

-- 21.
SELECT AVG(pro_price) FROM item_mast ;

-- 22.
SELECT COUNT(pro_id) from item_mast where pro_price >= 350;

-- 23.
SELECT AVG( pro_price),pro_com FROM item_mast GROUP BY pro_com;

-- 24.
SELECT SUM(DPT_ALLOTMENT) FROM emp_department ; 

-- 25.
SELECT COUNT(*), emp_dept FROM emp_details GROUP BY emp_dept ;

