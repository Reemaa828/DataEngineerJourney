# View

## What's a view?
- view is a database object
- It's a window to another tables or another group of views, it doesn't have it's own data cause it's just a logical table but it links to real data like a shortcut.
- tables in which view is based on is called base tables.
- view is stored as a select statement in the metadata.

### How to create a view?
- `create view <name of view> <columns...> as  <sub query>`
  
![image.png](https://itg.singhinder.com?url=https://gist.githubusercontent.com/Reemaa828/a3e6f071d2b4a4fc1218afd199690cbc/raw/image.png)
![image.png](https://itg.singhinder.com?url=https://gist.githubusercontent.com/Reemaa828/e7718482cb16d76eee3d60615a49b957/raw/image.png)
_________
### How to retrieve data from view?
- we will use it just like table.
  
![image.png](https://itg.singhinder.com?url=https://gist.githubusercontent.com/Reemaa828/7eaec410a1b76f5916df0dea4c40a97d/raw/image.png)

__________
### check option : it will check the condition with any DML command

![image.png](https://itg.singhinder.com?url=https://gist.githubusercontent.com/Reemaa828/ee62d1b268ec968479565e4a9eb465c8/raw/image.png)

__________
### How to modify view?
- `create or replace view`
  
![image.png](https://itg.singhinder.com?url=https://gist.githubusercontent.com/Reemaa828/f6bd9589116f29bfeaf42aec6278d2db/raw/image.png)
___________
### How to delete view?

![image.png](https://itg.singhinder.com?url=https://gist.githubusercontent.com/Reemaa828/654c85c1c62e95d6d9e2e7d32e712d3a/raw/image.png)
_______
### Advantages of view
- data access restrictions
- make complex query easy
- data independence
- provide different views of the same data
__________
### Types of views

![image.png](https://itg.singhinder.com?url=https://gist.githubusercontent.com/Reemaa828/a3ea8ddea3ea9e59a05a1ac77085640a/raw/image.png)
