USE sakila;

-- 1. List all actors with first_name = 'NICK'.
SELECT *
FROM actor
WHERE first_name = 'NICK';

-- 2. Find films with rental_rate > 4.99.
SELECT *
FROM film
WHERE rental_rate > 4.99;

-- 3. List customers from store_id = 1.
SELECT *
FROM customer
WHERE store_id = 1;

-- 4. Find films with length < 60 minutes.
SELECT *
FROM film
WHERE length < 60;

-- 5. List payments greater than 5.
SELECT *
FROM payment
WHERE amount > 5;

-- 6. List actors with last_name = 'SMITH'.
SELECT *
FROM actor
WHERE last_name = 'SMITH';

-- 7. Find films with rating = 'PG'.
SELECT *
FROM film
WHERE rating = 'PG';

-- 8. List active customers.
SELECT *
FROM customer
WHERE active = 1;

-- 9. Find films with replacement_cost >= 20.
SELECT *
FROM film
WHERE replacement_cost >= 20;

-- 10. List rentals before '2005-06-01'.
SELECT *
FROM rental
WHERE rental_date < '2005-06-01';

-- 11. List staff with store_id = 2.
SELECT *
FROM staff
WHERE store_id = 2;

-- 12. Find films with rental_duration = 7.
SELECT *
FROM film
WHERE rental_duration = 7;

-- 13. List customers with last_name = 'DAVIS'.
SELECT *
FROM customer
WHERE last_name = 'DAVIS';

-- 14. Find films where length > 120 minutes.
SELECT *
FROM film
WHERE length > 120;

-- 15. List payments less than 2.
SELECT *
FROM payment
WHERE amount < 2;

-- 16. Find films with rating 'PG' AND rental_rate = 2.99.
SELECT *
FROM film
WHERE rating = 'PG'
  AND rental_rate = 2.99;

-- 17. List customers from store 1 AND active = 1.
SELECT *
FROM customer
WHERE store_id = 1
  AND active = 1;

-- 18. Find films longer than 100 minutes AND replacement_cost > 20.
SELECT *
FROM film
WHERE length > 100
  AND replacement_cost > 20;

-- 19. List payments > 5 AND staff_id = 1.
SELECT *
FROM payment
WHERE amount > 5
  AND staff_id = 1;

-- 20. List actors with first_name = 'JOHN' AND last_name = 'DOE'.
SELECT *
FROM actor
WHERE first_name = 'JOHN'
  AND last_name = 'DOE';

-- 21. List films rated 'PG' with length between 90 and 120 minutes,
-- ordered by length.
SELECT *
FROM film
WHERE rating = 'PG'
  AND length BETWEEN 90 AND 120
ORDER BY length ASC;

-- 22. Find customers from store 1 OR store 2 whose last name starts
-- with 'S', ordered alphabetically by last name and first name.
SELECT *
FROM customer
WHERE (store_id = 1 OR store_id = 2)
  AND last_name LIKE 'S%'
ORDER BY last_name ASC, first_name ASC;

-- 23. List films NOT rated 'R' with rental_rate greater than 2.99.
SELECT *
FROM film
WHERE rating <> 'R' -- rating != 'R';
  AND rental_rate > 2.99;