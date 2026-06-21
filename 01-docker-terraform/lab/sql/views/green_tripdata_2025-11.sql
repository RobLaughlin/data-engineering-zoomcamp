CREATE OR REPLACE VIEW green_tripdata_2025_11 AS
SELECT *
FROM read_parquet('data/green_tripdata_2025-11.parquet');