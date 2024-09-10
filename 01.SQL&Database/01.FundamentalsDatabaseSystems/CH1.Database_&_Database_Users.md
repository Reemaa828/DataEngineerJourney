# CH.1 Database and Data users
## What's a Database
It's a collection of related data; by data it means known facts that can be recorded and has meaning.
- the database represent some aspects to the real world, any update to the real data irl should show in the database.
- the database is logically coherent collection of data; meaning the data store in it somehow relate to each other.
- the database is made for a specific purpose; which means the data stored should contain relevant data.
## What's a DBMS?
- It's a collection of programs that enables the users to create and maintain a database
- the DBMS is a general purpose software system that facilitates the processes of defining, constructing, sharing and manipulating databases.
- defining database: specifying the data types, data structures and constraints of data that will be stored in the database, the database definition is called metadata.  
- constructing database: it's process of storing database on some storage medium that are controlled by DBMS. 
- manipulating database: it's includes functions such as querying the database to retrieve specific data, generating reports from database and updating data.
- sharing: multiple users can simultaneously access the database.
  
![Pasted image 20240910025946](https://github.com/user-attachments/assets/aa55568d-1c98-4f70-84a0-1de8e3cd1a10)

## What's file processing?
- before the database exists, file processing was used to collect data.
- it's a group of applications or programs that user uses to store data.
- limitation: program-data dependence, duplicate data, limited data sharing.
## What's characteristics of database approach
1. Self-Describing Nature of a Database System: that the database system doesn't only contain the database but also it's metadata; meaning that metadata and the data will be available for you, you don't have to write it yourself. 
2. Insulation between Programs and Data: The structure of data files is stored in the DBMS catalog separately from the access programs.
3. Support of Multiple Views of the Data: A database typically has many types of users, each of whom may require a different perspective or view of the database.
4. Sharing of data

## Actors of Scene
1. Database administrator: The DBA is responsible for authorizing access to the database, coordinating and monitoring its use, and acquiring software and hardware resources as needed. The DBA is accountable for problems such as security breaches and poor system response time.
2. Database designer: Database designers are responsible for identifying the data to be stored in the database and for choosing appropriate structures to represent and store this data.
3. End Users: End users are the people whose jobs require access to the database for querying, updating, and generating reports; the database primarily exists for their use.
4. System Analysts: System analysts determine the requirements of end users.
5. Application Programmers: Application programmers implement these specifications as programs; then they test, debug, document, and maintain these canned transactions.


## Advantages of database approach 
1. avoiding redundancy of data
2. providing backup and recovery
3. Inconsistency can be avoided (the update will be seen)
4. Enforcing integrity constrains (if a column needs a special kind of data only that should be used)
5. Access privileges 
