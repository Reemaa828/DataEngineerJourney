# SELECT
## `select` :  used to display data
`select dname, fname from students ` display these columns only
![image.png](https://itg.singhinder.com?url=https://gist.githubusercontent.com/Reemaa828/adcd81fef43829edaa782edacf9054de/raw/image.png)
`select * from students where ID = 224 `display the row of id 224
![image.png](https://itg.singhinder.com?url=https://gist.githubusercontent.com/Reemaa828/261f10749b542539f437c9defba839a2/raw/image.png)
`select * from students where id > 223` display all data whose id exceeds 223
![image.png](https://itg.singhinder.com?url=https://gist.githubusercontent.com/Reemaa828/53353b711f801273607537023ac6bf4d/raw/image.png)
`select fname, dname from employee where salary >= 1500 and salary < 2500` display `fname` and `dname` of employees whose salary is greater than or equal 1500 and less than 2500
![image.png](https://itg.singhinder.com?url=https://gist.githubusercontent.com/Reemaa828/20f0b6d17a29fb0fe3030e1689e7fb3e/raw/image.png)
or `select fname, dname from employee where salary between 1500 and 2500`
![image.png](https://itg.singhinder.com?url=https://gist.githubusercontent.com/Reemaa828/b1d19d6425c70a3c9924dd1a7543c523/raw/image.png)
`select ssn, fname from employee where salary = 1500 or salary = 2500` display `ssn` or `fname` whose salary=1500 or salary=2500
![image.png](https://itg.singhinder.com?url=https://gist.githubusercontent.com/Reemaa828/5cb9388bca15d7bb11bd574d18399064/raw/image.png)
or `select ssn, fname from employee where salary in(223,227)`
![image.png](https://itg.singhinder.com?url=https://gist.githubusercontent.com/Reemaa828/a67a591673c09c42698c3c0aa1c8d2ac/raw/image.png)
`select *  from employee where fname like '?o*'` displaying data whose ` fname` contain any letter - a `o` - any letters.
![image.png](https://itg.singhinder.com?url=https://gist.githubusercontent.com/Reemaa828/c0bda8f82dbc9e11a1f81eadcf1f6c91/raw/image.png)
![image.png](https://itg.singhinder.com?url=https://gist.githubusercontent.com/Reemaa828/67cebfa2c803f51362d9705a8ee5b469/raw/image.png)
`like` is used when i don't know the exact value that i need oppose to `=`.
_____
`select fname, salary*0.1 as bonus from employees` display the salary column multiplied by 0.1 as bonus.
![image.png](https://itg.singhinder.com?url=https://gist.githubusercontent.com/Reemaa828/48f8c76bc91a5b3af3d2c6bcb9267726/raw/image.png)
`select fname + ' ' + dname as [full name] from employees where salary*12 > 12000` concatenate the name to be displayed as full name whose salary annually is more than 12000.
![image.png](https://itg.singhinder.com?url=https://gist.githubusercontent.com/Reemaa828/f7a0622d20ae6c3bfbf7d0480665cf81/raw/image.png)
`select fname, ssn from employee order by fname` display the data ordered by default ascendingly by `fname`
![image.png](https://itg.singhinder.com?url=https://gist.githubusercontent.com/Reemaa828/0a91d436e1d321ff9f75a561a9e4886d/raw/image.png)
![image.png](https://itg.singhinder.com?url=https://gist.githubusercontent.com/Reemaa828/e92e8dbde23ffbd07d701c3fa5847409/raw/image.png)
`select distinct dno from employee` display `dno` without duplication
![image.png](https://itg.singhinder.com?url=https://gist.githubusercontent.com/Reemaa828/e65c9320e807310355faf7265220c9e2/raw/image.png)
will remove duplication of result value of both
![image.png](https://itg.singhinder.com?url=https://gist.githubusercontent.com/Reemaa828/aa21276b1d006acada201ca43da73610/raw/image.png)
__________
display data from more than one table
`join condition is how DBMS link two tables to display an information` and join conditions in the query is equal to `tables - 1`. also join condition is always a relationship between primary key and foreign key. 
![image.png](https://itg.singhinder.com?url=https://gist.githubusercontent.com/Reemaa828/f7cfe3ac7f58aa609ecd1680a5f71f9d/raw/image.png)
![image.png](https://itg.singhinder.com?url=https://gist.githubusercontent.com/Reemaa828/c19fa4debbf6e3253aaff1617dd0622a/raw/image.png)
![image.png](https://itg.singhinder.com?url=https://gist.githubusercontent.com/Reemaa828/dde9c23a5e5d0f753959b23fe1dbf1cb/raw/image.png)
here since join condition is a pk and fk relation so the `work for` entity comes from both `project` and `employee` entity...
![image.png](https://itg.singhinder.com?url=https://gist.githubusercontent.com/Reemaa828/d984b8738941b740c873c9f38c2bd8d6/raw/image.png)
![image.png](https://itg.singhinder.com?url=https://gist.githubusercontent.com/Reemaa828/64f7b40dd5e50e56557c9c04c09b36f3/raw/image.png)
_____________
- inner join returns matched records; meaning every left column has a value in the right column
- outer join returns records if it exists left or right or any `full`.
    - left join: return records of left column whether it's null or exists
    ![image.png](https://itg.singhinder.com?url=https://gist.githubusercontent.com/Reemaa828/c623b1d458d291e12a5763a6a944d8b2/raw/image.png)
  ![image.png](https://itg.singhinder.com?url=https://gist.githubusercontent.com/Reemaa828/a22fa56405b3ac62df25ab93934fcbd3/raw/image.png)
    - right join: return records of right column whether it's null or exists
    ![image.png](https://itg.singhinder.com?url=https://gist.githubusercontent.com/Reemaa828/3a4446f1fe90d0c74323be5258d84997/raw/image.png)
    ![image.png](https://itg.singhinder.com?url=https://gist.githubusercontent.com/Reemaa828/8817a02853afb57330158c32aaf97c91/raw/image.png)
    - full join 
    ![image.png](https://itg.singhinder.com?url=https://gist.githubusercontent.com/Reemaa828/3e7754312fa5629e43ed745bb101bccb/raw/image.png)
    ![image.png](https://itg.singhinder.com?url=https://gist.githubusercontent.com/Reemaa828/c9592c34c77e13e67d16ce4f08d82ad9/raw/image.png)


______
`self join meaning link table with itself`
![image.png](https://itg.singhinder.com?url=https://gist.githubusercontent.com/Reemaa828/48e99e926eff962c125b9e646bf092b0/raw/image.png)
![image.png](https://itg.singhinder.com?url=https://gist.githubusercontent.com/Reemaa828/3018db59468bf751faeff90dc30840f1/raw/image.png)

__________
`sub query or nested query : for more than one query if i don't have the information directly and if it needs to retrieve it from the table`
![image.png](https://itg.singhinder.com?url=https://gist.githubusercontent.com/Reemaa828/f1fa77ed9d7664cbc10c64e8cf94e5f8/raw/image.png)
![image.png](https://itg.singhinder.com?url=https://gist.githubusercontent.com/Reemaa828/f4f7ec29f3b973a9ed97171033681910/raw/image.png)
______________
`in SQL there's aggregate functions like max, min, average, sum and count`
![image.png](https://itg.singhinder.com?url=https://gist.githubusercontent.com/Reemaa828/86203bf6b8b54884a9d728a3b7979569/raw/image.png)
![image.png](https://itg.singhinder.com?url=https://gist.githubusercontent.com/Reemaa828/7691bd2607291b37074477957b77db24/raw/image.png)
_____
`use group by if we want DBMS divide data into chunks`
![image.png](https://itg.singhinder.com?url=https://gist.githubusercontent.com/Reemaa828/7b6da1fabba4e959c162982fe4fba02e/raw/image.png)
`having is used with aggregate functions`
![image.png](https://itg.singhinder.com?url=https://gist.githubusercontent.com/Reemaa828/f53e197cd6ce342521e1ae3da939d3ae/raw/image.png)
