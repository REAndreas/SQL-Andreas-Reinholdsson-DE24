-- IN operator for list filtering
SELECT
	DISTINCT COUNT(*)
FROM
	main.data_jobs dj
WHERE
	company_size IN ('M', 'S');
	
SELECT
	DISTINCT COUNT(*)
FROM
	main.data_jobs dj
WHERE
	company_size NOT IN ('M', 'S');

-- FILTER clause

SELECT
	COUNT(*) AS total_jobs,
	COUNT(*) FILTER (
	WHERE remote_ratio = 100) AS remote_jobs,
	ROUND(remote_jobs / total_jobs * 100,
	2) AS percentage_remote_jobs
FROM
	main.data_jobs;
	
SELECT * FROM main.data_jobs OFFSET 6;