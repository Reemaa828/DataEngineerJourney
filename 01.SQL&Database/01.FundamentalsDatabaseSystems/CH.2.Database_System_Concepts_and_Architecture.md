# CH.2 Database System Concepts and Architecture
## What does data abstraction mean in the database approach?
Data abstraction means the suppression of  details of data organization, data storage and any details that a specific type of users don't care to know.
Data abstraction is made so that different users can view data at a preferred level of detail.
## What's a data model?
A data model is a collection of concepts that describe the data structure of the data base; data structure means the data type, the data structure and the constrains of data used in the database. 
### Types of data models
![Pasted image 20240910183037](https://github.com/user-attachments/assets/63707702-aa36-43c4-bf78-c17995fac827)


1. Conceptual/High-level data model: it provides concepts that are close to the way that users perceive the data.
2. Representational data model: it provides concepts that end user can easily understand.
3. Physical/Low-level data model: it provides concepts that provides details of how data is stored on storage media.
## What's a data schema?
it's a database description usually done in the design of database phase.
## The three-schema architecture
1. The internal level has an internal schema, which describes the physical storage structure of the database. The internal schema uses a physical data model and describes the complete details of data storage and access paths for the database.
2. The conceptual level has a conceptual schema, which describes the structure of the whole database for a community of users. The conceptual schema hides the details of physical storage structures and concentrates on describing entities, data types, relationships, user operations, and constraints. Usually, a representational data model is used to describe the conceptual schema when a database system is implemented.
3. The external or view level includes a number of external schemas or user views. Each external schema describes the part of the database that a particular user group is interested in and hides the rest of the database from that user group.
