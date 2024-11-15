SELECT
	MIN(final_price) AS min_final_price,
	MAX(final_price) AS max_final_price,
	AVG(final_price) AS avg_final_price,
	MEDIAN(final_price) AS median_fianl_price
FROM
	main.hemnet_data_test;

SELECT
	MIN(price_per_area) AS min_price_per_area,
	MAX(price_per_area) AS max_price_per_area,
	round(AVG(price_per_area)) AS avg_price_per_area,
	MEDIAN(price_per_area) AS median_price_per_area
FROM
	main.hemnet_data_test;
	
SELECT COUNT(DISTINCT commune) FROM main.hemnet_data_test;

SELECT
	(COUNT(final_price) FILTER (
	WHERE final_price > 10000000) * 100.0) / COUNT(final_price) AS percentage_above_10M
FROM
	main.hemnet_data_test;