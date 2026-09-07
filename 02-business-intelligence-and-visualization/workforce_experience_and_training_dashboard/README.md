# Workforce Experience & Training Dashboard

![Power BI](https://img.shields.io/badge/Power_BI-F2C811?style=flat-square&logo=powerbi&logoColor=black)
![Power Query](https://img.shields.io/badge/Power_Query-008272?style=flat-square)
![DAX](https://img.shields.io/badge/DAX-1F4E79?style=flat-square)
![People Analytics](https://img.shields.io/badge/People_Analytics-5C2D91?style=flat-square)

## Project Overview

This project transforms four related human-resources datasets into an interactive Power BI reporting solution. The analysis connects employee records with engagement surveys and training activity to help organizational leaders understand workplace experience, employee development, training investment, and performance across departments.

The project combines data preparation, relational modeling, calculated measures, and dashboard design while accounting for differences in the grain and reliability of each source.

## Data Sources

The original dataset includes four tables:

| Table | Information provided |
|---|---|
| **Employee** | Demographics, departments, job titles, performance, and employment information |
| **Engagement Survey** | Engagement, satisfaction, and work-life balance scores |
| **Training** | Programs, outcomes, duration, dates, and cost |
| **Recruitment** | Candidate experience, education, compensation, and requisition status |

## Data Preparation

Power Query was used to clean and standardize each source before modeling. Transformations included:

- Renaming tables and columns for consistency
- Converting identifiers to text
- Standardizing date and currency fields
- Replacing unclear placeholder values
- Reviewing null values and geographic inconsistencies
- Removing duplicate employee records
- Preserving repeated survey and training records where they represented valid historical activity

## Data Model

The Employee table serves as the central dimension and connects to Engagement Survey and Training through one-to-many relationships with single-direction filtering.

The Recruitment table remains intentionally disconnected because the dataset does not contain a reliable identifier connecting applicants with hired employees. Rather than create an inferred relationship using names or contact information, the model preserves accuracy and allows for a future connection if a verified hire identifier becomes available.

## Dashboard Pages

| Dashboard | Analytical focus |
|---|---|
| **Executive Dashboard** | Workplace experience, survey participation, training investment, and training success |
| **Workplace Experience Report** | Engagement, satisfaction, work-life balance, department comparisons, and trends |
| **Training & Performance Report** | Training volume, cost, duration, outcomes, programs, and employee performance |
| **Department Sentiment Detail** | Favorable, neutral, and unfavorable workplace sentiment by department |

## Key Measures

The report includes measures for:

- Workplace experience
- Employee engagement and satisfaction
- Survey participation
- Total training cost
- Cost per training session
- Average training duration
- Successful training percentage
- Training activity by department and program

## Skills Demonstrated

- Power BI dashboard development
- Power Query transformation
- DAX measure development
- Relational data modeling
- Data quality validation
- KPI design
- Interactive filtering and tooltips
- People analytics
- Business-focused data visualization

## Project Files

- [View the Complete Project Report](./workforce_experience_dashboard_report.pdf)
- [Download the Interactive Power BI Report](./workforce_experience_dashboard.pbix)

> Power BI Desktop is required to open and interact with the `.pbix` report.
>


<div align="center">

[Return to Previous Page](../)

</div>

