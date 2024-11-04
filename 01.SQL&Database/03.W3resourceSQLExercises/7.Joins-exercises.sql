
-- 29 exercises

-- 1.
SELECT name, cust_name, customer.city from customer, salesman where salesman.city = customer.city ;

-- 2.
SELECT ord_no, purch_amt, cust_name, city FROM customer join orders using (customer_id) where purch_amt between 500 and 2000;

-- 3.
SELECT cust_name, name, commission from  customer join salesman using (salesman_id);

-- 4.
SELECT cust_name, customer.city, name, commission FROM customer JOIN salesman using (salesman_id) where commission*100 > 12 ;

-- 5.
SELECT cust_name, customer.city, salesman.name, commission FROM salesman, customer where customer.salesman_id=salesman.salesman_id and salesman.city <> customer.city and commission > 0.12 ;

-- 6.
SELECT ord_no, ord_date, purch_amt, cust_name, grade, name, commission FROM customer, orders, salesman where orders.customer_id= customer.customer_id and orders.salesman_id=salesman.salesman_id ;

-- 7.
SELECT * from orders NATURAL join customer NATURAL join salesman ;

-- 8.
SELECT cust_name, customer.city, grade, name, salesman.city from customer LEFT join salesman USING(salesman_id) ORDER BY customer_id;

-- 9.
SELECT cust_name, customer.city, grade, name, salesman.city FROM customer inner join salesman USING(salesman_id) where grade < 300 ;

-- 10.
SELECT cust_name, city, ord_no, ord_date, purch_amt from orders right JOIN customer using (customer_id) ORDER BY ord_date ;

-- 11.
SELECT cust_name, customer.city, ord_no, ord_date, purch_amt, name, commission FROM orders right join customer using (customer_id) left join salesman on salesman.salesman_id = orders.salesman_id;

-- 12.
SELECT * from salesman left join customer USING(salesman_id) ORDER BY salesman.salesman_id; 

-- 13.
SELECT name, cust_name, salesman.city, grade, ord_no, ord_date, purch_amt FROM salesman left join customer using(salesman_id) RIGHT join orders using (customer_id) 

-- 14.
SELECT purch_amt ,name, cust_name from salesman left join customer USING (salesman_id) LEFT join orders USING(customer_id) where grade is not null and purch_amt >= 2000 ;

-- 15.
SELECT cust_name, city, ord_no, ord_date, purch_amt FROM customer RIGHT join orders USING(customer_id) ;

-- 16.
SELECT cust_name, city, ord_no, ord_date, purch_amt FROM orders FULL join customer using (customer_id) where grade is not null ;

-- 17.
SELECT * FROM salesman CROSS JOIN customer ; 

-- 18.
SELECT * FROM salesman CROSS JOIN customer where salesman.city is NOT NULL;

-- 19.
SELECT * FROM salesman CROSS join customer where salesman.city is not NULL and grade is not null ;

-- 20.
SELECT * from salesman CROSS join customer where salesman.city is not NULL and grade is not NULL and salesman.city<>customer.city;

-- 21.
SELECT * FROM company_mast, item_mast where pro_com = com_id ; 

-- 22.
SELECT * from item_mast, company_mast WHERE com_id=pro_com ;

-- 23.
SELECT avg(pro_price), com_name FROM item_mast, company_mast where pro_com=com_id GROUP BY pro_com;

-- 24.
SELECT avg(pro_price), com_name FROM item_mast inner join company_mast on com_id=pro_com GROUP BY pro_com HAVING AVG(pro_price) >= 350; 

-- 25.
SELECT pro_name, pro_price, com_name FROM item_mast inner join company_mast on com_id=pro_Com and pro_price= (SELECT max(pro_price) from item_mast where pro_com = com_id) 

-- 26.
SELECT * FROM emp_department inner JOIN emp_details on dpt_code=emp_dept ;

-- 27.
SELECT emp_fname, emp_lname, dpt_name, dpt_allotment FROM emp_details INNER JOIN emp_department on dpt_code=emp_Dept 

-- 28.
SELECT emp_fname, emp_lname FROM emp_details inner join emp_department on dpt_code=emp_Dept where dpt_allotment> 50000;

-- 29.
SELECT dpt_name from emp_department inner join emp_details on dpt_code=emp_dept group by dpt_name HAVING count(emp_idno) > 2;



