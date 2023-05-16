-- 1. How many actors are there with the last name "Wahlberg?"
SELECT first_name, last_name
FROM actor
WHERE last_name = 'Wahlberg';


-- 2. How many payments were made between $3.99 and $5.99?
SELECT customer_id, amount
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;


-- 3. What film does the store have the most of? (search in inventory)
SELECT film_id, COUNT(film_id) AS count
FROM inventory
GROUP BY film_id
ORDER BY count DESC
LIMIT 1;

-- 4. How many customers have the last name 'William'?
SELECT first_name, last_name
FROM customers
WHERE last_name = 'William';

--5. What store employee (get the id) sold the most rentals
SELECT staff_id, COUNT(staff_id) AS count
FROM rental
GROUP BY staff_id
ORDER BY count DESC
LIMIT 1;

-- 6. How many different districts are there?
SELECT COUNT(DISTINCT district) AS disctinct_districs
FROM address


--7. What film has the most actors in it? (use film_actor table and get film_id)
SELECT MAX(film_id) AS max_value
FROM film_actor;

--8. From store_id 1, how many customers have a last name ending with 'es'? (use customer table)
SELECT last_name
FROM customer
WHERE last_name LIKE '__%es';

--9. How many payment amounts had a number of rentals above 250 for customers
-- with ids between 380 and 430? (use group by and having > 250)
SELECT rental_rate, COUNT(*) AS sales_count
FROM film
GROUP BY rental_rate
HAVING COUNT(*) > 250;

--10. Within the film table, how many rating categories are there? And what rating has the
-- most movies total?
SELECT COUNT(DISTINCT rating) AS disctinct_ratings
FROM film

--part 2
SELECT rating, COUNT(rating) AS count
FROM film
GROUP BY rating
ORDER BY count DESC
LIMIT 1;

