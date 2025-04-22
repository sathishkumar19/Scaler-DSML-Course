--- Question 1: What is the most popular movie genre by the total number of rentals?

SELECT 
  c.name as genre,
  count(*) as total_rental
FROM `sathish-scaler-projects.cineflix_store.rental` r
LEFT JOIN `sathish-scaler-projects.cineflix_store.inventory` i 
  ON r.inventory_id = i.inventory_id  
LEFT JOIN `sathish-scaler-projects.cineflix_store.film_category` fc
  ON i.film_id = fc.film_id
LEFT JOIN `sathish-scaler-projects.cineflix_store.category` c
  on fc.category_id = c.category_id
GROUP BY genre
ORDER by total_rental desc 

---  Question 2: Get a list of all customers who have rented more films than averge number of rentals
SELECT 
  c.first_name,
  c.last_name,
  count(r.rental_id) as total_rentals
FROM `sathish-scaler-projects.cineflix_store.customer` c
LEFT JOIN `sathish-scaler-projects.cineflix_store.rental` r
  ON c.customer_id = r.customer_id
GROUP BY c.customer_id
HAVING total_rentals > (SELECT AVG(total_rentals) 
                          FROM (SELECT count(r.rental_id) as total_rentals
                                FROM `sathish-scaler-projects.cineflix_store.customer` c
                                LEFT JOIN `sathish-scaler-projects.cineflix_store.rental` r
                                  ON c.customer_id = r.customer_id
                                GROUP BY c.customer_id) as avg_rentals)
--- Question 3: Find the top 5 most rented films along with the number of rentals for each film.
SELECT 
  f.title,
  count(r.rental_id) as total_rentals
FROM `sathish-scaler-projects.cineflix_store.film` f
LEFT JOIN `sathish-scaler-projects.cineflix_store.inventory` i
  ON f.film_id = i.film_id
LEFT JOIN `sathish-scaler-projects.cineflix_store.rental` r 
  ON i.inventory_id = r.inventory_id
GROUP BY f.film_id
ORDER BY total_rentals desc
LIMIT 5


---  Question 4: List all film categories along with the number of films in each category, including category with no films. 
SELECT 
  c.name as category,
  count(f.film_id) as total_films
FROM `sathish-scaler-projects.cineflix_store.category` c
LEFT JOIN `sathish-scaler-projects.cineflix_store.film_category` fc
  ON c.category_id = fc.category_id
LEFT JOIN `sathish-scaler-projects.cineflix_store.film` f
  ON fc.film_id = f.film_id
GROUP BY category
ORDER BY total_films desc

-- Question 5: List all the films with rental rates higher than the average rental rate	

SELECT 
  f.title,
  f.rental_rate
FROM `sathish-scaler-projects.cineflix_store.film` f
WHERE f.rental_rate > (SELECT AVG(rental_rate) 
                          FROM `sathish-scaler-projects.cineflix_store.film`)



Day 8 - Q1

SELECT 
    film_id,
    rental_rate,
    (SELECT avg(rental_rate) FROM film) as avg_rental
FROM film
WHERE
     rental_rate >= (SELECT avg(rental_rate) FROM film )
ORDER BY film_id

-- Question 6: Find the top 3 customers who have rented the most films in the last month.

-- Question 7: List all the films that have never been rented.

-- Question 8: Find the average rental duration for films in each category.

-- Question 9: List all the customers who have rented films from more than 3 different categories.

-- Question 10: Find the total revenue generated from rentals in the last year.

-- Question 11: List all the films that have a rental duration greater than the average rental duration.

-- Question 12: Find the most rented film in each category.

-- Question 13: List all the customers who have never rented a film.

-- Question 14: Find the total number of rentals for each store.