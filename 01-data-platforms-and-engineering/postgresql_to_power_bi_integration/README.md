# PostgreSQL-to-Power BI Integration

![PostgreSQL](https://img.shields.io/badge/PostgreSQL-4169E1?style=flat-square&logo=postgresql&logoColor=white)
![Power BI](https://img.shields.io/badge/Power_BI-F2C811?style=flat-square&logo=powerbi&logoColor=black)
![Data Modeling](https://img.shields.io/badge/Data_Modeling-5C2D91?style=flat-square)

## Project Overview

This project demonstrates how a PostgreSQL relational database can be connected to Power BI for integrated reporting. The database represents a library-management environment containing information about books, authors, genres, patrons, and borrowing activity.

After creating and validating the database in PostgreSQL, the tables were imported into Power BI and connected through their primary and foreign keys. The resulting model supports analysis across multiple related entities rather than relying on a single flat dataset.

## Data Model

The model connects five core tables:

| Table | Purpose |
|---|---|
| **Authors** | Stores author information associated with books |
| **Genres** | Classifies books by category |
| **Books** | Maintains the library’s book catalog |
| **Patrons** | Stores information about library users |
| **Borrowings** | Records borrowing activity and connects patrons with books |

## Workflow

1. Created the relational database and tables in PostgreSQL.
2. Applied primary and foreign keys to establish relationships.
3. Validated that the tables and records were created correctly.
4. Connected the PostgreSQL database to Power BI.
5. Recreated and reviewed the table relationships within the Power BI model.
6. Developed a report demonstrating analysis across the connected data.

## Skills Demonstrated

- PostgreSQL database development
- Primary and foreign key relationships
- Relational data modeling
- Database validation
- Power BI data connectivity
- Multi-table reporting

## Project Files

- [View the Complete Project Report](./postgresql_power_bi_integration_report.pdf)
- [Download the Power BI Report](./postgresql_power_bi_integration.pbix)

> Power BI Desktop is required to open and interact with the `.pbix` report.
