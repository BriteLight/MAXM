drop table if exists `wmt-inkiru-ds.MAXMIND.GeoIP2_Enterprise_ISP`;
CREATE EXTERNAL TABLE `wmt-inkiru-ds.MAXMIND.GeoIP2_Enterprise_ISP` (
`isp_id` string, 
`isp` string, 
`organization` string, 
`autonomous_system_number` string, 
`autonomous_system_organization` string, 
`connection_type` string, 
`user_type` string, 
`mobile_country_code` string, 
`mobile_network_code` string
)
OPTIONS (
  format = 'CSV',
  skip_leading_rows = 1,
  field_delimiter = ',',
  uris = ['gs://inkiru-ds-maxmind/GeoIP2-Enterprise-CSV_XXXXXXXX/GeoIP2-Enterprise-ISP.csv']
);
