SELECT
	*
FROM
	programming.python p
WHERE
	ID = 2 ;
	
DELETE
FROM
	programming.python
WHERE
	ID = 2;

SELECT * FROM database.duckdb d ;

SELECT * FROM database.duckdb WHERE ID > 10;

DELETE FROM database.duckdb WHERE ID > 10;