--its in comments because the complete code was throwing errors so i ran one at a time keeping others in comment.

-- --CREATE VIEW CALENDAR-----
-- CREATE VIEW gold.calendar
-- AS
-- SELECT * FROM OPENROWSET(
--     BULK 'https://awstorageaccount007.dfs.core.windows.net/silver/AdventureWorks_Calendar/',
--     FORMAT ='PARQUET'
-- ) as query1

-- --CREATE VIEW CUSTOMERS-----
-- CREATE VIEW gold.customers
-- AS
-- SELECT * FROM OPENROWSET(
--     BULK 'https://awstorageaccount007.dfs.core.windows.net/silver/AdventureWorks_Customers/',
--     FORMAT ='PARQUET'
-- ) as query1;

-- --CREATE VIEW PRODUCTS-----
-- CREATE VIEW gold.products
-- AS
-- SELECT * FROM OPENROWSET(
--     BULK 'https://awstorageaccount007.dfs.core.windows.net/silver/AdventureWorks_Products/',
--     FORMAT ='PARQUET'
-- ) as query1;


-- --CREATE VIEW RETURNS-----
-- CREATE VIEW gold.returns
-- AS
-- SELECT * FROM OPENROWSET(
--     BULK 'https://awstorageaccount007.dfs.core.windows.net/silver/AdventureWorks_Returns/',
--     FORMAT ='PARQUET'
-- ) as query1;

-- --CREATE VIEW SALES-----
-- CREATE VIEW gold.sales
-- AS
-- SELECT * FROM OPENROWSET(
--     BULK 'https://awstorageaccount007.dfs.core.windows.net/silver/AdventureWorks_Sales/',
--     FORMAT ='PARQUET'
-- ) as query1;

-- --CREATE VIEW SUBCAT-----
-- CREATE VIEW gold.subcat
-- AS
-- SELECT * FROM OPENROWSET(
--     BULK 'https://awstorageaccount007.dfs.core.windows.net/silver/AdventureWorks_Product_SubCategories/',
--     FORMAT ='PARQUET'
-- ) as query1;

-- --CREATE VIEW CAT-----
-- CREATE VIEW gold.procat
-- AS
-- SELECT * FROM OPENROWSET(
--     BULK 'https://awstorageaccount007.dfs.core.windows.net/silver/AdventureWorks_Product_Categories/',
--     FORMAT ='PARQUET'
-- ) as query1;

-- --CREATE VIEW TERRITORIES-----
-- CREATE VIEW gold.territories
-- AS
-- SELECT * FROM OPENROWSET(
--     BULK 'https://awstorageaccount007.dfs.core.windows.net/silver/AdventureWorks_Territories/',
--     FORMAT ='PARQUET'
-- ) as query1;


