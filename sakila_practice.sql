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



-- 52. List films NOT rated 'G' or 'PG' AND with rental_duration > 5 days.
SELECT *
FROM film
WHERE rating NOT IN ('g', 'pg')
  AND rental_duration > 5;

-- 53. Find rentals with return_date IS NOT NULL
-- AND rental_date between '2005-05-25' and '2005-06-05'.
SELECT *
FROM rental
WHERE return_date IS NOT NULL
  AND rental_date BETWEEN '2005-05-25' AND '2005-06-05';

-- 54. Display the top 6 most expensive films (replacement_cost)
-- that have length greater than 100 minutes.
SELECT *
FROM film
WHERE length > 100
ORDER BY replacement_cost DESC
LIMIT 6;

-- 55. List first 8 customers whose first_name starts with 'J'
-- OR last_name ends with 'EZ', ordered by first_name.
SELECT *
FROM customer
WHERE first_name LIKE 'j%'
   OR last_name LIKE '%ez'
ORDER BY first_name ASC
LIMIT 8;

-- 56. List customers whose email is NULL.
SELECT *
FROM customer
WHERE email IS NULL;

-- 57. List rentals that have not yet been returned.
SELECT *
FROM rental
WHERE return_date IS NULL;

-- 58. List addresses where address2 is NULL.
SELECT *
FROM address
WHERE address2 IS NULL;

-- 59. List films whose title starts with 'T' AND length > 90
-- OR rental_rate < 1.99, ordered by rental_rate ascending.
-- Show the first 7 records.
SELECT *
FROM film
WHERE title LIKE 't%'
  AND length > 90
   OR rental_rate < 1.99
ORDER BY rental_rate ASC
LIMIT 7;

-- 60. List customers whose email contains '.net'
-- AND active = 1 AND store_id is NOT 2.
-- Order by customer_id descending.
SELECT *
FROM customer
WHERE email LIKE '%.net%'
  AND active = 1
  AND store_id != 2
ORDER BY customer_id DESC;

-- 61 (Set A). List actors whose first_name starts with 'A'.
SELECT *
FROM actor
WHERE first_name LIKE 'a%';

-- 62 (Set A). List actors whose last_name ends with 'SON'.
SELECT *
FROM actor
WHERE last_name LIKE '%son';

-- 63 (Set A). List films containing 'LOVE' in the title.
SELECT *
FROM film
WHERE title LIKE '%love%';

-- 64 (Set A). List customers whose first_name has exactly 4 letters.
SELECT *
FROM customer
WHERE first_name LIKE '____';

-- 61 (Set B). Find actors whose first_name starts with 'A'
-- and has exactly 5 letters.
SELECT *
FROM actor
WHERE first_name LIKE 'a____';

-- 62 (Set B). List actors whose last_name ends with 'N'
-- and has exactly 4 letters.
SELECT *
FROM actor
WHERE last_name LIKE '___n';

-- 63 (Set B). Find customers whose first_name contains 'ER'.
SELECT *
FROM customer
WHERE first_name LIKE '%er%';

-- 64 (Set B). Find films whose title starts with 'S'
-- and ends with 'E'.
SELECT *
FROM film
WHERE title LIKE 's%'
  AND title LIKE '%e';

-- 65. Find actors whose first_name has 'A'
-- as the second character.
SELECT *
FROM actor
WHERE first_name LIKE '_a%';

-- 66. List customers whose last_name starts with 'B'
-- and has exactly 6 characters.
SELECT *
FROM customer
WHERE last_name LIKE 'b_____';

-- 67. Find films whose title contains exactly 3 characters
-- immediately before 'ING'.
SELECT *
FROM film
WHERE title LIKE '%___ing%';



-- Q68. Display actors whose last_name contains 'SON'
-- but does not start with 'J'.
SELECT *
FROM actor
WHERE last_name LIKE '%SON%'
  AND last_name NOT LIKE 'J%';


-- Q69. Find customers whose email starts with 'a'
-- and ends with '.org'.
SELECT *
FROM customer
WHERE email LIKE 'a%'
  AND email LIKE '%.org';


-- Q70. List films whose title has 'O' as the third character.
SELECT *
FROM film
WHERE title LIKE '__O%';


-- Q71. Find actors whose first_name ends with 'A'
-- and has exactly 4 characters.
SELECT *
FROM actor
WHERE first_name LIKE '___A';


-- Q72. Show customers whose last_name contains 'LL'
-- and has at least 6 characters.
SELECT *
FROM customer
WHERE last_name LIKE '%LL%'
  AND CHAR_LENGTH(last_name) >= 6;


-- Q73. Find films whose title starts with any two characters
-- followed immediately by 'AR'.
SELECT *
FROM film
WHERE title LIKE '__AR%';


-- Q74. Display the first 5 actors whose first_name
-- has 'E' as the fourth character.
SELECT *
FROM actor
WHERE first_name LIKE '___E%'
LIMIT 5;


-- Q75. List films whose title starts with 'C',
-- has exactly 5 characters before a space,
-- followed by any characters.
SELECT *
FROM film
WHERE title LIKE 'C____ %';


