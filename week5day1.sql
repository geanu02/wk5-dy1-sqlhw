SELECT first_name, last_name
FROM actor;

SELECT first_name, last_name
FROM actor
WHERE first_name LIKE 'Nick';

SELECT first_name, last_name
FROM actor
WHERE first_name LIKE 'N%';

SELECT first_name, last_name
FROM actor
WHERE first_name LIKE 'K%n';

SELECT customer_id, amount
FROM payment
WHERE amount > 2.99;

SELECT customer_id, amount
FROM payment
WHERE amount <> 7.99;

SELECT customer_id, amount
FROM payment
WHERE amount BETWEEN 3 AND 7;

SELECT customer_id, amount
FROM payment
WHERE amount > 3 AND amount < 7;

SELECT customer_id, amount
FROM payment
WHERE amount >= 3.99 AND amount <> 7.99;

SELECT SUM(amount)
FROM payment

SELECT AVG(amount)
FROM payment

SELECT COUNT(*)
FROM payment

SELECT MIN(amount) AS min_payment
FROM payment

SELECT MAX(amount) AS max_payment
FROM payment

SELECT amount, COUNT(amount)
FROM payment
GROUP BY amount
ORDER BY amount;

SELECT customer_id, SUM(amount)
FROM payment
GROUP BY customer_id
ORDER BY SUM(amount) DESC;

SELECT DISTINCT first_name, last_name
FROM customer
ORDER BY last_name

SELECT customer_id, count(*) AS no_of_purchases
FROM payment
GROUP BY customer_id
HAVING count(*) > 5
ORDER BY no_of_purchases DESC