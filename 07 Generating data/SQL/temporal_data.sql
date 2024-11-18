SELECT
	*
FROM
	generate_series(DATE '2024-11-01',
	DATE '2024-11-30',
	INTERVAL '1 day') AS t(november);
	
-- date dimension
CREATE TABLE IF NOT EXISTS dim_date AS(
SELECT 
	STRFTIME(date_series, '%Y-%m-%d') AS date,
	month(date_series) AS month,
	week(date_series) AS week_number,
	weekday(date_series) AS day_of_week,
FROM
	generate_series(DATE '2024-01-01',
	DATE '2024-12-31',
	INTERVAL '1 day') AS t(date_series));
	
SELECT * FROM main.dim_date dd ;

SELECT
	CASE
		WHEN month = 1 THEN 'January'
		WHEN month = 2 THEN 'February'
		WHEN month = 3 THEN 'March'
		WHEN month = 4 THEN 'April'
		WHEN month = 5 THEN 'May'
		WHEN month = 6 THEN 'June'
		WHEN month = 7 THEN 'July'
		WHEN month = 8 THEN 'August'
		WHEN month = 9 THEN 'September'
		WHEN month = 10 THEN 'October'
		WHEN month = 11 THEN 'November'
		WHEN month = 12 THEN 'December'	
	END AS month, * EXCLUDE(month)
FROM
	main.dim_date dd;