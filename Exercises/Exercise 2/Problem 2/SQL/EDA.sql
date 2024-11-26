-- a) Describe all tables.
DESC;

--  b) Select all data on all tables.

SELECT * FROM main.actor a ;
SELECT * FROM main.address a ;
SELECT * FROM main.store s ;
SELECT * FROM main.sales_by_film_category sbfc ;
SELECT * FROM main.customer_list cl ;
SELECT * FROM main.payment p ;

-- c) Find out how many rows there are in each table.

SELECT COUNT(*) FROM main.actor a ;
SELECT COUNT(*) FROM main.address a ;
SELECT COUNT(*) FROM main.store s ;
SELECT COUNT(*) FROM main.sales_by_film_category sbfc ;
SELECT COUNT(*) FROM main.customer_list cl ;
SELECT COUNT(*) FROM main.payment p ;

--  d) Calculate descriptive statistics on film length.

SELECT * FROM main.film f ;
SELECT count(title), avg(length) FROM main.film f ;

--  e) What are the peak rental times?
DESC rental;

SELECT
	strftime('%H', rental_date) AS time,
	count(rental_date) AS total
FROM
	main.rental r
GROUP BY time
ORDER BY total DESC;

--  f) What is the distribution of film ratings?

SELECT
	rating,
	COUNT(*) AS total
FROM
	main.film f 
GROUP BY rating
ORDER BY total DESC;

-- g) Who are the top 10 customers by number of rentals?

SELECT
	c.first_name,
	c.last_name,
	count(r.customer_id) AS number_rentals
FROM
	main.customer c
INNER JOIN 
	main.rental r ON c.customer_id = r.customer_id
GROUP BY c.first_name , c.last_name 
ORDER BY number_rentals DESC
LIMIT 10;

-- h) Retrieve a list of all customers and what films they have rented.
SELECT * FROM main.rental r ;
SELECT * FROM main.rental r ;
SELECT * FROM main.film f;

SELECT
	c.first_name,
	c.last_name,
	f.title
FROM
	main.customer c
INNER JOIN 
	main.rental r ON c.customer_id = r.customer_id
INNER JOIN 
	main.inventory i ON r.inventory_id = i.inventory_id
INNER JOIN
	main.film f ON i.film_id = f.film_id 
ORDER BY c.first_name, c.last_name ;
