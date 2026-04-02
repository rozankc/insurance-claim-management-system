# Insurance Claim Management System

## Overview
This project is a SQL-based Insurance Claim Management System designed to improve the efficiency, accuracy, and organization of insurance claim processing. The system integrates claim, policy, exposure, financial, and loss-related data into a unified relational database.

## Objective
The objective of this project is to design and implement a structured database system that supports insurance claim registration, policy verification, exposure tracking, financial processing, and reporting. It also helps demonstrate data modeling, relational database design, and SQL-based analysis.

## Tools & Technologies
- MySQL
- SQL
- MySQL Workbench
- Microsoft Excel
- Draw.io
- Microsoft Word

## Dataset
The `data/` folder contains the source Excel files used for populating the database tables. Each file represents a separate entity in the system.

Included data files:
- Claim.xlsx
- CoveredPeople.xlsx
- Employer.xlsx
- Exposure.xlsx
- Financials.xlsx
- FNOL.xlsx
- History.xlsx
- LossState.xlsx
- Losstype.xlsx
- Policy.xlsx
- PolicyCoverage.xlsx
- Vehicle.xlsx

These files contain the structured data used to build and test the Insurance Claim Management System.

## Database Design
The database was designed using a relational model with interconnected tables representing major components of an insurance claim workflow, including:
- Claim
- Policy
- PolicyCoverage
- CoveredPeople
- Vehicle
- History
- Employer
- Exposure
- FNOL
- Financials
- LossType
- LossState
Primary keys and foreign keys were used to maintain referential integrity and ensure consistency across the system.

## Key Features
- Designed a relational database for insurance claim tracking
- Integrated claim, policy, exposure, and financial records into one system
- Used primary and foreign key constraints for data integrity
- Supported claim processing from FNOL to settlement
- Enabled SQL-based reporting and operational analysis

## Analysis Performed
SQL queries were used to analyze:
- Total claims by policy
- Employees processing the highest number of claims
- Claims with missing exposure details
- Claim severity distribution
- Active and inactive policies with associated claims

## Results
This project demonstrates how SQL and relational database design can be used to streamline insurance claim management, reduce inconsistency, and support better reporting and decision-making.
