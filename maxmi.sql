drop table if exists `wmt-inkiru-ds.MAXMIND.GeoIP2_Enterprise_Locations_en`;
CREATE EXTERNAL TABLE `wmt-inkiru-ds.MAXMIND.GeoIP2_Enterprise_Locations_en` (
`geoname_id` string, 
`locale_code` string, 
`continent_code` string, 
`continent_name` string, 
`country_iso_code` string, 
`country_name` string, 
`subdivision_1_iso_code` string, 
`subdivision_1_name` string, 
`subdivision_2_iso_code` string, 
`subdivision_2_name` string, 
`city_name` string, 
`metro_code` string, 
`time_zone` string, 
`is_in_european_union` string
)
OPTIONS (
  format = 'CSV',
  skip_leading_rows = 1,
  field_delimiter = ',',
  uris = ['gs://inkiru-ds-maxmind/GeoIP2-Enterprise-CSV_XXXXXXXX/GeoIP2-Enterprise-Locations-en.csv']
);
