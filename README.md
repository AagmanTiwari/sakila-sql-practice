# Sakila SQL Practice

A personal SQL practice repository built around the **MySQL Sakila sample database**, with additional exercises for SQL aggregation and window functions.

The goal is to strengthen my SQL fundamentals, translate requirements into queries, understand the results, and gradually move toward analytical SQL through hands-on practice.

## Technologies

- MySQL 8.4
- MySQL command-line client
- Visual Studio Code
- Git and GitHub

## Repository Structure

```text
sakila-sql-practice/
├── README.md
├── sakila_practice.sql
├── sakila_group_by_practice.sql
└── window_function_practice.sql
```

| File                           | Description                                                                         | Status             |
| ------------------------------ | ----------------------------------------------------------------------------------- | ------------------ |
| `sakila_practice.sql`          | Main Sakila worksheet covering filtering, conditions, sorting, and pattern matching | Complete — 104/104 |
| `sakila_group_by_practice.sql` | Aggregation practice with `GROUP BY`, `HAVING`, and joins                           | 9/10 completed     |
| `window_function_practice.sql` | Window function practice using the separate `salesdb.orders` dataset                | In progress        |
| `README.md`                    | Project overview, setup, usage, and learning progress                               | Updated regularly  |

SQL exercises are organized into separate files based on topics. Each query includes comments explaining the problem.

## Practice Topics

### 1. SQL Fundamentals

The main Sakila exercise collection covers:

- Selecting all or specific columns using `SELECT`
- Filtering records with `WHERE`
- Comparison operators (`=`, `>`, `<`, `>=`, `<=`, `!=`)
- Logical operators (`AND`, `OR`, `NOT`)
- Operator precedence and parentheses
- Range filtering with `BETWEEN`
- Matching values with `IN` and `NOT IN`
- Pattern matching using `LIKE`
- Using `%` and `_` wildcards
- Handling missing values with `IS NULL` and `IS NOT NULL`
- Sorting records with `ORDER BY`
- Ascending and descending sorting
- Limiting output with `LIMIT`
- Combining multiple filtering conditions

### 2. SQL Aggregation, GROUP BY and HAVING

Practicing SQL aggregation techniques using the Sakila database.

Topics covered:

- `COUNT()` to count records
- `SUM()` to calculate total values
- `AVG()` to calculate averages
- `MIN()` and `MAX()` to find minimum and maximum values
- `GROUP BY` to group related records
- `HAVING` to filter aggregated groups
- `ORDER BY` to sort aggregated results
- `INNER JOIN` with aggregated data
- Customer-wise payment summaries

#### Example: Total Payment by Staff

```sql
SELECT
    staff_id,
    SUM(amount) AS total_payment
FROM payment
GROUP BY staff_id;
```

This query calculates the total payment amount processed by each staff member.

### 3. SQL Window Functions — In Progress

Currently learning window functions to perform calculations across related rows while preserving individual records.

These exercises use the separate `salesdb.orders` dataset.

Topics being practiced:

- Understanding window functions
- Difference between `GROUP BY` and window functions
- `OVER()` clause
- `PARTITION BY` clause
- Aggregate window functions using `SUM()`
- Calculating totals without combining individual rows

Additional topics planned:

- `ROW_NUMBER()`
- `RANK()`
- `DENSE_RANK()`
- Running totals
- Window frames
- `LAG()` and `LEAD()`

#### Example: GROUP BY vs Window Function

Using `GROUP BY` to calculate total sales for each product:

```sql
USE salesdb;

SELECT
    productid,
    SUM(sales) AS total_sale
FROM orders
GROUP BY productid;
```

Using a window function to calculate total sales while keeping individual order records:

```sql
SELECT
    orderid,
    orderdate,
    productid,
    SUM(sales) OVER (
        PARTITION BY productid
    ) AS total_sale
FROM orders;
```

**Key Difference:**

- `GROUP BY` combines records into grouped results.
- Window functions perform calculations across related rows without removing individual rows.

## Databases and Tables Used

### Sakila Database

| Table           | Description                                       |
| --------------- | ------------------------------------------------- |
| `actor`         | Actor names and identifiers                       |
| `film`          | Film titles, ratings, lengths, and rental details |
| `customer`      | Customer information and store assignments        |
| `payment`       | Payment amounts, dates, customers, and staff      |
| `rental`        | Rental and return transactions                    |
| `staff`         | Staff records and store associations              |
| `address`       | Address information                               |
| `inventory`     | Film copies in stores                             |
| `film_category` | Film-to-category relationships                    |
| `category`      | Film categories                                   |

