-- find the category name of all inventory items that have never been rented
-- Similar to exercise 9 with an additonal join
SELECT category.name
FROM category
LEFT JOIN film_category
ON category.category_id = film_category.category_id
LEFT JOIN inventory
ON film_category.film_id = inventory.film_id
LEFT JOIN rental
ON inventory.inventory_id = rental.inventory_id
WHERE rental.inventory_id IS NULL;
