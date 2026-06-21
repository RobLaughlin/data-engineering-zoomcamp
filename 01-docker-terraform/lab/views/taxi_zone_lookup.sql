CREATE OR REPLACE VIEW taxi_zone_lookup AS
SELECT *
FROM read_csv_auto('data/taxi_zone_lookup.csv');