# Sakila SQL Practice

A personal SQL practice project using the MySQL Sakila sample database. This repository contains question-wise queries that explore a film rental business, including its actors, films, customers, payments, and rentals.

The goal is to build confidence in writing SQL, translating requirements into filtering conditions, and understanding query results.

## Technologies

- MySQL 8.4
- MySQL command-line client
- Visual Studio Code

## Repository Structure

| File                  | Description                                  |
| --------------------- | -------------------------------------------- |
| `sakila_practice.sql` | Practice questions and their SQL solutions   |
| `README.md`           | Project overview, setup, usage, and progress |

All solutions are maintained in one SQL file. Each query is preceded by a comment describing the question.

## Practice Topics

The exercise collection covers:

- Selecting all or specific columns
- Filtering with `WHERE`
- Comparison operators
- Logical conditions using `AND`, `OR`, and `NOT`
- Operator precedence and parentheses
- Range filtering with `BETWEEN`
- Matching multiple values with `IN`
- Pattern matching with `LIKE`
- Handling missing values with `IS NULL` and `IS NOT NULL`
- Sorting by one or multiple columns
- Limiting results with `LIMIT`
- Combining conditions to answer specific questions

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

## Progress

- [x] Questions 1–23
- [ ] Questions 24–60
- [ ] Pattern-matching exercises, including both sets numbered 61–64
- [ ] Questions 65–100

The source worksheet contains 104 question entries because numbers 61–64 appear twice. Both sets will be retained using A/B suffixes.

## Query Notes

- An empty result is valid when no records match a condition.
- `BETWEEN` includes both boundary values.
- Use `IS NULL` to test for missing values.
- Parentheses make combined `AND` and `OR` conditions explicit.
- Use `ORDER BY` when the order of returned records matters.
- For reproducible “first N” results, use `ORDER BY` with `LIMIT` and a unique tie-breaker where needed.
- Date-time filters require care when a question intends to include an entire final day.

## Dataset Credit

Sakila is a sample database provided by MySQL. This repository contains SQL practice solutions using that dataset.

## Author

Aagman Tiwari
