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


-- 24. List rentals that have not been returned,
-- ordered by rental date descending.
SELECT *
FROM rental
WHERE return_date IS NULL
ORDER BY rental_date DESC;

-- 25. Find actors whose first name starts with 'A'
-- AND last name ends with 'N'.
SELECT *
FROM actor
WHERE first_name LIKE 'A%'
  AND last_name LIKE '%N';

-- 26. Find payments between 2 and 5 made by staff 1,
-- ordered by amount descending.
SELECT *
FROM payment
WHERE amount BETWEEN 2 AND 5
  AND staff_id = 1
ORDER BY amount DESC;

-- 27. Find films rated 'PG' or 'G',
-- ordered alphabetically by title. Show only 5.
SELECT *
FROM film
WHERE rating IN ('PG', 'G')
ORDER BY title ASC
LIMIT 5;

-- 28. Find active customers whose email contains 'gmail'.
SELECT *
FROM customer
WHERE active = 1
  AND email LIKE '%gmail%';

-- 29. Find films not rated 'NC-17',
-- ordered by length descending. Show only 10.
SELECT *
FROM film
WHERE rating NOT IN ('NC-17')
ORDER BY length DESC
LIMIT 10;

-- 30. Find payments greater than 7 OR less than 1,
-- ordered by amount.
SELECT *
FROM payment
WHERE amount > 7
   OR amount < 1
ORDER BY amount;

-- 31. Find films rated either 'PG' or 'G'.
SELECT *
FROM film
WHERE rating IN ('PG', 'G');

-- 32. List customers from store 1 or store 2.
SELECT *
FROM customer
WHERE store_id IN (1, 2);

-- 33. Find payments with amount 0.99 or 2.99.
SELECT *
FROM payment
WHERE amount IN (0.99, 2.99);

-- 34. Find films rated 'PG-13' with rental rate
-- between 2.99 and 4.99, highest rental rate first.
SELECT *
FROM film
WHERE rating = 'PG-13'
  AND rental_rate BETWEEN 2.99 AND 4.99
ORDER BY rental_rate DESC;

-- 35. Find customers whose first name starts with 'M'
-- OR last name starts with 'D'.
SELECT *
FROM customer
WHERE first_name LIKE 'M%'
   OR last_name LIKE 'D%'
ORDER BY first_name;

-- 36. Find films not rated 'G' AND longer than
-- 100 minutes. Show only 8.
SELECT *
FROM film
WHERE rating != 'G'
  AND length > 100
LIMIT 8;

-- 37. Find rentals not returned AND rented
-- after '2005-06-15'.
SELECT *
FROM rental
WHERE return_date IS NULL
  AND rental_date > '2005-06-15';

-- 38. Find actors whose last name ends with 'SON'
-- OR starts with 'B', ordered by last name descending.
SELECT *
FROM actor
WHERE last_name LIKE '%SON'
   OR last_name LIKE 'B%'
ORDER BY last_name DESC;

-- 39. Find payments greater than 5
-- AND staff_id is not 2.
SELECT *
FROM payment
WHERE amount > 5
  AND staff_id != 2;

-- 40. Find films with replacement cost between 15 and 25
-- AND rating 'PG' or 'R'.
SELECT *
FROM film
WHERE replacement_cost BETWEEN 15 AND 25
  AND rating IN ('PG', 'R');

-- 41. Find films not rated 'NC-17',
-- ordered by length ascending. Show only 7.
SELECT *
FROM film
WHERE rating != 'NC-17'
ORDER BY length ASC
LIMIT 7;

-- 42. Find inactive customers whose email ends with '.org'.
SELECT *
FROM customer
WHERE email LIKE '%.ORG'
  AND active = 0;

-- 43. Find films whose title contains 'LOVE' or 'ACTION',
-- ordered alphabetically by title.
SELECT *
FROM film
WHERE title LIKE '%LOVE%'
   OR title LIKE '%ACTION%'
ORDER BY title;

-- 44. Find payments between 1 and 3 OR greater than 8,
-- ordered by amount descending.
SELECT *
FROM payment
WHERE amount BETWEEN 1 AND 3
   OR amount > 8
ORDER BY amount DESC;

-- 45. Find actors whose first name starts with 'A'
-- and contains exactly 5 characters. Show only 5.
SELECT *
FROM actor
WHERE first_name LIKE 'A____'
LIMIT 5;

-- 46. Find films whose rating is not 'R'.
SELECT *
FROM film
WHERE rating != 'R';

-- 47. List all inactive customers.
SELECT *
FROM customer
WHERE active = 0;

-- 48. Find films longer than 120 minutes
-- OR shorter than 60 minutes.
SELECT *
FROM film
WHERE length > 120
   OR length < 60;

-- 49. Find films rated 'R' with length between
-- 80 and 140 minutes, ordered by title descending.
SELECT *
FROM film
WHERE rating = 'R'
  AND length BETWEEN 80 AND 140
ORDER BY title DESC;

-- 50. Find customers whose last name contains 'ER'
-- AND belong to store 2, ordered by last name.
SELECT *
FROM customer
WHERE last_name LIKE '%ER%'
  AND store_id = 2
ORDER BY last_name;

-- 51. Find payments made through staff 1
-- OR amount greater than 9,
-- ordered by payment date descending.
SELECT *
FROM payment
WHERE staff_id = 1
   OR amount > 9
ORDER BY payment_date DESC;
