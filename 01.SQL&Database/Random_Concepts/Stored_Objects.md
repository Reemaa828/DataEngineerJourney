# Stored Objects in SQL
# What's T-SQL?
- T-SQL, or **Transact-SQL**, is Microsoft's extension of SQL (Structured Query Language) designed to work with Microsoft SQL Server. 
- T-SQL includes the standard SQL commands, such as `SELECT`, `INSERT`, `UPDATE`, and `DELETE`, but it also adds additional functionality for more complex operations.
# Stored Procedure
## What's a stored procedure?
- A stored procedure is a prepared SQL code( a t-SQL statements) that you can save, so the code can be reused over and over again.
- The stored procedure is stored as a named object in the SQL Server Database Server.
- When you call a stored procedure for the first time, SQL Server creates an execution plan and stores it in the cache. In the subsequent executions of the stored procedure, SQL Server reuses the plan to execute the stored procedure.

## Syntax to use/create/drop stored procedure
```sql
Create procedure <procedure_name>
begin
<statements>
end;
```
![Pasted image 20241107183653](https://github.com/user-attachments/assets/a410d291-dcf5-4251-bcd6-253bfbe4515f)

to call the stored procedure
```sql
call <procedure_name>();
```

![Pasted image 20241107184423](https://github.com/user-attachments/assets/37cd5d0f-2022-4486-b512-1f026c1b0a32)

to modify the stored procedure
```sql
alter procedure <procedure_name>
as
begin
<statements>
end;
```
to delete the stored procedure
```sql
drop procedure <procedure_name>
```
__________

## Stored procedure with parameters
### Input parameter
General syntax:
```sql
CREATE PROCEDURE <PROCEDURE_NAME>(IN <PARAMETER> <DATA_TYPE)
BEGIN
<STATEMENTS>
END ;
```
Example
```sql
delimiter $$
CREATE Procedure s2 (in llanguage char(20))
begin SELECT title, name from film join language USING(language_id) WHERE name=llanguage ;
END $$
delimiter 

CALL s2('english') ;
```
- **Delimiter**:
    
    - The `DELIMITER $$` command changes the delimiter from the default semicolon (`;`) to `$$`, allowing you to use semicolons inside the procedure body without ending the procedure definition.
    - After creating the procedure, you reset the delimiter back to the default semicolon with `DELIMITER ;`.
- **Procedure Definition**:
    
    - `IN llanguage CHAR(20)`: This defines an input parameter `llanguage` of type `CHAR(20)` (it can hold language names such as `'English'`).
    - `WHERE name = llanguage`: Filters the results based on the language name provided as an input parameter.
- **Calling the Procedure**: 
    - You can call the procedure and pass `'english'` as a parameter like this:
 ```sql
    CALL s2('English');
```

____________
### Output parameter
General syntax:
```sql
CREATE PROCEDURE <PROCEDURE_NAME>(out <PARAMETER> <DATA_TYPE)
BEGIN
<STATEMENTS>
SELECT @SS
END ;

call <PROCEDURE_NAME>(@SS) ;
```
Example
```sql
CREATE PROCEDURE s4 (in ccustomer int, out rentall int, out revenuee int)

begin

SELECT sum(amount) into rentall FROM payment ;

SELECT sum (amount) into revenuee FROM payment WHERE customer_id = ccustomer;

SELECT @ff , @kk ;

END

  

CALL s4(2,@ff,@kk);
```


![Pasted image 20241108192023](https://github.com/user-attachments/assets/6fda470d-8f93-4eac-82a8-622d07783c68)


>[!TIP]
> look up [variables in SQL](https://www.sqlservertutorial.net/sql-server-stored-procedures/variables/)
____________

# User defined function
User defined scalar function takes one or more parameters and returns a single value.
General syntax:
```sql
CREATE FUNCTION function_name (parameter_list)
RETURNS data_type AS
BEGIN
    statements
    RETURN value
END

```

Example

![Pasted image 20241108210107](https://github.com/user-attachments/assets/ba91d059-b483-48f6-a828-6246c99a7ba4)


>[!TIP]
>unlike stored procedures, **user-defined functions (UDFs)** in MySQL can be directly used in `SELECT` statements

_______________





























