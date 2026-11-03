# Sakila SQL Practice

A personal SQL practice project using the MySQL Sakila sample database. This repository contains question-wise queries that explore a film rental business, including its actors, films, customers, payments, and rentals.

The goal is to build confidence in writing SQL, translating requirements into filtering conditions, understanding query results, and gradually progressing toward advanced SQL concepts.

## Technologies

- MySQL 8.4
- MySQL command-line client
- Visual Studio Code
- Git and GitHub

## Repository Structure

| File                  | Description                                                   |
| --------------------- | ------------------------------------------------------------- |
| `sakila_practice.sql` | Practice questions and their SQL solutions                    |
| `README.md`           | Project overview, setup, usage, learning topics, and progress |

All completed practice solutions are maintained in one SQL file. Each query is preceded by a comment describing the question.

## Practice Topics

### SQL Fundamentals

The exercise collection covers:

- Selecting all or specific columns using `SELECT`
- Filtering records with `WHERE`
- Comparison operators (`=`, `>`, `<`, `>=`, `<=`, `!=`)
- Logical conditions using `AND`, `OR`, and `NOT`
- Operator precedence and parentheses
- Range filtering with `BETWEEN`
- Matching multiple values with `IN` and `NOT IN`
- Pattern matching with `LIKE`
- Using `%` and `_` wildcards
- Handling missing values with `IS NULL` and `IS NOT NULL`
- Sorting by one or multiple columns using `ORDER BY`
- Sorting in ascending and descending order
- Limiting results with `LIMIT`
- Combining multiple conditions to solve SQL problems

### SQL Window Functions — In Progress

Currently learning SQL window functions to perform calculations across related rows while retaining individual rows in the output.

Topics being explored:

- Introduction to window functions
- Understanding the `OVER()` clause
- Grouping rows with `PARTITION BY`
- Sorting within windows using `ORDER BY`
- Row numbering using `ROW_NUMBER()`
- Ranking using `RANK()` and `DENSE_RANK()`
- Understanding differences between ranking functions
- Aggregate window functions such as `SUM()`, `AVG()`, and `COUNT()`
- Running totals and cumulative calculations
- Accessing previous and next rows using `LAG()` and `LEAD()`
- Difference between `GROUP BY` and window functions

#### Window Function Example

An illustrative Sakila query that assigns a row number to each customer's payments, ordered by payment amount:

```sql
SELECT
    payment_id,
    customer_id,
    amount,
    ROW_NUMBER() OVER (
        PARTITION BY customer_id
        ORDER BY amount DESC, payment_id ASC
    ) AS payment_position
FROM payment;
```

In this example:

- `PARTITION BY customer_id` divides payments into customer-wise groups.
- `ORDER BY amount DESC` arranges payments from highest to lowest within each customer.
- `payment_id ASC` provides consistent ordering when amounts are equal.
- `ROW_NUMBER()` assigns a sequential number within each customer's partition.

Unlike `GROUP BY`, a window function can calculate across related rows without collapsing them into a single row per group.

_This is a learning example, not a claim that the window-function exercises have been completed. They will be added to the practice file as they are completed._

## Tables Used

| Table      | Data                                                    |
| ---------- | ------------------------------------------------------- |
| `actor`    | Actor names and identifiers                             |
| `film`     | Film titles, ratings, lengths, and rental details       |
| `customer` | Customer details, store associations, and active status |
| `payment`  | Payment amounts, dates, and related customers and staff |
| `rental`   | Rental and return dates                                 |
| `staff`    | Staff details and store associations                    |
| `address`  | Address information                                     |

## Getting Started

### 1. Prepare MySQL

Install MySQL Server and connect using a MySQL client.

### 2. Import Sakila

Obtain the sample database from the official source:

https://dev.mysql.com/doc/sakila/en/

Import the schema first, followed by the data. Run these commands at the `mysql>` prompt, replacing the paths with your local file locations:

```sql
SOURCE /absolute/path/to/sakila-schema.sql;
SOURCE /absolute/path/to/sakila-data.sql;
```

The schema script recreates the `sakila` database. Check for existing work before importing it.

### 3. Verify the Database

```sql
USE sakila;

SHOW TABLES;

SELECT COUNT(*) AS total_actors
FROM actor;
```

The standard Sakila dataset contains 200 actors.

## Running the Solutions

For practice, execute individual queries from `sakila_practice.sql` and inspect the results.

To execute the entire file, run this at the `mysql>` prompt:

```sql
SOURCE /absolute/path/to/sakila_practice.sql;
```

Running the complete file executes every included query and can produce a large amount of terminal output.

## Example

Find PG-rated films between 90 and 120 minutes long, ordered by length:

```sql
SELECT *
FROM film
WHERE rating = 'PG'
  AND length BETWEEN 90 AND 120
ORDER BY length ASC;
```

This combines equality filtering, an inclusive range, and ascending sorting.

## Practice Progress

- [x] Questions 1–23
- [x] Questions 24–60
- [x] Questions 61–64 (both sets)
- [x] Questions 65–83
- [x] Questions 84–100

**Sakila worksheet: 104/104 question entries covered.**

### Advanced SQL Learning

- [x] SQL filtering and logical conditions
- [x] Pattern matching using `LIKE`
- [x] Sorting and limiting results
- [x] Combining multiple filtering conditions
- [ ] Window functions — learning in progress
- [ ] Window-function practice exercises

The progress checklist will be updated as additional queries and concepts are practiced.

## Query Notes

- An empty result is valid when no records match a condition.
- `BETWEEN` includes both boundary values.
- Use `IS NULL` to test for missing values.
- Parentheses make combined `AND` and `OR` conditions explicit.
- Use `ORDER BY` when the order of returned records matters.
- For reproducible "first N" results, use `ORDER BY` with `LIMIT` and a unique tie-breaker where needed.
- Date-time filters require care when a question intends to include an entire final day.
- `LIKE` supports `%` for zero or more characters and `_` for exactly one character.
- Window functions perform calculations over related rows while preserving individual result rows.
- `PARTITION BY` divides rows into partitions for window calculations.
- `ORDER BY` inside `OVER()` determines the order used by applicable window functions.

## Learning Objective

The purpose of this repository is not just to complete SQL questions but to understand how queries work and build the ability to solve database problems independently.

The practice progresses from basic SQL filtering and pattern matching toward analytical queries and advanced SQL concepts.

## Dataset Credit

Sakila is a sample database provided by MySQL. This repository contains SQL practice solutions using that dataset.

## Author

Aagman Tiwari
