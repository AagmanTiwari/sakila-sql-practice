USE salesdb;

-- 1. Find the total sales across all orders.

SELECT SUM(sales) total_sale
FROM salesdb.orders;

-- 2. Find the total sales for each product.

SELECT 
    productid, 
    SUM(sales) total_sale
FROM orders
GROUP BY productid;

--          OUTPUT
-- +-----------+------------+
-- | productid | total_sale |
-- +-----------+------------+
-- |       101 |        140 |
-- |       102 |        105 |
-- |       104 |         75 |
-- |       105 |         60 |
-- +-----------+------------+


-- 3. Find the total sales for each product, Additionally provide details such as order id and order date.

-- all columns in select must be included in group by.

SELECT 
    productid,
    customerid,
    orderdate, 
    SUM(sales) total_sale
FROM orders
GROUP BY 
    customerid,
    orderdate,
    productid;    

--                  OUTPUT
-- +-----------+------------+------------+------------+
-- | productid | customerid | orderdate  | total_sale |
-- +-----------+------------+------------+------------+
-- |       101 |          2 | 2025-01-01 |         10 |
-- |       102 |          3 | 2025-01-05 |         15 |
-- |       101 |          1 | 2025-01-10 |         20 |
-- |       105 |          1 | 2025-01-20 |         60 |
-- |       104 |          2 | 2025-02-01 |         25 |
-- |       104 |          3 | 2025-02-05 |         50 |
-- |       102 |          1 | 2025-02-15 |         30 |
-- |       101 |          4 | 2025-02-18 |         90 |
-- |       101 |          2 | 2025-03-10 |         20 |
-- |       102 |          3 | 2025-03-15 |         60 |
-- +-----------+------------+------------+------------+



--  GROUP BY LIMITS:-
--      * can not do aggregations and provide details at the same time.

-- USING WINDOW FUNCTION

SELECT 
    orderid,
    orderdate,
    productid,
    SUM(sales) OVER(PARTITION BY productid) total_sale
FROM orders;

--                   OUTPUT
-- +---------+------------+-----------+------------+
-- | orderid | orderdate  | productid | total_sale |
-- +---------+------------+-----------+------------+
-- |       1 | 2025-01-01 |       101 |        140 |
-- |       3 | 2025-01-10 |       101 |        140 |
-- |       8 | 2025-02-18 |       101 |        140 |
-- |       9 | 2025-03-10 |       101 |        140 |
-- |       2 | 2025-01-05 |       102 |        105 |
-- |       7 | 2025-02-15 |       102 |        105 |
-- |      10 | 2025-03-15 |       102 |        105 |
-- |       5 | 2025-02-01 |       104 |         75 |
-- |       6 | 2025-02-05 |       104 |         75 |
-- |       4 | 2025-01-20 |       105 |         60 |
-- +---------+------------+-----------+------------+



