SELECT * FROM database.duckdb;

UPDATE database.duckdb 
	SET learnt = TRUE
	WHERE ID IN (3,6,7);