

--1. Data – Raw facts, figures, or information that can be processed or analyzed to generate meaningful insights. Data can be in various forms, such as numbers, text, images, or audio.

--2. Database – A structured collection of data that is stored, managed, and accessed electronically. Databases are designed to efficiently store and retrieve data for various applications.

--3. Relational Database – A type of database that organizes data into structured tables with rows and columns, where relationships between tables are established using keys (such as primary and foreign keys). It follows the principles of relational database management systems (RDBMS), such as MySQL, PostgreSQL, and SQL Server.

--4. Table – A fundamental structure within a relational database that organizes data into rows and columns. Each row (or record) represents an individual entry, and each column (or field) represents a specific attribute of that entry.---


--Key features of SQL server:

--1. Relational Database Management – SQL Server organizes data into structured tables, supporting relationships between them using primary and foreign keys.

--2. High Availability & Disaster Recovery (HADR) – It includes features like Always On Availability Groups, failover clustering, and database mirroring to ensure data reliability and minimize downtime.

--3. Security & Compliance – SQL Server offers advanced security features such as Transparent Data Encryption (TDE), Always Encrypted, Row-Level Security, and Role-Based Access Control (RBAC) to protect sensitive data.

--4. Scalability & Performance Optimization – With indexing, partitioning, in-memory processing (such as In-Memory OLTP), and query optimization techniques, SQL Server enhances performance and scalability for large datasets.

--5. Business Intelligence & Analytics – SQL Server integrates with tools like SQL Server Analysis Services (SSAS), SQL Server Reporting Services (SSRS), and SQL Server Integration Services (SSIS) to support data analytics, reporting, and ETL (Extract, Transform, Load) processes.


--SQL Server provides the following authentication modes when connecting:

--1. Windows Authentication Mode – Uses Windows credentials (Active Directory or local Windows accounts) to authenticate users. It is considered more secure because it leverages integrated security mechanisms such as Kerberos and NTLM.

--2. SQL Server Authentication Mode – Requires a separate username and password stored within SQL Server. This mode is useful for non-Windows users or applications that need independent credentials.
--Additionally, SQL Server can operate in Mixed Mode Authentication, which allows both Windows Authentication and SQL Server Authentication simultaneously.

create database SchoolDB
use SchoolDB
create table Students (ID int primary key, name varchar(50), age int)

drop table Students
select * from Students
insert  Students values (1, 'Abror', 35)

--SQL Server is the actual database system.
--SSMS is a management tool to work with SQL Server.
--SQL is the language used to communicate with SQL Server and other databases.

--1. DQL (Data Query Language)
Used to retrieve data from a database.
Key Command: SELECT
Example:
SELECT * FROM Students;
Retrieves all records from the Students table.

--2. DML (Data Manipulation Language)
Used to modify data in the database.
Key Commands: INSERT, UPDATE, DELETE
Examples:
INSERT INTO Students (StudentID, Name, Age) VALUES (1, 'Alice', 20);
Adds a new record to the Students table.
UPDATE Students SET Age = 21 WHERE StudentID = 1;
Updates the Age of the student with StudentID = 1.
DELETE FROM Students WHERE StudentID = 1;
DELETE FROM Students WHERE StudentID = 1;
Deletes the student with StudentID = 1.

--3. DDL (Data Definition Language)
Used to define and modify the structure of database objects (tables, schemas, indexes, etc.).
Key Commands: CREATE, ALTER, DROP, TRUNCATE
Examples:
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT
);
Creates the Students table.
ALTER TABLE Students ADD Email VARCHAR(100);
Adds a new column Email to the Students table.
DROP TABLE Students;
Deletes the Students table completely.
TRUNCATE TABLE Students;
Removes all records from the Students table but keeps the structure.

--4. DCL (Data Control Language)
Used to control access to the database.
Key Commands: GRANT, REVOKE
Examples:
GRANT SELECT, INSERT ON Students TO user1;
Gives user1 permission to SELECT and INSERT data into the Students table.
REVOKE INSERT ON Students FROM user1;
Removes user1’s permission to insert data into the Students table.


--5. TCL (Transaction Control Language)
Used to manage transactions (grouping SQL statements to be executed as a unit).
Key Commands: COMMIT, ROLLBACK, SAVEPOINT
Examples:
BEGIN TRANSACTION;
UPDATE Students SET Age = 22 WHERE StudentID = 1;
COMMIT;
Saves the changes permanently.
BEGIN TRANSACTION;
DELETE FROM Students WHERE StudentID = 1;
ROLLBACK;
Undoes the deletion and restores the original data.
SAVEPOINT sp1;
UPDATE Students SET Age = 25 WHERE StudentID = 2;
ROLLBACK TO sp1;
Creates a savepoint and rolls back to it if needed.




--Write a query to insert three records into the Students table.

insert Students values (2, 'Jacob', 24), (3, 'Ethan', 36)

select * from Students

select * into Students_copy from Students

select * from Students
Select * from Students_copy

------ Could you explain how to do of last task from homework, please? 
