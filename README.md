# Hotel Management SQL Project

## Project Overview

This project is a Hotel Management Database System developed using MySQL.

It manages customers, rooms, bookings and hotel operations using SQL.

## Project Structure

- 01_schema.sql - Database tables and constraints
- 02_data.sql - Sample data
- 03_queries.sql - SQL queries
- 04_views.sql - Database views
- 05_procedures.sql - Stored procedures
- 06_triggers.sql - Database triggers
- .github/workflows/ci-cd.yml - CI/CD pipeline

## Database Features

- Customer management
- Room management
- Booking management
- Room availability
- Booking details
- SQL Views
- Stored Procedures
- Triggers

## CI/CD Pipeline

GitHub Actions is used to automate SQL database testing.

The pipeline:

1. Starts a MySQL database
2. Creates the database schema
3. Loads sample data
4. Executes SQL queries
5. Tests views, procedures and triggers
6. Generates a SQL artifact
7. Performs continuous delivery

## Technologies Used

- MySQL
- SQL
- Git
- GitHub
- GitHub Actions
- CI/CD

## CI/CD Status

The GitHub Actions workflow is successfully running with:

- Test SQL Database - Success
- Continuous Delivery - Success
- SQL Artifact - Generated

## Author

Rushikesh Pawar
