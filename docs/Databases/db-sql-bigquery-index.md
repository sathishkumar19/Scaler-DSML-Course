Databases & SQL in Machine Learning Context
---

## Determing the Database

In Machine Learning , Databases are used with both SQL and NoSQL options  , Choosing Databases depends upon Structured vs Semi-Structured &No SQL and UnStructured Data.  These considerations provided in following charts.

Database selection process

![alt text](./images/image-2.png)

Structured vs Non Structured Data 

![alt text](./images/image-1.png)

SQL vs No-SQL consideration 

![alt text](./images/image.png)

Database Examples with providers

![DB examples](./images/database-examples.png)


### SQL Databases:

1. PostgreSQL : 
    PostgreSQL is a robust, open-source SQL database that is well-suited for handling complex queries and intricate machine learning algorithms. 

2. MySQL : 
    MySQL is another popular SQL database that can be used to store and manage data for machine learning, with MySQL HeatWave AutoML offering in-database machine learning capabilities. 

3. BigQuery : 
    Google BigQuery is a fully managed, serverless data warehouse platform that allows users to analyze large datasets using SQL queries

4. Microsoft SQL Server Databases For Machine Learning & AI:
    MongoDB: This database is known for its flexibility, which lets you store varied data types without compromising speed or scalability.
    Cassandra: Loved for its linearly scalable architecture, Cassandra ensures fault tolerance across many commodity servers – crucial for large-scale data operations.
    PostgreSQL: It’s loved by developers for its robustness and ability to handle complex queries, making it ideal when dealing with intricate ML algorithms.   

### No SQL Databases:

1. MongoDB :
2. Time Series DB: 
3. Cassandra

and many more 

---
## SQL Databases 
---


In  SQL, commands are categorized into DDL, DML, DCL, TCL, and DQL.

Types of SQL Commands : 

1. DML (Data Manipulation Language)
2. DDL (Data Definition Language)
3. DQL (Data Query Language)
4. DCL (Data Control Language)
5. TCL (Transaction Control Language)

Definition of the commands 

- **DDL(Data Definition Language):** To make/perform changes to the physical structure of any table residing inside a database, DDL is used. These commands when executed are auto-commit in nature and all the changes in the table are reflected and saved immediately.

    - CREATE: Creates a new table or database.
    - ALTER: Modifies an existing database object.
    - DROP: Deletes an entire table, database, or other objects.
    - TRUNCATE: Removes all records from a table, deleting the space allocated for the records.
    

- **DML(Data Manipulation Language):** Once the tables are created and the database is generated using DDL commands, manipulation inside those tables and databases is done using DML commands. The advantage of using DML commands is, that if in case any wrong changes or values are made, they can be changed and rolled back easily.

    - SELECT: Retrieves data from the database.
    - INSERT: Adds new data to a table.
    - UPDATE: Modifies existing data within a table.
    - DELETE: Removes data from a table.

- **DQL(Data Query Language):** Data query language consists of only one command upon which data selection in SQL relies. The SELECT command in combination with other SQL clauses is used to retrieve and fetch data from databases/tables based on certain conditions applied by the user.

    - SELECT: Retrieves data from the database. 
    - JOIN: Combines rows from two or more tables based on a related column between them.
    - FROM: Specifies the table from which the data will be retrieed
    - DISTINCT: Fetch Unique Values
    - ORDERBY : Sort the data by column
    - HAVING: filter based on condition
    - LIMIT: Limit the output returned by the query
    - UNION: Combine the Result of two SELECT commands
    - EXISTS: Include Subquery and return any rowns
    - IN: Check if any value is in a list of values
    - LIKE: Used for Patterm Matching in Strings  

- **DCL(Data Control Language):** DCL commands as the name suggests manage the matters and issues related to the data controller in any database. DCL includes commands such as GRANT and REVOKE which mainly deal with the rights, permissions, and other controls of the database system.

    - GRANT: Gives users access privileges to the database.
    - REVOKE: Removes access privileges given with the GRANT command.

- **TCL(Transaction Control Language):** Transaction Control Language as the name suggests manages the issues and matters related to the transactions in any database. They are used to roll back or commit the changes in the database.

    - COMMIT: Saves all changes made in the current transaction.
    - ROLLBACK: Restores the database to the last committed state.
    - SAVEPOINT: Sets a savepoint within a transaction.
    - SET TRANSACTION: Places a name on a transaction.