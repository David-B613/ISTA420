#### Homework 001
#### David Babers
#### ISTA 420:  T-SQL Fundamental
#### Charles Carter
#### January 13, 2020


1.	How does the book describe the difference between imperative and declarative languages

* **Declarative language was related to the English language in the sense of you say what you want. While the imperative language would be better describe by saying how to get what you want.**

2. List three categories of command statements in SQL

* **Select, update, delete**

3.	Give an informal definition of database as used in the expression “relational database management system.” Give an informal definition of database as used in the expression “Human Resources database.”

* **Database used in the sense of “relational database” is information or data in the form of a table that can be organized and reorganized. Database, used in the context of Human resources database would be information or data found underneath the umbrella or relation too Human resources.**


4.	How does SQL implement three-valued predicate logic?

* **By allowing three possible logical values that can result in true, false, and unknown.**


5.	How does SQL enforce entity integrity? What is entity integrity?

**By allowing you define the Primary key. A table an only have one primary key but it can have several unique indexes. Entity integrity is the system that is used to maintain primary keys**.


6.	How does SQL enforce referential integrity? What is referential integrity?

* **Foreign keys are used to enforce referential integrity. It is used to ensure the accuracy and consistency of data within a relationship.**



7.	What is relation as defined in the textbook? A one word answer to this question is sufficient.

* **Table, model, or database**


8.	Is this table in first normal form? Why or Why not? If it is not, how would you change it?

**Create table faculty (
   facID int primary key,
  facName text,
  facCreds text);

facID 	facName	facCreds
1	Alan Alda 	BA, MA
2	Bridgette Bardot 	BS, MS, PhD
3	Casey Cason 	AA, BBA, MBA, DEd

This table is not in 1NF because each of the facCreds columns can be divided. We would have to split it into two tables

               Table_facName
facID	facName
1	Alan Alda
2	Bridgette Bardot
3	Casey Cason






		Table_facCreds
facID	facCreds
1	BA
1	MA
2	BS
2	MS
2	PhD
3	AA
3	BBA
3	MBA
3	DEd**



9.	Is this table in second normal form? Why or why not? If it is not, how would you change it?

 **Create table pets (
ownerID int primary key,
petID int primary key,
owenerFirstName text,
ownerLastName text,
petName text,
petType text);

No, every none key column depends on the primary key.**

10.	Is this table in third normal for? Why or Why not? If it is not, how would you change it?

* **Yes**

11.	List the components of a four-part name

* **Server name, Database Name, Schema Name, and object name**

12.	What is the difference between declarative data integrity and procedural data integrity?

* **Declarative data integrity**
