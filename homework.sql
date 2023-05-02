-- 1. How many actors are there with the last name ‘Wahlberg’?

-- QUERY:
SELECT first_name, last_name
FROM actor
WHERE last_name = 'Wahlberg';
-- ANSWER:
-- There are two actors with the last name Wahlberg: Nick Wahlberg and Daryl Wahlberg.

-- 2. How many payments were made between $3.99 and $5.99?

-- QUERY:
SELECT count(*)
FROM payment
WHERE amount > 3.99 AND amount < 5.99;
-- ANSWER:
-- There were 3,431 payments between $3.99 and $5.99.

--3. What film does the store have the most of? (search in inventory)

--QUERY:
SELECT film_id, COUNT(film_id)
FROM inventory 
GROUP BY film_id
ORDER BY COUNT(film_id) DESC, film_id DESC;

--ANSWER:
/* There are 8 copies each of the following Film ID's:
1000
973
945
911
897
893
880
873
870
856
849
846
835
789
773
767
764
753
748
745
738
730
702
697
683
638
621
609
595
586
572
559
531
525
500
489
468
460
444
434
418
412
403
382
378
369
361
358
356
350
341
331
301
295
266
239
231
220
206
200
199
193
174
127
109
103
91
86
73
69
31
1
*/

-- 4. How many customers have the last name ‘William’?

-- QUERY:
SELECT COUNT(*)
FROM customer
WHERE last_name = 'William';
-- ANSWER:
-- There is no customer with the last name William.

-- 5. What store employee (get the id) sold the most rentals?

-- QUERY:
SELECT staff_id, COUNT(staff_id)
FROM rental
GROUP BY staff_id;
-- ANSWER:
-- Staff ID: 1 (Mike) sold 8,040 rentals.

-- 6. How many different district names are there?

-- QUERY:
SELECT COUNT(district)
FROM address;
-- ANSWER:
-- 603 Districts

-- 7. What film has the most actors in it? (use film_actor table and get film_id)

-- QUERY:
SELECT film_id, COUNT(actor_id)
FROM film_actor
GROUP BY film_id
ORDER BY COUNT(actor_id) DESC;
-- ANSWER:
-- Film ID 508 has 15 and the most actors in a film.

-- 8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)

-- QUERY:
SELECT last_name, store_id, COUNT(customer_id)
FROM customer
WHERE last_name LIKE '%es' AND store_id = 1
GROUP BY last_name, store_id;
-- ANSWER:
/* 13 customers have the last name ending with 'es'.
Bates
James
Flores
Bales
Gonzales
Torres
Holmes
Graves
Rhodes
Hayes
Vines
Reyes
Barnes 
*/

-- 9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
-- with ids between 380 and 430? (use group by and having > 250

-- QUERY:
SELECT amount, COUNT(amount)
FROM payment
WHERE customer_id BETWEEN 380 AND 430
GROUP BY amount
HAVING COUNT(amount) > 250;
-- ANSWER:
-- Three payment amounts (2.99, 4.99 and 0.99) had more than 250 rentals from customer_ids between 380 and 430.

-- 10. Within the film table, how many rating categories are there? And what rating has the most
-- movies total?

-- QUERY:
SELECT rating, COUNT(rating)
FROM film
GROUP BY rating
ORDER BY COUNT(rating) DESC;
-- ANSWER:
-- There are five rating categories and PG-13 has the most movies.