### SalesDB Database

The `salesdb` database is used for window function learning.

**Table:** `orders`

Columns used in practice:

- `orderid`
- `orderdate`
- `productid`
- `customerid`
- `sales`

**Note:** SalesDB is a separate practice dataset and is not included in the standard Sakila database.

## Getting Started

### 1. Set Up MySQL

Install MySQL Server and connect using the MySQL command-line client or another compatible SQL client.

### 2. Import Sakila

Download the Sakila sample database from the official MySQL documentation:

https://dev.mysql.com/doc/sakila/en/

Import the schema and data using:

```sql
SOURCE /absolute/path/to/sakila-schema.sql;
SOURCE /absolute/path/to/sakila-data.sql;
```

The schema script recreates the `sakila` database. Check for existing work before importing.

### 3. Verify the Database

```sql
USE sakila;

SHOW TABLES;

SELECT COUNT(*) AS total_actors
FROM actor;
```

The standard Sakila dataset contains 200 actors.

## Running the SQL Files

### Main Sakila Practice

```sql
USE sakila;

SOURCE /absolute/path/to/sakila_practice.sql;
```

### GROUP BY Practice

```sql
USE sakila;

SOURCE /absolute/path/to/sakila_group_by_practice.sql;
```

### Window Function Practice

The following requires the separate `salesdb` database and its `orders` table to be set up first.

```sql
USE salesdb;

SOURCE /absolute/path/to/window_function_practice.sql;
```

Individual queries can also be executed directly in MySQL or Visual Studio Code.

## Practice Progress

### Sakila SQL — Main Worksheet

- [x] Questions 1–23
- [x] Questions 24–60
- [x] Questions 61–64 (both sets)
- [x] Questions 65–83
- [x] Questions 84–100

**Sakila Worksheet: 104/104 Questions Completed**

The original worksheet contains 104 question entries because Questions 61–64 appear twice.

The original worksheet contains 104 question entries because Questions 61–64 appear twice.

### GROUP BY Practice

- [x] Q1 — Total films by rating
- [x] Q2 — Average film length by rating
- [x] Q3 — Customer count by store
- [x] Q4 — Total payments by staff
- [x] Q5 — Minimum and maximum replacement cost
- [x] Q6 — Customers with more than 20 rentals
- [x] Q7 — Customers with average payment above 3
- [x] Q8 — Rental durations with at least 50 films
- [x] Q9 — Total payments by customer using joins
- [ ] Q10 — Revenue generated by films in each category

**GROUP BY Practice: 9/10 Completed**

### Window Function Practice

- [x] Understanding `GROUP BY` versus window functions
- [x] Practicing `SUM() OVER()`
- [x] Practicing `PARTITION BY`
- [x] Calculating product-wise totals while retaining order details
- [ ] Ranking functions
- [ ] Running totals
- [ ] Window frames
- [ ] `LAG()` and `LEAD()`

**Window Function Practice: In Progress**

## Query Notes

- `BETWEEN` includes both boundary values.
- `IS NULL` checks for missing values.
- `AND` has higher precedence than `OR`.
- Parentheses help control logical conditions.
- `%` matches zero or more characters in a `LIKE` pattern.
- `_` matches exactly one character in a `LIKE` pattern.
- `WHERE` filters rows before grouping.
- `HAVING` filters groups after aggregation.
- `GROUP BY` is used to summarize records.
- Window functions calculate across related rows without collapsing individual records.
- `PARTITION BY` divides rows into partitions for window calculations.
- `ORDER BY` controls result ordering.
- Use a unique tie-breaker when deterministic top-N results are needed.
- Date-time filtering requires care when including an entire final day.

## Learning Objective

The purpose of this repository is to document practical SQL learning and improve the ability to solve database problems independently.

The learning journey progresses through:

1. SQL fundamentals
2. Filtering and conditional queries
3. Pattern matching
4. Sorting and limiting results
5. Aggregate functions
6. GROUP BY and HAVING
7. SQL joins
8. Window functions
9. Advanced SQL practice

The focus is on understanding query logic, practicing regularly, and building a strong foundation for data analytics and data engineering.

## Dataset Credit

Sakila is a sample database provided by MySQL.

The `salesdb` database is a separate learning dataset used for window function practice.

## Author

Aagman Tiwari
