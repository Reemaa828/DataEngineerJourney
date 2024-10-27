-- Active: 1730004805739@@mysql-db@3306@reemtest

-- 33 exercises

-- 1. 
SELECT * FROM reemtest.salesman ;

-- 2.
SELECT "This is SQL Exercise, Practice and Solution."

-- 3.
SELECT  4,5,6;

-- 4.
SELECT 10+15;

-- 5.
SELECT 10+5 * 3/2 ;

-- 6.
SELECT name,commission FROM salesman;

-- 7.
SELECT ord_date, customer_id, ord_no, purch_amt, salesman_id FROM orders ORDER BY salesman_id ;

-- 8.
SELECT DISTINCT salesman_id FROM orders ;

-- 9.
SELECT name, city FROM salesman where city='Paris' ;

--10.
SELECT customer_id, cust_name, city, grade, salesman_id FROM customer WHERE grade=200; 

-- 11.
SELECT ord_no, ord_date, purch_amt FROM orders WHERE salesman_id=5001;

-- 12.
SELECT year, subject, winner FROM nobel_win WHERE year=1970 ;

-- 13.
SELECT winner FROM nobel_win WHERE subject = 'literature' and year = 1971 ;

-- 14.
SELECT year, subject FROM nobel_win WHERE winner = 'Dennis Gabor' ;

-- 15.
SELECT winner FROM nobel_win WHERE subject='physics' and year>=1950 ;

-- 16.
SELECT year, subject, winner, country FROM nobel_win WHERE subject='chemistry' and year between 1965 and 1975 ;

-- 17.
SELECT * FROM nobel_win WHERE year > 1972 and winner in ('Menachem Begin','Yitzhak Rabin')

-- 18.
SELECT year, subject, winner, country, category FROM nobel_win WHERE winner LIKE 'louis%'

-- 19.
SELECT * FROM nobel_win WHERE subject in ('physics', 'economics') and year in (1970,1971) ;

-- 20.
SELECT * FROM nobel_win WHERE year=1970 and subject not in ('physiology', 'economics') ;

-- 21.
(SELECT * FROM nobel_win WHERE year<1971 and subject='physiology') UNION (SELECT * FROM nobel_win WHERE subject='peace' and year >=1974)

-- 22.
SELECT * FROM nobel_win WHERE winner='Johannes Georg Bednorz';

-- 23.
SELECT * FROM nobel_win WHERE winner NOT LIKE 'p%' ORDER BY year desc, winner ;

-- 24.
SELECT * FROM nobel_win WHERE year=1970 order by CASE 
    WHEN subject in ('chemistry','economics') THEN 1  
    ELSE  0
END ASC, subject ;

-- 25.
SELECT * from item_mast where pro_price BETWEEN 200 AND 600 ;

-- 26.
SELECT AVG(pro_price) FROM item_mast where pro_com=16;

-- 27.
SELECT pro_name as "item name", pro_price as "price in Rs" from item_mast

-- 28.
SELECT pro_price, pro_name FROM item_mast WHERE pro_price >= 250 ORDER BY pro_price DESC, pro_name ;

-- 29.
SELECT AVG(pro_price), pro_com FROM item_mast GROUP BY pro_com ; 

-- 30.
SELECT pro_price, pro_name FROM item_mast ORDER BY pro_price LIMIT 1 ;
-- OR
SELECT pro_price, pro_name FROM item_mast WHERE pro_price = (SELECT min(pro_price) FROM item_mast) ;

-- 31.
SELECT DISTINCT emp_lname FROM emp_details ;

-- 32.
SELECT * FROM emp_details WHERE emp_lname='snares';

-- 33.
SELECT * FROM emp_details where emp_dept=57;
