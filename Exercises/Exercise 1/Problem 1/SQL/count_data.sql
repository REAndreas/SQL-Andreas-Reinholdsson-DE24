-- A
SELECT COUNT(job_title) FROM main.clean_salaries WHERE job_title = 'Data Engineer';

-- B

SELECT COUNT(DISTINCT job_title) FROM main.clean_salaries;

-- C 

SELECT COUNT(job_title), salary_level FROM main.clean_salaries GROUP BY salary_level;

-- D

SELECT
	experience_level,
	ROUND(AVG(salary_monthly_sek)) AS average_salary_sek,
	MEDIAN(salary_monthly_sek) AS median_salary_sek
FROM
	main.clean_salaries
GROUP BY
	experience_level
ORDER BY average_salary_sek DESC;

-- E

SELECT
	job_title,
	MEDIAN(salary_monthly_sek) AS median_salary_sek
FROM
	main.clean_salaries
GROUP BY
	job_title
ORDER BY
	median_salary_sek DESC;
	
-- F

SELECT
    remote_ratio,
    COUNT(*) AS nbr_people,
    ROUND((COUNT(*) * 100.0) / SUM(COUNT(*)) OVER (), 2) AS percent
FROM
    main.clean_salaries
GROUP BY
    remote_ratio
ORDER BY
    remote_ratio;
    
 -- G
   
SELECT 
	company_size,
	MEDIAN(salary_monthly_sek) AS monthly_sek
FROM
	main.clean_salaries cse
WHERE
	job_title = 'Data Engineer'
GROUP BY 
	job_title ,
	company_size 
ORDER BY monthly_sek DESC;