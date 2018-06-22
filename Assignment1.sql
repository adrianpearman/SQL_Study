--- ASSIGNMENT #1 ---
-- 1. Return the customer IDs of customers who have spent at least $110 with the staff member who has an ID of 2.
-- ANSWER:
SELECT customer_id, sum(amount)
FROM payment
WHERE staff_id = 2
GROUP BY customer_id HAVING sum(amount) >= 110

-- 2. How many films begin with the letter J?
-- ANSWER:
SELECT COUNT(title)
FROM film
WHERE title ILIKE 'j%'

-- 3. What customer has the highest customer ID number whose name starts with an 'E' and has an address ID lower than 500?
-- ANSWER:
SELECT first_name, last_name
FROM customer
WHERE first_name ILIKE 'e%' AND address_id < 500
ORDER BY customer_id DESC LIMIT 1
