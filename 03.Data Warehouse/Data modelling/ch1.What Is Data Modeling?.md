# What Is Data Modeling?
________

# Table Of Content📜 
- [In simple words, what's data modeling?](#in-simple-words-whats-data-modeling)
- [What's an information system?](#whats-an-information-system)
- [Why is data modeling important](#why-is-data-modeling-important)
			- [Leverage التأثير](#leverage-%D8%A7%D9%84%D8%AA%D8%A3%D8%AB%D9%8A%D8%B1)
			- [Conciseness الايجاز](#conciseness-%D8%A7%D9%84%D8%A7%D9%8A%D8%AC%D8%A7%D8%B2)
			- [Data Quality](#data-quality)
  
- [What makes a good data model?](#what-makes-a-good-data-model)
			- [Completeness الاكتمال](#completeness-%D8%A7%D9%84%D8%A7%D9%83%D8%AA%D9%85%D8%A7%D9%84)
			- [Non-redundancyعدم التكرار](#non-redundancy%D8%B9%D8%AF%D9%85-%D8%A7%D9%84%D8%AA%D9%83%D8%B1%D8%A7%D8%B1)
			- [Enforcement of Business Rules](#enforcement-of-business-rules)
			- [Data Reusability اعادة استخدام](#data-reusability-%D8%A7%D8%B9%D8%A7%D8%AF%D8%A9-%D8%A7%D8%B3%D8%AA%D8%AE%D8%AF%D8%A7%D9%85)
			- [Stability and Flexibility](#stability-and-flexibility)
			- [Elegance](#elegance)
			- [Communication](#communication)
			- [Integration](#integration)
  
- [Performance](#performance)
- [Conceptual, Logical, and Physical Data Models](#conceptual-logical-and-physical-data-models)
  
	- [What's conceptual data model?](#whats-conceptual-data-model)
	- [What's logical data model?](#whats-logical-data-model)
	- [What's physical data model?](#whats-physical-data-model)
	- [We can think of the physical database design as the inside of a black box, or the engine under the hood](#we-can-think-of-the-physical-database-design-as-the-inside-of-a-black-box-or-the-engine-under-the-hood)
   
- [The Three-Schema Architecture and Terminology](#the-three-schema-architecture-and-terminology)
			- [- The conceptual schema describes the organization of the data into tables and columns](#--the-conceptual-schema-describes-the-organization-of-the-data-into-tables-and-columns)
			- [The internal schema describes how the data will be physically stored and accessed](#the-internal-schema-describes-how-the-data-will-be-physically-stored-and-accessed)
			- [- The external schemas specify views that enable different users of the data to see it in different ways.](#--the-external-schemas-specify-views-that-enable-different-users-of-the-data-to-see-it-in-different-ways)
- [Why is the three layer architecture important?](#why-is-the-three-layer-architecture-important)
- [Data Models vs. Database Layers](#data-models-vs-database-layers)

________________
# In simple words, what's data modeling?
- the design of the data structures and the documentation of that design in a set of data models.
- A **data model** specifies **what data the system will store and how it will be organized**
# What's an information system?
an information system as consisting of a database(containing stored data) together with programs that capture, store, manipulate, and retrieve the data.
______________
# think of data model  as something you give to a database administrator as a specification of what to build, just like an architect gives a plan to a builder.
_________
# In design, we do not expect to find a single correct answer, although we will certainly be able to identify many that are incorrect.
_______
# Why is data modeling important

![Pasted image 20241215201942](https://github.com/user-attachments/assets/bcb558e1-a788-4ddf-b025-922ba6820f3e)


- since the database is the backend of all information systems, so devoting time and effort to design a data model is worth it
### 1️⃣ Leverage التأثير
- a small change to a data model may have a major impact on the system as a whole.
- the programs in [figure](#why-is-data-modeling-important) are far more complex and take much longer to specify and construct than the database. But their content and structure are heavily influenced by the database design.
- a well-designed data model can make programming simpler and cheaper. Even a small change to the model may lead to significant savings in total programming cost.
- poor data organization can be expensive—sometimes extremely expensive—to fix.
- Changing the shape of the database may in itself be straightforward, but the costs come from altering each program that uses the affected part.
- Problems with data organization arise not only from failing to meet the initial business requirements but from changes to the business after the database has been built.
### 2️⃣ Conciseness الايجاز
- A data model is a very powerful tool for expressing information systems(database + DBMS) requirements and capabilities
- Think of it like **blueprints for a building** versus a **full construction manual**

### 3️⃣ Data Quality 
Inaccurate data (poor data quality) reduces the value of the data asset and can be expensive or impossible to correct. 
Frequently, problems with data quality can be traced to a lack of consistency in 

(a) defining and interpreting data, and

(b) implementing mechanisms to enforce the definitions.

	`(a) Inconsistent Definitions and Interpretations**`
	
	- Data must be consistently defined and interpreted across the system.
	    - Example:
	        - If "Customer" is defined differently by sales (as a lead) and accounting (as someone who made a purchase), it leads to confusion and errors.
	    - Solutions:
	        - Ensure all stakeholders agree on definitions.
	(b) Lack of Mechanisms to Enforce Definitions
	- Even with clear definitions, if they are not enforced programmatically, data quality will degrade.
	    - Example:
	        - If "Date of Birth" is allowed to have inconsistent formats (e.g., DD/MM/YYYY vs. MM/DD/YYYY), reports will be inaccurate.
	    - Solutions:
	        - Implement **data validation rules** at the database level (e.g., constraints, triggers).
	
The data model thus plays a key role in achieving good data quality by establishing a common understanding of what is to be held in each table and column, and how it is to be interpreted.
________
# What makes a good data model?
### 1️⃣ Completeness الاكتمال
Does the model support all the necessary data?.

### 2️⃣ Non-redundancyعدم التكرار
Does the model specify a database in which the same fact could be recorded more than once?
- example: The Age column would seem to record essentially the same fact as Birth Date
Recording the same data more than once increases the amount of space needed to store the database, requires extra processes (and processing) (in etl for example)

### 3️⃣ Enforcement of Business Rules
How accurately does the model reflect and enforce the rules that apply to the business’ data?
### 4️⃣ Data Reusability اعادة استخدام
The concept of **data re-usability** refers to the idea that **data** captured and stored in a system should be structured in such a way that it can be reused for **multiple purposes** beyond its initial intended use. 
This is an important aspect of **data modeling** because it ensures that the data remains valuable over time and can support new business needs, applications, and analyses as they emerge

### 5️⃣ Stability and Flexibility
- The ability of a **data model** to cope with **changes in business requirements** is critical for the adaptability and longevity of an information system. 
- If the data model is flexible enough, it can accommodate **new requirements** and **business changes** without requiring extensive changes, allowing the system to respond quickly and efficiently.

### 6️⃣ Elegance
The concept of **elegance** in data modeling refers to the ability to create a **simple**, **consistent**, and **well-organized** representation of data that accurately reflects business processes while minimizing unnecessary complexity

### 7️⃣ Communication
How effective is the model in supporting communication among the various stakeholders in the design of a system?
- Do the tables and columns represent business concepts that the users and business specialists are familiar with and can easily verify? Will programmers interpret the model correctly?
- The quality of the final model will depend very much on informed feedback from business people. Programmers, in turn, need to understand the model if they are to use it as intended
- The most common communication problems arise from high levels of complexity, new concepts, and unfamiliar terminology.
- A model of twenty or thirty tables will be overwhelmingly complex for most nonspecialists, unless presented in a summary form, preferably using graphics.

### 8️⃣ Integration
How will the proposed database fit with the organization’s existing and future databases?
- Even when individual databases are well designed, it is common for the same data to appear in more than one database and for problems to arise in drawing together data from multiple databases.
- Many organizations address problems of this kind by establishing an organization-wide architecture specifying how individual information systems should work together to achieve the best overall result
- Developing a data model in the context of such an architecture may involve building onto existing data structures, accepting a common view on how data should be organized, and complying with organizational standards for data definitions, formats, and names.
__________
# Performance
. The usual (and recommended) procedure is to develop the data model without considering performance, then to attempt to implement it with the available hardware and software.
_______
# Conceptual, Logical, and Physical Data Models
![Pasted image 20241216004607](https://github.com/user-attachments/assets/8859f78a-b471-4e9d-bba7-1442f58e66b6)

## What's conceptual data model?
- The conceptual data model is a technology-independent specification of the data to be held in the database. (meaning focuses purely on the **business requirements and data needs**, without being influenced by the technical details of the database platform or implementation )
- It is the focus of communication between the data modeler and business stakeholders, and 
- it is usually presented as a diagram with supporting documentation.
### example:
![Pasted image 20241216005956](https://github.com/user-attachments/assets/412adc60-1776-4fcd-8359-f13144d109e1)

## What's logical data model?
The logical data model is a translation of the conceptual model into structures that can be implemented using a database management system (DBMS).
![Pasted image 20241216010814](https://github.com/user-attachments/assets/2df3eaf5-58af-4562-a567-b51c32ab2e2b)

## What's physical data model?
- A physical data model specifies how the data model will be built in the database. 
- It outlines all table structures, including column name, data types, column constraints, primary key and foreign key with indexes to the relevant table column, relationships between tables, stored procedures, and views.

![Pasted image 20241216013217](https://github.com/user-attachments/assets/318090a0-e360-4080-abbd-5192130e8948)

____
## We can think of the physical database design as the inside of a black box, or the engine under the hood

_________
# The Three-Schema Architecture and Terminology
The three-layer (or three-schema) architecture supported by popular DBMSs achieves two important things:
1. It insulates programmers and end-users of the database from the way that data is physically stored in the computer(s).

		Imagine you run a query to retrieve orders:
			`SELECT * FROM Orders WHERE Order_ID = 123;`
		`- `You don’t know whether the data came from:`
		    `- A single file (Orders.mdf),`
		    `- A distributed cluster (e.g., a cloud database like Amazon RDS), or`
		    `- A backup ..`
        The **DBMS decides** how and where to fetch the data, abstracting these details.
   
2. It enables different users of the data to see only the subset of data relevant to them, organized to suit their particular needs.

![Pasted image 20241216015530](https://github.com/user-attachments/assets/89ebb55d-f9e1-40c1-983e-6608aebca275)
### - The conceptual schema describes the organization of the data into tables and columns

### - The internal schema describes how the data will be physically stored and accessed

### - The external schemas specify views that enable different users of the data to see it in different ways.
______
# Why is the three layer architecture important?
- It is worth doing the role of the three-schema architecture in insulating users from change that is not relevant to them.
- The separation of the conceptual schema from the internal schema insulates users from a range of changes to the physical organization of data.
- The separation of the external schema from the full conceptual schema can insulate users from changes to tables and columns not relevant to them.
Insulation of this kind is a key feature of DBMSs and is called data independence.
__________
# Data Models vs. Database Layers
- In the relational database world, **data models** (conceptual, logical, and physical) are outputs of various stages of the data modeling process. 
- Meanwhile, the **three-schema architecture** (internal, conceptual, and external schemas) refers to the layers of a database that help organize data and structure access.

> [!NOTE]
> 
> - It is emphasized that the **conceptual schema** should **directly reflect** the tables and structures defined in the **physical data model**
> - The **conceptual schema** is a deliverable of the data modeling process, meaning that it should not be treated as an abstract or flexible document that can change freely without proper consultation with the data modeler and stakeholders.
