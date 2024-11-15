CREATE TABLE IF NOT EXISTS hemnet_data_test AS(
    SELECT * FROM read_csv_auto('data/hemnet_data_clean.csv')
)