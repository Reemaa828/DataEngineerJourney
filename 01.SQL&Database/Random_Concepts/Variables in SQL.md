# Variables in SQL

## 💭 Types of variables that exists in SQL 
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

![Pasted image 20241118175559](https://github.com/user-attachments/assets/dc6ec072-bff5-48f3-af8e-e98628ba7d34)

________
## Session variable
a variable that only exists in a session
- cannot use declare with session variable.
### What's a session?
interaction or an exchange of information between server and client,

![r](https://github.com/user-attachments/assets/714f2605-54c4-46d5-a4c0-d7c28c17ad89)

#### Example
```sql
set @variable1=12;
select @variable1;
```

![Pasted image 20241118182216](https://github.com/user-attachments/assets/4c0cce63-084e-4015-b8a7-6e8361174ed9)

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

![Pasted image 20241118185952](https://github.com/user-attachments/assets/e405eb7b-84ef-472e-bb15-56199997bb34)

![Pasted image 20241118190022](https://github.com/user-attachments/assets/d791ec2a-a0ab-48dc-8f90-9c4631405b46)

when max_user_connections=1;

![Pasted image 20241118191245](https://github.com/user-attachments/assets/a34e3257-75b7-405c-867e-8ff0a68ca5d2)

____________

![Pasted image 20241118191600](https://github.com/user-attachments/assets/ddf2cc43-3a28-4d5a-b179-55bdce727b9e)

```sql
-- to make a system variable a session variable
set session <system_variable>=10;
```

![Pasted image 20241118191713](https://github.com/user-attachments/assets/da3e9c61-0d77-4cfb-a2fc-9d63a5f02a77)
