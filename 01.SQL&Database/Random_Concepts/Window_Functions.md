# Window functions
# What's a window in SQL?🪟
A window is a set of rows on which a window function operates on.
## And How can be define a window?
General syntax:
```sql
 window_function(column_name2)
 OVER([PARTITION BY column_name1] [ORDER BY column_name3])
```
### The `Over` clause
- It's used with window functions to define that window.
- It's often used with functions like `ROW_NUMBER()`, `RANK()`, `SUM()`, `AVG()`, `COUNT()`, and others. 
- Unlike regular aggregate functions, which return a single result for a group of rows, the `OVER` clause lets you apply the function to each row individually.

- ![Pasted image 20241106185523](https://github.com/user-attachments/assets/8dc9db11-863c-41a7-950a-1e3624540340)

- it does two things : 
    - **PARTITION BY**: Divides the result set into partitions, similar to `group by`. The function then operates within each partition, as opposed to the entire table. If omitted, the function applies to the entire dataset.
 
  ![Pasted image 20241106190804](https://github.com/user-attachments/assets/715217ec-4361-4c26-b4a1-ed1fa6dd3f94)

    - **ORDER BY**: Defines the order of rows in each partition.
  
  ![Pasted image 20241106190847](https://github.com/user-attachments/assets/f6ad791c-6b48-4e81-b1e7-f0d753377059)

__________
# List of Window Functions
### Ranking Functions

- `row_number()`
- `rank()`
- `dense_rank()`
### Analytic Functions

- `lead()`
- `lag()`
### Aggregate Functions
- `avg()`
- `count()`
- `max()`
- `min()`
- `sum()`
_________

## `ROW_number()`
General syntax:
```sql
ROW_NUMBER() OVER([PARTITION BY value expression, ... ] [ORDER BY order_by_clause])
```
- `ROW_NUMBER()`: This is the function itself, which generates sequential row numbers.
- `OVER (...)`: This clause is mandatory for window functions like `ROW_NUMBER()`. It defines the context in which row numbers are calculated.
- `PARTITION BY value_expression`: This optional clause divides the result set into partitions based on the specified column(s) . Row numbers are then calculated independently within each partition.
- `ORDER BY order_by_clause`: This optional clause specifies the order in which row numbers are assigned within each partition (or the entire result set if no `PARTITION BY` is used).
  
![Pasted image 20241107132744](https://github.com/user-attachments/assets/fde616c1-f98e-4606-9bca-3a1782decf97)

__________


## `Rank()`
General syntax:
```sql

RANK() OVER ( [PARTITION BY partitioning_expression]  [ORDER BY order_expression]) 
```
ranking functions help us assign ranks to rows based on partitioning and order expressions. Think of these ranks as numbers that indicate the position of a row within a specific "window" of data.

##### Example:
```sql
SELECT Studentname,
       Subject,
       Marks,
       RANK() OVER(PARTITION BY Studentname ORDER BY Marks DESC) Rank
FROM ExamResult
ORDER BY Studentname,
         Rank;
```
![Pasted image 20241107134924](https://github.com/user-attachments/assets/786a9990-51f5-4b14-a3c1-b317b9c54da0)


____________

## `Dense_rank()`
It is similar to the Rank function with a small difference
General syntax:
```sql
DENSE_RANK() OVER ( [PARTITION BY partitioning_expression]  [ORDER BY order_expression]) 
```

##### Example:
```sql
SELECT Studentname,
       Subject,
       Marks,
       DENSE_RANK() OVER(ORDER BY Marks DESC) Rank
FROM ExamResult
ORDER BY Rank;
```

![Pasted image 20241107135736](https://github.com/user-attachments/assets/eb5097a2-8970-4b33-8103-935fe5b18150)


#### Difference between `rank` and `dense_rank`

![Pasted image 20241107135634](https://github.com/user-attachments/assets/ba47f589-d0aa-496d-a585-e876b6303f04)

______________

### Difference between `rank`, `dense_rank` and `row_number`

![Pasted image 20241107140314](https://github.com/user-attachments/assets/b9d6d3d4-fbae-48eb-91c2-0ab229076d37)


_____________


## `lag()` and `lead()`
Think of `LEAD()` as a function that lets you peek into the future 🔮, and `LAG()` as a way to glance into the past ⏪.
- `lead(column, offset, default)` - the value for the row _offset_ rows after the current; _offset_ and _default_ are optional; default values: _offset_ = 1, _default_ = `NULL`
- `lag(column, offset, default)` - the value for the row _offset_ rows before the current; _offset_ and _default_ are optional; default values: _offset_ = 1, _default_ = `NULL`
General syntax:
```sql
LEAD(column_name, offset) OVER ([PARTITION BY partition_column]  [ORDER BY order_column])

LAG(column_name, offset) OVER ([PARTITION BY partition_column]  [ORDER BY order_column])
```

##### Example
```sql
SELECT
  date,
  close,
  LEAD(close) OVER (ORDER BY date) AS next_month_close,
  LAG(close) OVER (ORDER BY date) AS prev_month_close
FROM stock_prices
```

![Pasted image 20241107141456](https://github.com/user-attachments/assets/2b8de78c-fe9e-4ff2-b294-6b39a7ee2910)


![Pasted image 20241107141517](https://github.com/user-attachments/assets/774d6570-95ef-406d-81a3-d14dab70e325)












































































