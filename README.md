# Animal Shelter PostgreSQL Project

A complete PostgreSQL implementation for an animal shelter database system. Developed as part of the Big Data & Analytics course at University of Europe.

## Features
- 11-table relational schema (normalized to 3NF)
- Data import using \copy and realistic CSV files (Mockaroo)
- 5 complex SQL queries:
  - Species distribution (GROUP BY + HAVING)
  - Email filter (WHERE + LIKE)
  - Top donors (ORDER BY)
  - Animal cage join (JOIN)
  - Above average age (CTE)

## Technologies Used
- PostgreSQL
- Mockaroo (data generation)
- SQL (Joins, CTEs, Filtering, Aggregation)
- UTM Ubuntu VM
- Linux CLI

## Project Structure
- `schema/`: SQL scripts & ERD
- `data/`: CSV files
- `queries/`: SQL query files
- `screenshots/`: (Optional) query result images
- `report/`: Final project report (PDF)
  
## ERD Diagram
This diagram shows the full relational structure of the Animal Shelter Management System:
![ERD Diagram](schema/erd.png)

## Repository Highlights
- Realistic PostgreSQL schema with foreign keys & constraints  
- Fully normalized to 3NF  
- Populated with meaningful test data using Mockaroo  
- Query coverage: aggregation, filtering, joins, CTEs  
- Professional project report and ERD diagram  

## Author
Mehlika Rana Akbay
