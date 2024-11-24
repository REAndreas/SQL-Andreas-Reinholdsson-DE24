SELECT * FROM synthetic.sales_jan sj
UNION
SELECT * FROM synthetic.sales_feb sf;

SELECT * EXCLUDE(sale_date) FROM synthetic.sales_jan sj
UNION
SELECT * EXCLUDE(sale_date) FROM synthetic.sales_feb sf;

SELECT * EXCLUDE(sale_date) FROM synthetic.sales_jan sj
UNION ALL
SELECT * EXCLUDE(sale_date) FROM synthetic.sales_feb sf;

SELECT * FROM synthetic.sales_jan sj
INTERSECT
SELECT * FROM synthetic.sales_feb sf;

SELECT product_name, amount FROM synthetic.sales_jan sj
INTERSECT
SELECT product_name, amount FROM synthetic.sales_feb sf;

SELECT product_name, amount FROM synthetic.sales_jan sj
EXCEPT
SELECT product_name, amount FROM synthetic.sales_feb sf;