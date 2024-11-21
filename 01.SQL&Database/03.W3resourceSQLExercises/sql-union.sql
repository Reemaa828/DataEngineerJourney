-- SQL Union

-- 9 exercises

-- 1.
(Select customer_id, cust_name,city, 'customer' from customer WHERE city='London')
UNION 
(SELECT salesman_id, name,city,'salesman' FROM salesman WHERE city='London')

-- 2.
(Select customer_id, city from customer)
UNION 
(SELECT salesman_id,city FROM salesman )

-- 3.
(SELECT customer_id,salesman_id FROM customer)
UNION
(SELECT customer_id,salesman_id from orders) 

-- 4.
(select salesman_id,name,ord_no,'highest on',ord_date 
FROM orders oo inner join salesman using(salesman_id) 
where purch_amt=(select max(purch_amt) from orders o WHERE o.ord_Date=oo.ord_date) )
UNION 
(select salesman_id,name,ord_no,'lowest on',ord_date FROM orders inner join salesman using(salesman_id) WHERE purch_amt =ANY (select min(purch_amt) from orders group by ord_Date))
ORDER BY salesman_id;

-- 5.
(select salesman_id,name,ord_no,'highest on',ord_date 
FROM orders oo inner join salesman using(salesman_id) 
where purch_amt=(select max(purch_amt) from orders o WHERE o.ord_Date=oo.ord_date) )
UNION 
(select salesman_id,name,ord_no,'lowest on',ord_date FROM orders inner join salesman using(salesman_id) WHERE purch_amt =ANY (select min(purch_amt) from orders group by ord_Date))
ORDER BY ord_no;

-- 6.
SELECT s.salesman_id, name,cust_name,commission FROM salesman s join customer c using(city)
UNION
SELECT s.salesman_id, name,'No Match',commission FROM salesman s
WHERE city NOT IN (select city from customer)
ORDER BY 2 DESC;


-- 7.
(SELECT salesman.salesman_id,name,city,'matched' FROM salesman inner JOIN customer USING(city))
UNION
(SELECT salesman_id,name,city,'no match' FROM salesman WHERE city not in (SELECT city from customer))

-- 8.
SELECT customer_id,city,grade, case when grade>=300 then 'high rating' else 'low rating' end as rating from customer ;

(SELECT customer_id,city,grade,'high rating' from customer WHERE grade >=300)
UNION
(SELECT customer_id,city,grade,'low rating' FROM customer WHERE grade <300)

-- 9.
(SELECT customer_id as ID,cust_name from customer INNER join orders USING(customer_id) group by customer_id HAVING count(*) >1)
UNION
(SELECT salesman_id as ID,name from salesman INNER join orders USING(salesman_id) group by salesman_id HAVING count(*) >1)
