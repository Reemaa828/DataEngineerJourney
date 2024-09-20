# INDEX
## Why do indexes exist?
- it's because the database is scattered & unsorted so indexes exist to speed up retrievals of records in response to certain search conditions
- can be defined for multiple columns
- can be created by DBMS(usually creates index for primary key) or user
- used and maintained by DBMS
___________
## for example
i have this database with this data and i usually search based on cities column
![image.png](https://itg.singhinder.com?url=https://gist.githubusercontent.com/Reemaa828/6bdd033629ac9af42fa05d7c9c2f79ef/raw/image.png)
so we will create an index that will copy the column of cities and sort them then put pointers to the locations where each records are in the database
![image.png](https://itg.singhinder.com?url=https://gist.githubusercontent.com/Reemaa828/4fff54cff976f26b7310035ad0543988/raw/image.png)
____________
## advantages of indexes
- speeds up retrievals based on certain search conditions. 
## disadvantages of indexes
- indexes cause overhead on DMLs (because the data exists in two places)
_______________
## What's guidelines to create index?
![image.png](https://itg.singhinder.com?url=https://gist.githubusercontent.com/Reemaa828/0545026d2344fdd83f95b4dbab55f94d/raw/image.png)

____________
## How to create and delete an index?
![image.png](https://itg.singhinder.com?url=https://gist.githubusercontent.com/Reemaa828/967cabfa9b327f84a0d9f41de95a7264/raw/image.png)
