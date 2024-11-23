CREATE SCHEMA IF NOT EXISTS staging;

CREATE TABLE IF NOT EXISTS staging.sql_glossary AS(
    SELECT * FROM read_csv_auto ('Data/sql_terms.csv')
);