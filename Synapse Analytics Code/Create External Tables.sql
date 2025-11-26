-- CREATE MASTER KEY  ENCRYPTION BY PASSWORD ='asd43A' 

CREATE DATABASE SCOPED CREDENTIAL cred_abhishek
WITH IDENTITY='Managed Identity'

CREATE EXTERNAL DATA SOURCE source_silver
WITH 
(
    LOCATION='https://awstorageaccount007.dfs.core.windows.net/silver',
    CREDENTIAL=cred_abhishek
)

CREATE EXTERNAL DATA SOURCE source_gold
WITH 
(
    LOCATION='https://awstorageaccount007.dfs.core.windows.net/gold',
    CREDENTIAL=cred_abhishek
)

CREATE EXTERNAL FILE FORMAT format_parquet
WITH
(
    FORMAT_TYPE=PARQUET,
    DATA_COMPRESSION='org.apache.hadoop.io.compress.SnappyCodec'
)

-----------CREATE EXTERNAL TABLES EXTSALES

CREATE EXTERNAL TABLE gold.extsales
WITH(
    LOCATION='extsales',
    DATA_SOURCE=source_gold,
    FILE_FORMAT=format_parquet
)
AS SELECT * FROM gold.sales





