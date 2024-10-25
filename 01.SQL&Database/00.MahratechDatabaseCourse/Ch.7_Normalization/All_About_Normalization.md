# Normalization

## What's Normalization of Data?
- performing a group of tests called `normal forms` to:
    - verify the goodness of our database design and thus minimize redundancy and anomalies like update, delete and insert also frequent null values
    - create a new database design
## Example
- Redundancy of data: if we have a department of 100 employees, so the number of department and department number are duplicated.
![image.png](https://itg.singhinder.com?url=https://gist.githubusercontent.com/Reemaa828/05cf673bb0e2e50986eeae5c4f640c66/raw/image.png)
![image.png](https://itg.singhinder.com?url=https://gist.githubusercontent.com/Reemaa828/3c052eb8590240c41e4359a4f63333d8/raw/image.png)
- Redundancy effects the table size, the wasted storage and the performance.
_________
- Insert anomalies: we cannot include data of department without having at least one employee because the primary key is SSN (employee's number).
- Delete anomalies: if we deleted the employee that works in a department alone, the whole existence of department is deleted.
- Update anomalies: if we want to update the department name of 100 employees, so it will go and update 100 times for 100 employees.
- frequent null value: if a department of 100 employees is removed, so there will be a lot of nulls in one column.
______________
## What's functional dependency 
- a constraint between two attributes(column) or set of columns.
- meaning that a value of A uniquely determines the value of B.
- examples: if i say employee's name is dependent on SSN, this means that there's functional dependent where knowing SSN will leads to knowing the employee's name.
![image.png](https://itg.singhinder.com?url=https://gist.githubusercontent.com/Reemaa828/8a1f187d9824cbcb51cb58abee0978f3/raw/image.png)

### Types of functional dependency
- Fully: an attribute is fully dependent on a key attribute.
![image.png](https://itg.singhinder.com?url=https://gist.githubusercontent.com/Reemaa828/24cb020b2a11d09f13b74874a76fedca/raw/image.png)
![image.png](https://itg.singhinder.com?url=https://gist.githubusercontent.com/Reemaa828/c9887a5225ec5ef2f0593a39e6167b09/raw/image.png)
- Partially: an attribute is partially dependent on a key attribute. 
![image.png](https://itg.singhinder.com?url=https://gist.githubusercontent.com/Reemaa828/5b3629945e0dd76db57bf39d34b3a27f/raw/image.png)
- Transitive: an attribute is dependent on another attribute which is dependent on a key attribute.
![image.png](https://itg.singhinder.com?url=https://gist.githubusercontent.com/Reemaa828/003c992dad43ed675a19bfd9ea6aba35/raw/image.png)
__________
## So What's Normalization actually is?
- It's process of decomposing unsatisfactory "bad" relations into smaller relations using their attributes.
![Untitled video - Made with Clipchamp](https://github.com/user-attachments/assets/c49931a2-49ce-44ab-a9d2-28bce370bfa5)


## What's a normal form?
- condition using keys and foreign keys of a table to determine if the schema belongs to which normal form.
![image.png](https://itg.singhinder.com?url=https://gist.githubusercontent.com/Reemaa828/00cc1d535917c431ab5e747abb3979a4/raw/image.png)

### When can i say that the table is in first normal form `1nf`?
- when it has no multivalued attribute
- no composite attribute
- no repeating group(if i have many multivalued attribute and the data have relation between each other , it's called repeating group)
Example: 
![image.png](https://itg.singhinder.com?url=https://gist.githubusercontent.com/Reemaa828/8f51a33186f450a0d5e89c6164b64d5a/raw/image.png)
- we have to make them into smaller tables by taking `pk` as `fk` into new table.
![image.png](https://itg.singhinder.com?url=https://gist.githubusercontent.com/Reemaa828/98269330d0ee29d091751e67a2754268/raw/image.png)
__________
## Normal forms are sequential; meaning if my relation is applies the `1nf` then sequentially it may apply second normal form.
![Untitled video - Made with Clipchamp (1)](https://github.com/user-attachments/assets/b512ed8f-c393-49bb-be33-da6ce17c0d95)

_________
### When can i say that the table is in second normal form `2nf`?
- applied the first normal form `1nf`
- has no partial dependency
Example:
![image.png](https://itg.singhinder.com?url=https://gist.githubusercontent.com/Reemaa828/267a5b3f5fe4da10fbbd5a4a29281c3f/raw/image.png)
![image.png](https://itg.singhinder.com?url=https://gist.githubusercontent.com/Reemaa828/762baab918d685bf1befcaa7b022517c/raw/image.png)
![image.png](https://itg.singhinder.com?url=https://gist.githubusercontent.com/Reemaa828/21247d88f76cfb8a14b285e37a63af8e/raw/image.png)
taking the partial key as a foreign key in a new relation with attribute that partially dependents on it.
__________
### When can i say that the table is in third normal form `3nf`?
- applied the second normal form `2nf`
- has no transitive dependency
we will take the attributes that is transitive dependent on a key in a different table where one of them will be the primary key in another relation and a foreign key in the original table with the key that it dependents on.
![image.png](https://itg.singhinder.com?url=https://gist.githubusercontent.com/Reemaa828/733300187bfc9816f2e4b6cade17ddce/raw/image.png)
____________
![image.png](https://itg.singhinder.com?url=https://gist.githubusercontent.com/Reemaa828/aadf5728e4c17f2654ce61bd87bbe454/raw/image.png)

>[!TIP]
>- It's recommended to stop at the third normal form.
>- there's fourth and fifth... and so on normal forms but it may affect the performance.
