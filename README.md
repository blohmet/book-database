# Personal Book Database

## Overview

This project began with a simple question: What genres am I adding to my TBR?

As a librarian with a background in Computer Information Systems, I am interested in metadata, database design, and the ways information can be organized for easier access and analysis. So, I thought this would be a great project to not only design a database and play with data, but also to answer my question!

As the project grew, it evolved into designing a PostgreSQL bibliographic database inspired by Integrated Library Systems (ILS) and WorldCat. The goal is to balance efficient cataloging workflows with relational database design, automation, and reporting through Power BI while keeping data entry intuitive for the cataloger.

## Project Goals

- Design a normalized relational database for bibliographic metadata using PostgreSQL.
- Create a cataloging workflow inspired by Integrated Library Systems (ILS) and WorldCat.
- Practice SQL, relational database design, ETL concepts, and data modeling.
- Organize book metadata for efficient querying, reporting, and future automation.
- Analyze trends in genres, publishers, authors, publication dates, and personal reading habits.
- Build Power Query transformations and Power BI dashboards for reporting and visualization.
- Develop an OPAC-inspired web interface for browsing and searching the collection.
- Design automation that reduces repetitive data-entry tasks while preserving an efficient cataloging workflow.

## Current Status

This project is currently in development.

## Repository Structure

book-database/
│
├── book_database_schema.sql    - PostgreSQL database schema
├── books.csv                   - Source bibliographic dataset
├── Book_Genres.csv             - Power Query transformed genre reporting table
├── Book_Subjects.csv           - Power Query transformed subject reporting table
├── Book_Database.xlsx          - Master workbook containing Power Query transformations
└── README.md                   - Project overview, goals, and roadmap

## Current work includes:

- Designing and refining the database schema
- Creating and connecting related tables
- Adding book records
- Building Power Query transformations
- Preparing data for future Power BI visualizations
- Planning publisher and imprint relationships

## Planned Features

- SQL analysis queries
- Data visualizations
- Power BI dashboard
- Search and filter tools
- PHP-based web interface
- Personal reading statistics
- Random book recommendation feature
- Automated publisher, genre, and subject relationships
- Publisher/imprint hierarchy
- OPAC-inspired interface

## Skills Demonstrated

- PostgreSQL
- SQL
- Relational Database Design
- Data Modeling
- Data Normalization
- Metadata Management
- Documentation
- Power Query
- ETL
- Power BI (in progress)

## Project Inspiration

Sometimes I get curious, and then I make a database.

This project combines my experience in librarianship with my interest in data organization, analytics, and systems design.
