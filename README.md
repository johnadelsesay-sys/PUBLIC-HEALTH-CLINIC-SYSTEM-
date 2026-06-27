# Public Health Clinic Record System

## Database Management Systems (DBMS) Group Project

### Group Members

* **John Adel Sesay**
* **Mariama Hawanatu Conteh**

---

## Project Overview

The **Public Health Clinic Record System** is a relational database developed using **MySQL** to improve the management of patient and clinic information. The system is designed to store, retrieve, update, and manage healthcare records efficiently while maintaining data integrity through the use of primary keys, foreign keys, and database constraints.

This project was developed as part of the **Database Management Systems (DBMS)** course requirements.

---

## Project Objectives

The system is designed to:

* Manage patient records.
* Manage health worker information.
* Schedule patient appointments.
* Record clinic visits.
* Store patient diagnoses.
* Record treatments provided.
* Demonstrate database normalization and relationships.
* Implement MySQL user management and database security.
* Demonstrate SQL querying techniques.

---

## Technologies Used

* MySQL
* phpMyAdmin (XAMPP)
* XAMPP Control Panel
* Git & GitHub
* PyCharm

---

## Database Name

```text
PublicHealthClinic
```

---

## Database Tables

The project contains the following tables:

1. Patient
2. HealthWorker
3. Appointment
4. ClinicVisit
5. Diagnosis
6. Treatment

---

## Database Relationships

* One Patient can have many Appointments.
* One Patient can have many Clinic Visits.
* One Health Worker can attend many Clinic Visits.
* One Clinic Visit can have many Diagnoses.
* One Diagnosis can have many Treatments.

---

## Features Implemented

* Database creation
* Table creation with constraints
* Primary Keys
* Foreign Keys
* AUTO_INCREMENT fields
* NOT NULL constraints
* Sample data insertion
* SELECT queries
* WHERE clauses
* ORDER BY sorting
* Aggregate functions (`COUNT`, `SUM`, `AVG`, `MIN`, `MAX`)
* UPDATE statements
* DELETE statements
* JOIN queries
* GROUP BY queries
* MySQL User Management
* Database Security using Privileges

---

## Repository Structure

```text
PublicHealthClinicSystem/
│
├── README.md
├── BSEM2_Group5.sql
├── Project_Report.pdf
├── PDM_Diagram.pdf
└── Screenshots/
    ├── DatabaseCreation.png
    ├── Tables.png
    ├── Relationships.png
    ├── SQLQueries.png
    └── UserManagement.png
```

---

## How to Run the Project

1. Install XAMPP.
2. Start **Apache** and **MySQL**.
3. Open phpMyAdmin.
4. Create a new database or import the provided SQL file.
5. Import **BSEM2_Group5.sql**.
6. Execute the SQL script.
7. The Public Health Clinic database will be created with all tables, relationships, sample data, and SQL queries.

---

## SQL Script

The SQL script includes:

* Database creation
* Table creation
* Constraints
* Sample data
* CRUD operations
* Aggregate queries
* JOIN queries
* GROUP BY queries
* User management commands

---

## 👥 Project Team

**John Adel Sesay**

**Mariama Hawanatu Conteh**



## Acknowledgement

We sincerely thank our lecturer for the guidance and knowledge provided throughout this Database Management Systems course. This project has enhanced our understanding of relational database design, SQL programming, and database management using MySQL.

