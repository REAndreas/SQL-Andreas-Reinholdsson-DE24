DESC;

--film_table

SELECT * FROM main.film f;

DESC TABLE main.film;

SELECT
	COUNT(*) AS number_movies,
	COUNT(DISTINCT title) AS unique_number_movies
FROM
	main.film f; 

SELECT * FROM main.film;

SELECT DISTINCT rating from main.film f;

--film_actor
SELECT * FROM main.film_actor fa ;

DESC TABLE main.film_actor ;

--actor
SELECT * FROM main.actor;

--category
SELECT * FROM main.category c ;
SELECT * FROM main.film_category fc ;

SELECT
	'customer' AS type,
	c.first_name,
	c.last_name
FROM
	main.customer c
WHERE
	c.first_name LIKE 'D%';