# Netflix Shows Dataset

This repository contains the assignment for importing and analyzing the Netflix Shows dataset in MySQL Workbench.

## Dataset Choice

I chose the **Netflix Shows** dataset for this assignment.

## Import Process

To ensure the table was empty before importing new data, I used the `Truncate table before import` option in MySQL Workbench's Table Data Import Wizard.

### Steps to Import

1. **Download and Prepare the Dataset**:
   - Download the dataset from [this link](https://drive.google.com/file/d/1Cth8F5M7smd4uqE7QNX6vHBSOdK_eank/view).
   - Ensure the CSV file (`netflix_titles.csv`) is clean and properly formatted.

2. **Create a New Schema and Table in MySQL Workbench**:
   - Created the `netflix_shows` schema and the `netflix_titles` table using the following SQL commands:
     ```sql
     CREATE SCHEMA IF NOT EXISTS netflix_shows;

     USE netflix_shows;

     CREATE TABLE netflix_titles (
         show_id TEXT,
         type TEXT,
         title TEXT,
         director TEXT,
         cast TEXT,
         country TEXT,
         date_added TEXT,
         release_year INT,
         rating TEXT,
         duration TEXT,
         listed_in TEXT,
         description TEXT
     );
     ```

3. **Use Table Data Import Wizard**:
   - Right-clicked on the `netflix_titles` table and selected `Table Data Import Wizard`.
   - Selected the CSV file and mapped the columns to the MySQL table.
   - Checked the box for `Truncate table before import`.

4. **Start the Import**:
   - Followed through the steps in the wizard and started the import process.

### Difficulties Faced

- **Missing "Next" Button**: The Data Import Wizard didn't display the "Next" button initially, so I had to resize the window to see it.

### Interesting Observation

One interesting thing I noticed about the Netflix Shows dataset is the diversity of genres and the global reach of the content, with shows from many different countries and in various languages.

## Viewing Data

To view the data in the `netflix_titles` table:

1. **Using MySQL Workbench**:
   - Right-click on the `netflix_titles` table and select `Select Rows - Limit 1000`.
   - The query will run automatically and display the results.

2. **Using SQL Query**:
   - Open a new SQL query tab and run the following command:
     ```sql
     USE netflix_shows;
     SELECT * FROM netflix_titles LIMIT 1000;
     ```

## Repository Structure

- `README.md`: This file.
- `create_table.sql`: SQL script to create the `netflix_titles` table (optional).
- `netflix_titles.csv`: The dataset file (if included).

## Link to Repository

[GitHub Repository Link](https://github.com/ClemenceKyende/Database-Assignment.git)
