
-- 10 exercises

-- 1.
SELECT salesman_id, name, city, CONCAT(commission,'%') FROM salesman ;

-- 2.
SELECT concat('for ' , ord_Date , ' there are ' , count(ord_no) , ' orders.') from orders GROUP BY ord_date ;

-- 3.
SELECT * from orders ORDER BY ord_no ;

-- 4.
SELECT * FROM orders ORDER BY ord_date DESC ;

-- 5.
SELECT * FROM orders ORDER BY ord_date DESC, purch_amt ;

-- 6.
SELECT cust_name, city, grade FROM customer ORDER BY customer_id ;

-- 7.
SELECT salesman_id, ord_date, max(purch_amt) from orders GROUP BY salesman_id, ord_date ORDER BY salesman_id, ord_date ; 

-- 8.
SELECT cust_name, city, grade FROM customer ORDER BY 3 DESC ;

-- 9.
SELECT customer_id, count(ord_no), max(purch_amt) FROM orders GROUP BY customer_id ORDER BY 2 DESC;

-- 10.
SELECT ord_date, sum(purch_amt), sum(purch_amt) * 0.15 from orders GROUP BY ord_date ;
