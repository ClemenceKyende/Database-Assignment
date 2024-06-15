**Netflix Shows Dataset Analysis**

**Overview**

This repository contains SQL queries and documentation for analyzing the Netflix Shows dataset using MySQL Workbench.

**Dataset**

- **Dataset:** Netflix Shows
- **Source:** [Download Dataset](https://drive.google.com/file/d/1Cth8F5M7smd4uqE7QNX6vHBSOdK_eank/view)

**SQL Queries and Documentation**

**Step 1: Data Dive**

**Importing the Dataset into MySQL Workbench**

Create Database:
CREATE DATABASE netflix_shows_db;
USE netflix_shows_db;

Import Dataset:
Used the "Table Data Import Wizard" in MySQL Workbench to import the CSV file into a table named netflix_shows.

**Difficulties Encountered and Interesting Observations**

**Difficulties:**
Initially faced issues with CSV file format and column structure mismatch.
Resolved by adjusting table structure using ALTER TABLE to match CSV columns.

**Interesting Observation:**
Noted a diverse range of genres and significant production from the United States.

**Step 2: Data Fun**

**Simple SQL Queries**

Total Number of Shows:
SELECT COUNT(*) AS total_shows FROM netflix_shows;
Result: 100

Average Duration of Shows:
SELECT AVG(CAST(SUBSTRING_INDEX(duration, ' ', 1) AS DECIMAL(10,2))) AS average_duration
FROM netflix_shows
WHERE duration LIKE '%min%';
Result: 100.73 minutes

Total Number of Seasons:
SELECT SUM(CAST(SUBSTRING_INDEX(duration, ' ', 1) AS UNSIGNED)) AS total_seasons
FROM netflix_shows
WHERE duration LIKE '%season%';
Result: 106

**Cool Facts Found**

Fact 1: The dataset includes exactly 100 shows.
Fact 2: The average duration of shows in the dataset is approximately 100.73 minutes.
Fact 3: There are a total of 106 seasons represented across all shows in the dataset.

**Step 3: Ask Away**

**Formulated Questions and Answers**

**Question 1: What are the most popular genres?**

```sql
SELECT genre, COUNT(*) AS genre_count
FROM netflix_shows
GROUP BY genre
ORDER BY genre_count DESC;

Findings
Identified 'Action & Adventure, Anime Features, International Movies' as the most popular genre with 12 shows.

**Question 2: Which countries have the highest number of shows?**

SELECT country, COUNT(*) AS show_count
FROM netflix_shows
GROUP BY country
ORDER BY show_count DESC;

Findings
United States leads with 17 shows.
Japan follows with 13 shows.

GitHub Repository

Repository Link: https://github.com/ClemenceKyende/Database-Assignment.git