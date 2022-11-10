-- the top 10 cities with the most total rental payment amount
-- include the city name and sum
-- use SUM to sum up the amounts
SELECT payment.amount, COUNT(*)
FROM payment
LEFT JOIN rental
ON payment.rental_id = rental.rental_id
LEFT JOIN staff
ON rental.staff_id = staff.staff_id
LEFT JOIN store
ON staff.store_id = store.store_id
LEFT JOIN address
ON store.address_id = address.address_id
LEFT JOIN city
ON address.city_id = city.city_id
GROUP BY payment.amount
ORDER BY count DESC
LIMIT 10
