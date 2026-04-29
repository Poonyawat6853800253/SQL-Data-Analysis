# Football Players 2024/2025 SQL Analysis

## Project Overview
This project analyzes football player statistics from the 2024/2025 season using PostgreSQL, Docker, DBeaver, VS Code, and SQL. The main goal is to practice SQL-based data analysis by importing football player data into a PostgreSQL database, exploring the dataset, creating analysis queries, and building SQL views for future dashboard development.

## Objectives
- Set up PostgreSQL using Docker
- Import football player CSV data into PostgreSQL
- Explore dataset structure and data types
- Analyze player performance using SQL
- Identify top goal scorers, assists, and attacking performance
- Create reusable SQL views for future Power BI dashboard development

## Tools Used
- PostgreSQL
- Docker Desktop
- DBeaver
- VS Code
- SQL
- GitHub

## Project Structure

```text
SQL-Data-Analysis/
├── data/
│   ├── archive (7).zip
│   ├── players_data-2024_2025.csv
│   └── players_data_light-2024_2025.csv
├── sql/
│   ├── -- 1.pgsql
│   ├── -- Performance.pgsql
│   ├── -- Top 10 goal scorers.pgsql
│   ├── 01_basic_check.sql
│   ├── 02_analysis_queries.sql
│   └── 03_create_views.sql
├── .gitignore
├── docker-compose.yml
└── README.md