-- Q76. Display payments whose amount is between 2 and 4.
SELECT *
FROM payment
WHERE amount BETWEEN 2 AND 4;


-- Q77. List films rated 'PG' or 'PG-13'.
SELECT *
FROM film
WHERE rating IN ('PG', 'PG-13');


-- Q78. List films whose length is between 90 and 120 minutes.
SELECT *
FROM film
WHERE length BETWEEN 90 AND 120;


-- Q79. List films rated 'PG-13' or 'R'
-- with length between 95 and 130 minutes,
-- ordered by length descending.
SELECT *
FROM film
WHERE rating IN ('PG-13', 'R')
  AND length BETWEEN 95 AND 130
ORDER BY length DESC;


-- Q80. Find customers whose first_name starts with 'K'
-- and last_name contains 'AR',
-- ordered by customer_id.
SELECT *
FROM customer
WHERE first_name LIKE 'K%'
  AND last_name LIKE '%AR%'
ORDER BY customer_id ASC;


-- Q81. Show payments where amount > 6
-- OR between 1 and 2,
-- excluding payments made by staff_id = 2.
SELECT *
FROM payment
WHERE (amount > 6 OR amount BETWEEN 1 AND 2)
  AND staff_id != 2;


-- Q82. Display rentals where return_date IS NULL
-- OR rental_date is between '2005-06-01' and '2005-06-10',
-- ordered by rental_date descending, limit 10.
SELECT *
FROM rental
WHERE return_date IS NULL
   OR rental_date BETWEEN '2005-06-01' AND '2005-06-10'
ORDER BY rental_date DESC
LIMIT 10;


-- Q83. List films whose title starts with 'B'
-- and has 'E' as the third character,
-- ordered alphabetically.
SELECT *
FROM film
WHERE title LIKE 'B_E%'
ORDER BY title ASC;



-- Q84. Find active customers whose email ends with '.com'
-- and store_id is 1 or 2. Show the first 8 records.

SELECT *
FROM customer
WHERE email LIKE '%.com'
  AND active = 1
  AND store_id IN (1, 2)
ORDER BY customer_id ASC
LIMIT 8;


-- Q85. Show the 5 longest films that are NOT rated 'G'
-- and have rental_rate greater than 2.99.

SELECT *
FROM film
WHERE rating != 'G'
  AND rental_rate > 2.99
ORDER BY length DESC, film_id ASC
LIMIT 5;


-- Q86. List films ordered by title ascending.

SELECT *
FROM film
ORDER BY title ASC;


-- Q87. List customers ordered by last_name descending.

SELECT *
FROM customer
ORDER BY last_name DESC;


-- Q88. List payments ordered by amount descending.

SELECT *
FROM payment
ORDER BY amount DESC;


-- Q89. List PG-rated films longer than 100 minutes,
-- ordered by length descending.

SELECT *
FROM film
WHERE rating = 'PG'
  AND length > 100
ORDER BY length DESC;


-- Q90. Find customers from store_id = 1 whose
-- last_name starts with 'C', ordered alphabetically.

SELECT *
FROM customer
WHERE store_id = 1
  AND last_name LIKE 'C%'
ORDER BY last_name ASC;


-- Q91. Show payments between 2 and 6,
-- ordered by amount descending and payment_date ascending.

SELECT *
FROM payment
WHERE amount BETWEEN 2 AND 6
ORDER BY amount DESC, payment_date ASC;


-- Q92. Display rentals where return_date IS NOT NULL
-- and rental_date is after '2005-06-01',
-- ordered by rental_date descending.

SELECT *
FROM rental
WHERE return_date IS NOT NULL
  AND rental_date > '2005-06-01'
ORDER BY rental_date DESC;


-- Q93. List actors whose first_name contains 'E'
-- but does not start with 'A', ordered by first_name.

SELECT *
FROM actor
WHERE first_name LIKE '%E%'
  AND first_name NOT LIKE 'A%'
ORDER BY first_name ASC;


-- Q94. Find films whose replacement_cost is greater
-- than 20 and rating is 'R' or 'PG-13',
-- ordered by replacement_cost descending.

SELECT *
FROM film
WHERE replacement_cost > 20
  AND rating IN ('R', 'PG-13')
ORDER BY replacement_cost DESC;


-- Q95. Show customers whose email contains '.net'
-- or '.org', ordered by customer_id descending.

SELECT *
FROM customer
WHERE email LIKE '%.net%'
   OR email LIKE '%.org%'
ORDER BY customer_id DESC;


-- Q96. Show the first 5 actors.

SELECT *
FROM actor
ORDER BY actor_id ASC
LIMIT 5;


-- Q97. Show the 10 highest payments.

SELECT *
FROM payment
ORDER BY amount DESC, payment_id ASC
LIMIT 10;


-- Q98. Show the first 3 films rated 'PG'.

SELECT *
FROM film
WHERE rating = 'PG'
ORDER BY film_id ASC
LIMIT 3;


-- Q99. Show the 5 shortest films.

SELECT *
FROM film
ORDER BY length ASC, film_id ASC
LIMIT 5;


-- Q100. Show the latest 10 rentals.

SELECT *
FROM rental
ORDER BY rental_date DESC, rental_id DESC
LIMIT 10;
