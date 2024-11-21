-- Active: 1731162159856@@mysql-db@3306@reemtest
-- SQL subqueries

-- 39 exercises

-- 1.
SELECT
    ord_no,
    purch_amt,
    ord_date,
    customer_id,
    salesman_id
FROM salesman
    inner join orders using (salesman_id)
WHERE
    name = 'Paul Adam';

-- 2.
SELECT *
from orders
where
    salesman_id in (
        SELECT salesman_id
        from salesman
        where
            city = 'London'
    );

-- 3.
SELECT *
FROM orders
where
    salesman_id = (
        select salesman_id
        from customer
        where
            customer_id = 3007
    );

-- 4.
Select *
from orders
where
    purch_amt > (
        SELECT AVG(purch_amt)
        from orders
        WHERE
            ord_date = '2012-10-10'
    );

-- 5.
SELECT *
FROM orders
WHERE
    salesman_id in (
        SELECT salesman_id
        from salesman
        where
            city = 'New York'
    );

-- 6.
SELECT commission
FROM salesman
WHERE
    salesman_id in (
        SELECT salesman_id
        from customer
        where
            city = 'Paris'
    );

-- 7.
SELECT *
FROM customer
WHERE (customer_id) in (
        SELECT salesman_id - 2001
        FROM salesman
        WHERE
            name = 'Mc Lyon'
    );

-- 8.
SELECT grade, count(*)
from customer
GROUP BY
    grade
HAVING
    grade > (
        SELECT avg(grade)
        from customer
        where
            city = 'New York'
    );

-- 9.
SELECT *
FROM orders
WHERE
    salesman_id in (
        SELECT salesman_id
        from salesman
        where
            commission = (
                select max(commission)
                from salesman
            )
    );

-- 10.
SELECT *, cust_name
FROM orders o, customer c
WHERE
    o.customer_id = c.customer_id
    and ord_date = '2012-08-17';

-- 11.
SELECT s.salesman_id, name
FROM salesman s, customer c
where
    s.salesman_id = c.salesman_id
group by
    s.salesman_id
HAVING
    count(*) > 1;

SELECT salesman_id, name
from salesman s
where
    1 < (
        select count(*)
        from customer
        where
            salesman_id = s.salesman_id
    );

-- 12.
SELECT *
from orders o
where
    purch_amt > (
        SELECT avg(purch_amt)
        from orders
        where
            customer_id = o.customer_id
    );

-- 13.
SELECT *
from orders o
where
    purch_amt >= (
        SELECT avg(purch_amt)
        from orders
        where
            customer_id = o.customer_id
    );

-- 14.
SELECT sum(purch_amt)
from orders o
group by
    ord_date
having
    sum(purch_amt) >= (
        select max(purch_amt) + 1000
        from orders
        where
            ord_date = o.ord_date
    );

-- 15.
SELECT *
from customer
WHERE
    EXISTS (
        SELECT 1
        from customer
        where
            city = 'London'
    );

-- 16.
SELECT
    salesman_id,
    name,
    city,
    commission
from salesman s
where
    exists (
        select 1
        from customer
        where
            salesman_id = s.salesman_id
        group by
            salesman_id
        having
            count(*) > 1
    );

-- 17.
SELECT *
from salesman
WHERE
    salesman_id in (
        select salesman_id
        from customer o
        where
            NOT exists (
                select 1
                from customer
                where
                    salesman_id = o.salesman_id
                    and cust_name <> o.cust_name
            )
    );

-- 18.
SELECT *
FROM salesman o
where
    salesman_id in (
        select salesman_id
        from orders s
        where
            EXISTS (
                SELECT 1
                from orders
                where
                    salesman_id = o.salesman_id
                    and ord_no <> s.ord_no
            )
    );

-- 19.
SELECT *
from salesman o
WHERE
    city = ANY (
        SELECT city
        from customer
    );

-- 20.
SELECT * from salesman where city in ( select city from customer );

-- 21.
SELECT *
from salesman o
WHERE
    name < ANY (
        SELECT cust_name
        from customer
    );

-- 22.
SELECT *
from customer o
WHERE
    grade > ANY (
        select grade
        from customer
        where
            city < 'New York'
    );

-- 23.
SELECT *
from orders
where
    purch_amt > ANY (
        SELECT purch_amt
        from orders
        where
            ord_date = '2012-09-10'
    );

-- 24.
SELECT *
FROM orders
where
    purch_amt < ANY (
        SELECT purch_amt
        from orders o, customer c
        where
            c.customer_id = o.customer_id
            AND city = 'London'
    );

