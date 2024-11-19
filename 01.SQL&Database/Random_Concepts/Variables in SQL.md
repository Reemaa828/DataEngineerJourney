# 💭 Types of variables that exists in SQL 
##### 1. Local variable
##### 2. Session variable
##### 3. Global variable

____________
## Local variable
a variable that exists only between `begin .. end`.
#### Example:
```sql
begin 
declare variable1 int;
set variable1=12;
select variable1; --valid within it's scope
end
-- select variable1; here an error will show up
```
![[Pasted image 20241118175559.png]]

________
## Session variable
a variable that only exists in a session
- cannot use declare with session variable.
### What's a session?
interaction or an exchange of information between server and client,
![[r.png]]
#### Example
```sql
set @variable1=12;
select @variable1;
```
![[Pasted image 20241118182216.png]]

___________
## Global Variable
- It can be used by all connections related to server
- it can be only used to set `system variables`
#### Example
```sql
set global <system_variable> =12;
--or
set @@global.<system_variable> =12;
```

##### by using two connections
![[Pasted image 20241118185952.png]]
![[Pasted image 20241118190022.png]]
when max_user_connections=1;
![[Pasted image 20241118191245.png]]
____________
![[Pasted image 20241118191600.png]]
```sql
-- to make a system variable a session variable
set session <system_variable>=10;
```
![[Pasted image 20241118191713.png]]