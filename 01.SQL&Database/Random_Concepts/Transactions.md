# Transactions
# What's a transaction? 🔄
It's a sequence of queries or bunch of statements that make a change in the database.
For example:
if you are creating, updating or deleting a record from the table, then you are performing a transaction on that table.
```sql
-- one transaction 
INSERT INTO t1 VALUES (1, 'ahmed'), (2, 'aya'), (3, 'john');

-- second transaction
UPDATE t1 SET first_name = 'ali' WHERE id = 1;
```
>[!Note]
>- by default these statements are `autocommit`

______________
# Transaction Syntax ✍🏻
```sql
START TRANSACTION
<statements>

commit; --rollback;
```
OR
```sql
SET autocommit =0
<statements>

commit; -- rollback;
```
____________

# What does ACID mean? 🎍
**Atomicity**

- All changes to data are performed as if they are a single operation. That is, all the changes are performed, or none of them are.

	For example, in an application that transfers funds from one account to another, the atomicity property ensures that, if a debit is made successfully from one account, the corresponding credit is made to the other account.

**Consistency**

- Data is in a consistent state when a transaction starts and when it ends.
	
	For example, in an application that transfers funds from one account to another, the consistency property ensures that the total value of funds in both the accounts is the same at the start and end of each transaction.

**Isolation**

- The intermediate state of a transaction is invisible to other transactions. As a result, transactions that run concurrently appear to be serialized(one after the other, without any overlap)
	
	For example, in an application that transfers funds from one account to another, the isolation property ensures that another transaction sees the transferred funds in one account or the other, but not in both, nor in neither.

**Durability**

- After a transaction successfully completes, changes to data persist(stays) and are not undone, even in the event of a system failure.


	For example, in an application that transfers funds from one account to another, the durability property ensures that the changes made to each account will not be reversed.

![Pasted image 20241110200647](https://github.com/user-attachments/assets/fd807474-f77b-4625-a1da-fc43dc168d8c)



___________

# How does Transaction happen?


![Pasted image 20241110191256](https://github.com/user-attachments/assets/fdac7a76-28df-433e-85d7-0d60717fe7ab)


1. **User Query Execution**: 
    - The user writes a SQL query that might involve reading, updating, inserting, or deleting rows in the database.
    
2. **Data Retrieval from Disk to Memory**:
    - The database engine identifies the relevant data pages on disk that contain the rows required for the query.
    - These pages are loaded into memory (buffer cache or buffer pool) if they’re not already there.
    - Once in memory, the database engine can access and manipulate these pages efficiently.
3. **In-Memory Changes and Logging (Commit)**:
    - Any updates to the data (e.g., `UPDATE` or `DELETE` operations) are first made in memory.
    - These changes are not immediately written back to disk. Instead, they’re **logged** in a **transaction log file** on disk. The log acts as a record of each transaction and ensures that changes can be recovered if there’s a failure.
4. **Retrieval then happens**.


![Pasted image 20241110193433](https://github.com/user-attachments/assets/e54dbaab-4ce5-4cd2-aaae-fa8140d0a776)


- It's only `harden` according to a system variable in the database engine
_______________
# What happens when you want to read the `dirty page` that's not yet `harden` into the disk?
### One of the Approaches
**Locking Mechanism**:
- Many relational databases use **locking** to manage concurrent access. When a transaction is updating a page or row, the engine may **lock** it to prevent other transactions from reading or modifying the same data until the update is complete.
- This approach prevents **dirty reads** (reads of uncommitted data) and ensures that transactions see only consistent data.
- Locks can be applied at different levels: row-level, page-level, or table-level, depending on the database engine and its isolation level settings.

**Another Approach**
Like MySQL engine will upload the same page into memory before the transactions.

>[!TIP]
>- The transaction owner that made these transaction can see the dirty pages even before commits
>- Different engines implement these approaches differently

________________
# Example
It's `autocommit` so it shows right away.


![Pasted image 20241110201333](https://github.com/user-attachments/assets/23faa750-4323-4091-aaa7-121b7eeb86c4)

here i made a transaction but didn't commit, it showed the changes cause the transaction owner can read from dirty pages.

![Pasted image 20241110201710](https://github.com/user-attachments/assets/63338ef3-d55e-418d-9566-36b833a1cd10)

but will not show in another server

![Pasted image 20241110201844](https://github.com/user-attachments/assets/6708d495-0ff9-40ef-b512-8c3ff3f8b994)

only once committed it showed in both

![Pasted image 20241110202219](https://github.com/user-attachments/assets/a8773af9-6515-4f38-b7a0-e8e29acf049d)



![Pasted image 20241110202250](https://github.com/user-attachments/assets/652f0cb6-b046-4aec-8e92-a1ff9ddefef5)

rollback will neglect the transactions that happened

![Pasted image 20241110202407](https://github.com/user-attachments/assets/2cf819ae-b59b-4594-9350-6555ac655855)

with `autocommit`

![Pasted image 20241110202600](https://github.com/user-attachments/assets/04bb939d-94a7-449c-b227-529b38df8c54)







