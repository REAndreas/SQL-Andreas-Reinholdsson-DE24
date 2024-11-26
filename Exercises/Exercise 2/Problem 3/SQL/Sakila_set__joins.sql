-- a) Retrieve a list of all customers and actors which last name starts with G.

SELECT
	c.last_name
FROM
	main.customer c
WHERE c.last_name LIKE 'G%'
UNION 
SELECT
	a.last_name
FROM
	main.actor a
WHERE a.last_name LIKE 'G%';

--  b) How many customers and actors starts have the the letters 'ann' in there first names?

SELECT
	COUNT(c.first_name)
FROM
	main.customer c
WHERE c.first_name LIKE '%ANN%'
UNION
SELECT
	COUNT(a.first_name)
FROM
	main.actor a
WHERE a.first_name LIKE '%ANN%';

--   c) In which cities and countries do the customers live in?
SELECT
	name,
	city,
	country
FROM
	main.customer_list cl ;
	
-- d) In which cities and countries do the customers with initials JD live in?

SELECT * FROM main.customer c;
SELECT * FROM main.address a;
SELECT * FROM main.city c;
SELECT * FROM main.country c;

SELECT
	c.first_name,
	c.last_name,
	ct.city,
	cty.country	
FROM
	main.customer c
INNER JOIN 
	main.address a ON c.address_id = a.address_id 
INNER JOIN 
	main.city ct ON a.city_id = ct.city_id 
INNER JOIN 
	main.country cty ON ct.country_id = cty.country_id
WHERE c.first_name LIKE 'J%' AND c.last_name LIKE 'D%';

--  e) Retrieve a list of all customers and what films they have rented.

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