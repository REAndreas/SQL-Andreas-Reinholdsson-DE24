SELECT * FROM main.clean_salaries cs ;

SELECT
	CASE 
		WHEN employment_type = 'FT' THEN 'Full time'
		WHEN employment_type = 'CT' THEN 'Contract'
		WHEN employment_type = 'PT' THEN 'Part time'
		WHEN employment_type = 'FL' THEN 'Freelance'
		ELSE employment_type 
	END
	employment_type
FROM
	main.clean_salaries cs;
	
UPDATE main.clean_salaries
SET
	employment_type = CASE 
		WHEN employment_type = 'FT' THEN 'Full time'
		WHEN employment_type = 'CT' THEN 'Contract'
		WHEN employment_type = 'PT' THEN 'Part time'
		WHEN employment_type = 'FL' THEN 'Freelance'
		ELSE employment_type
	END;

SELECT * FROM main.clean_salaries cs ;

SELECT
	CASE 
		WHEN company_size = 'S' THEN 'Small'
		WHEN company_size = 'M' THEN 'Medium'
		WHEN company_size = 'L' THEN 'Large'
		ELSE company_size
	END
	company_size 
FROM
	main.clean_salaries cs ;

UPDATE main.clean_salaries 
SET
	company_size = CASE 
		WHEN company_size = 'S' THEN 'Small'
		WHEN company_size = 'M' THEN 'Medium'
		WHEN company_size = 'L' THEN 'Large'
		ELSE company_size
	END;

SELECT 
	MIN(salary_monthly_sek) AS min_month_Sek,
	MAX(salary_monthly_sek) AS max_month_Sek,
	ROUND(AVG(salary_monthly_sek)) AS avg_month_Sek,
	ROUND(MEDIAN(salary_monthly_sek)) AS median_month_Sek
FROM 
	main.clean_salaries cs ;

SELECT COUNT(salary_monthly_sek)  FROM main.clean_salaries cs WHERE salary_monthly_sek > 310000;

UPDATE main.clean_salaries 
SET salary_level = 'Insanely high'
WHERE salary_monthly_sek > 310000

UPDATE main.clean_salaries 
SET salary_level = 'High'
WHERE salary_monthly_sek BETWEEN 230000 AND 310000

UPDATE main.clean_salaries--
SET	salary_level = 'Medium'
WHERE salary_monthly_sek BETWEEN 80000 and 230000;
 
UPDATE main.clean_salaries--
SET	salary_level = 'Low'
WHERE salary_monthly_sek < 80000;

SELECT * FROM main.clean_salaries cs ;
	
	