# Personal Book Database

## Overview

This project began with a simple question: What genres am I adding to my TBR?

As a librarian with a background in Computer Information Systems, I am interested in metadata, database design, and the ways information can be organized for easier access and analysis. So, I thought this would be a great project to not only design a database and play with data, but also to answer my question!

As the project grew, it evolved into designing a PostgreSQL bibliographic database inspired by Integrated Library Systems (ILS) and WorldCat. The goal is to balance efficient cataloging workflows with relational database design, automation, and reporting through Power BI while keeping data entry intuitive for the cataloger while minimizing manual data-entry errors and maintaining an efficient cataloging workflow.

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

Current milestone: Relational schema completed, authority tables implemented, 60 books cataloged, and batch foreign-key population workflow established.

## Repository Structure

```text
book-database/
├── schema/
│   ├── book_database_schema.sql
│   ├── books_publishers.csv
│   └── books_imprints.csv
├── data/
│   ├── books.csv
│   ├── Book_Genres.csv
│   ├── Book_Subjects.csv
│   └── Book_Database.xlsx
├── scripts/
│   └── batch_fill_imprint_ids.sql
└── README.md
```

## Workflow

Books are entered using human-readable metadata rather than numeric foreign keys. After each cataloging session, a reusable SQL batch script automatically populates publisher and imprint IDs by matching against authority tables. Any unmatched values are returned for manual review, allowing typos and new publishers or imprints to be identified without interrupting the cataloging process.

## Current work includes:

- Designing and refining the database schema
- Creating and connecting related tables
- Adding book records
- Building Power Query transformations
- Preparing data for future Power BI visualizations
- Maintaining publisher and imprint authority tables

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
- Workflow Design
- Data Quality

## Project Inspiration

Sometimes I get curious, and then I make a database.

This project combines my experience in librarianship with my interest in data organization, analytics, and systems design.

## Design Philosophy

This project emphasizes practical database design over theoretical perfection. Workflows are designed to minimize context switching, reduce manual data-entry errors, and preserve human-readable cataloging while maintaining relational integrity through automated batch processing.
