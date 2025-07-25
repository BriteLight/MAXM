drop table if exists `wmt-inkiru-ds.MAXMIND.GeoIP2_Enterprise_Blocks_IPv6`;
CREATE EXTERNAL TABLE `wmt-inkiru-ds.MAXMIND.GeoIP2_Enterprise_Blocks_IPv6` (
`network` string, 
`geoname_id` string, 
`registered_country_geoname_id` string, 
`represented_country_geoname_id` string, 
`is_anonymous_proxy` string, 
`is_satellite_provider` string, 
`postal_code` string, 
`latitude` string, 
`longitude` string, 
`isp_id` string, 
`is_legitimate_proxy` string, 
`domain` string, 
`accuracy_radius` string, 
`country_confidence` string, 
`subdivision_confidence` string, 
`city_confidence` string, 
`postal_confidence` string
)
OPTIONS (
  format = 'CSV',
  skip_leading_rows = 1,
  field_delimiter = ',',
  uris = ['gs://inkiru-ds-maxmind/GeoIP2-Enterprise-CSV_XXXXXXXX/GeoIP2-Enterprise-Blocks-IPv6.csv']
);
