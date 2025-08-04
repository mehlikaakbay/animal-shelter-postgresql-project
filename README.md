# Animal Shelter PostgreSQL Project

![PostgreSQL](https://img.shields.io/badge/PostgreSQL-336791?style=for-the-badge&logo=postgresql&logoColor=white)
![Mockaroo](https://img.shields.io/badge/Mockaroo-Data--Generator-green?style=for-the-badge)
![SQL](https://img.shields.io/badge/SQL-Structured%20Query%20Language-blue?style=for-the-badge)
![Ubuntu](https://img.shields.io/badge/Ubuntu-VM-orange?style=for-the-badge&logo=ubuntu&logoColor=white)
![Linux](https://img.shields.io/badge/Linux-CLI-333333?style=for-the-badge&logo=linux&logoColor=white)

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

---

## CSV Format Notice

>  All CSV files in `data/` use a **semicolon (`;`)** as the delimiter instead of a comma.

To load them properly:

### In Python:
```python
import pandas as pd
df = pd.read_csv("data/Adopter.csv", delimiter=";")
```
  
## ERD Diagram
This diagram shows the full relational structure of the Animal Shelter Management System:
![ERD Diagram](https://github.com/mehlikaakbay/animal-shelter-postgresql-project/blob/main/schema%3A/erd.png)

## Repository Highlights
- Realistic PostgreSQL schema with foreign keys & constraints  
- Fully normalized to 3NF  
- Populated with meaningful test data using Mockaroo  
- Query coverage: aggregation, filtering, joins, CTEs  
- Professional project report and ERD diagram  

## Author
Mehlika Rana Akbay