-- 25.
SELECT *
FROM orders
where
    purch_amt < (
        SELECT max(purch_amt)
        from order o, customer c
        where
            c.customer_id = o.customer_id
        where
            city = 'London'
    );

-- 26.
SELECT *
FROM customer
WHERE
    grade > ALL (
        SELECT grade
        from customer
        where
            city = 'New York'
    );

-- 27.
SELECT name, city, (
        SELECT sum(purch_amt)
        from orders
        where
            o.salesman_id = salesman_id
    )
from salesman o
WHERE
    city in (
        SELECT DISTINCT
            city
        from customer
    );

-- 28.
SELECT
    customer_id,
    cust_name,
    city,
    grade,
    salesman_id
FROM customer
WHERE
    not grade = all (
        SELECT grade
        from customer
        where
            city = 'London'
    );

-- 29.
SELECT *
FROM customer
WHERE
    grade <> (
        SELECT grade
        FROM customer
        where
            city = 'Paris'
    );

-- 30.
SELECT *
from customer
WHERE
    NOT grade = ANY (
        SELECT grade
        FROM customer
        where
            city = 'Dallas'
    );

-- 31.
SELECT avg(pro_price), com_name
from item_mast, company_mast
where
    `PRO_COM` = `COM_ID`
GROUP BY
    `COM_ID`;

-- 32.
SELECT avg(pro_price), com_name
FROM item_mast, company_mast
WHERE
    `PRO_COM` = `COM_ID`
GROUP BY
    `PRO_COM`
having
    avg(`PRO_PRICE`) >= 350;

-- 33.
SELECT pro_name, pro_price, pro_com
from item_mast e
WHERE
    `PRO_PRICE` = (
        SELECT max(`PRO_PRICE`)
        from item_mast
        where
            `PRO_ID` = e.pro_id
    );

-- 34.
SELECT *
FROM emp_details
where
    `EMP_LNAME` = 'Gabriel'
    or `EMP_LNAME` = 'Dosio';

-- 35.
SELECT * from emp_details where `EMP_DEPT` = 89 or `EMP_DEPT` = 63;

-- 36.
SELECT emp_fname, emp_lname
from emp_details
where
    `EMP_DEPT` in (
        SELECT dpt_code
        from emp_department
        where
            `DPT_ALLOTMENT` > 50000
    );

-- 37.
SELECT *
FROM emp_department
where
    `DPT_ALLOTMENT` > (
        SELECT avg(`DPT_ALLOTMENT`)
        from emp_department
    );

-- 38.
SELECT dpt_name
from emp_department
where
    EXISTS (
        select COUNT(*)
        from emp_details
        where
            `EMP_DEPT` = dpt_code
        GROUP BY
            `EMP_DEPT`
        having
            COUNT(*) > 2
    );

-- 39.
SELECT emp_lname, emp_fname
from emp_details
where
    `EMP_DEPT` = (
        SELECT dpt_code
        from emp_department l
        WHERE
            `DPT_ALLOTMENT` = (
                SELECT DPT_ALLOTMENT
                from emp_department
                order by `DPT_ALLOTMENT`
                limit 1
                OFFSET 1
            )
    );


-- Selecting columns 'emp_fname' and 'emp_lname' from the 'emp_details' table
SELECT emp_fname, emp_lname 
-- Specifying the table to retrieve data from ('emp_details')
FROM emp_details 
-- Filtering the results based on the condition that 'emp_dept' is in the set of 'dpt_code' values returned by a subquery
WHERE emp_dept IN (
  -- Subquery: Selecting 'dpt_code' values from 'emp_department' where 'dpt_allotment' is equal to the minimum 'dpt_allotment' value returned by another subquery
  SELECT dpt_code
  FROM emp_department 
  WHERE dpt_allotment = (
    -- Subquery: Selecting the minimum 'dpt_allotment' value from 'emp_department' where 'dpt_allotment' is greater than the second minimum 'dpt_allotment' value returned by another subquery
    SELECT MIN(dpt_allotment)
    FROM emp_department 
    WHERE dpt_allotment > (
      -- Subquery: Selecting the second minimum 'dpt_allotment' value from 'emp_department'
      SELECT MIN(dpt_allotment) 
      FROM emp_department 
    )
  )
);

SELECT emp_lname, emp_fname
from emp_details
where
    `EMP_DEPT` = (
        SELECT dpt_code 
        from emp_department, (select rank()over(ORDER BY `DPT_ALLOTMENT`) k from emp_department )h
        WHERE
            l.k=2
            );
