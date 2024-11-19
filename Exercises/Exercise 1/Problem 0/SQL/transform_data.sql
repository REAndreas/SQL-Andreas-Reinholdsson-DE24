SELECT * FROM main.data_jobs dj;

CREATE TABLE IF NOT EXISTS clean_salaries AS (
	SELECT	
	employment_type,
	experience_level,
	job_title,
	ROUND (salary_in_usd * 10.94) AS salary_annual_sek,
	ROUND(salary_in_usd * 10.94 /12)  AS salary_monthly_sek,
	remote_ratio,
	company_size,
	job_title AS salary_level
	
FROM 
	main.data_jobs dj
);

SELECT	
	employment_type,
	experience_level,
	job_title,
	ROUND(salary_in_usd * 10.94) AS salary_annual_sek,
	ROUND(salary_in_usd * 10.94 /12)  AS salary_monthly_sek,
	remote_ratio,
	company_size,
	salary * 10.94 AS salary_level
FROM 
	main.data_jobs dj;
	
SELECT * FROM clean_salaries;

DROP TABLE main.clean_salaries ;