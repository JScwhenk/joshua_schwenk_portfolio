# Fleet Management System Database Proposal

![Relational Database](https://img.shields.io/badge/Relational_Database-336791?style=flat-square)
![Systems Design](https://img.shields.io/badge/Systems_Design-5C2D91?style=flat-square)
![Data Integrity](https://img.shields.io/badge/Data_Integrity-2E8B57?style=flat-square)
![Fleet Management](https://img.shields.io/badge/Fleet_Management-4C78A8?style=flat-square)

<p align="center">
  <img src="./fleet_management_system_diagram.png" alt="System diagram for the proposed fleet management database" width="85%">
</p>

<p align="center"><em>Proposed system connecting departmental source applications, relational database tables, and fleet reporting.</em></p>

---

## Project Overview

This project proposes a relational database for managing an organization’s vehicle fleet. The system is designed to consolidate vehicle, acquisition, depreciation, operating, and maintenance information so the organization can produce accurate asset records and better understand the full cost of its fleet.

## Database Design

The vehicle table forms the center of the relational model, with the Vehicle Identification Number serving as a stable identifier across related records. Supporting tables organize:

- Vehicle specifications and identifying information
- Acquisition dates and purchase costs
- Depreciation methods and current asset values
- Fuel, insurance, registration, and other operating expenses
- Maintenance activity, repair history, and service costs

This structure reduces duplication while allowing financial and operational information to be connected at the individual-vehicle level.

## Organizational Integration

The proposal identifies the departments responsible for creating and maintaining transactional data. Purchasing manages acquisition records, Finance and Accounting maintains depreciation information, Operations tracks vehicle usage and operating costs, and Maintenance records service and repair activity.

A system diagram connects these departmental applications to the central database and shows how SQL-based reporting could provide a consolidated view of fleet assets, costs, and performance.

## Data Management Considerations

The proposal applies ACID principles to support reliable database transactions and recommends formal database administration to maintain security, performance, availability, and data quality.

Together, these controls establish accountability for fleet information and support more dependable operational and financial reporting.

## Skills Demonstrated

- Relational database planning
- Primary and foreign key design
- Cross-functional data integration
- System and data-flow diagramming
- Transactional data ownership
- ACID and data-integrity principles
- Database administration planning
- Business-focused reporting architecture

## Project File

- [View the Complete Fleet Management Database Proposal](./fleet_management_database_proposal.pdf)

---

<div align="center">

[Return to Previous Page](../)

</div>
