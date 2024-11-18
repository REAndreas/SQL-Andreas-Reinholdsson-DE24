SELECT * FROM main.food f;

CREATE TABLE IF NOT EXISTS cleaned_food AS(
SELECT
	id AS food,
	week_id AS week,
	SUBSTRING(week, 1, 4) AS year,
	value AS number_searches
FROM
	main.food f
);

SELECT * FROM main.cleaned_food;