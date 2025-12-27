TRUNCATE TABLE dbo.dim_campaign;
BULK INSERT dbo.dim_campaign
FROM 'C:\Users\nour\Desktop\New folder (2)\New folder\dim_campaign_v2.CSV'
WITH (
FIRSTROW = 2,
FIELDTERMINATOR = ',',
ROWTERMINATOR = '0x0A',
TABLOCK
);



TRUNCATE TABLE dbo.dim_customer;
BULK INSERT dbo.dim_customer
FROM 'C:\Users\nour\Desktop\New folder (2)\New folder\dim_customer_v2.CSV'
WITH
(
FIRSTROW = 2,
FIELDTERMINATOR = ',',
ROWTERMINATOR = '0x0A',
TABLOCK
);

TRUNCATE TABLE dbo.dim_date;
BULK INSERT dbo.dim_date
FROM 'C:\Users\nour\Desktop\New folder (2)\New folder\dim_date_v2.CSV'
WITH
(
FIRSTROW = 2,
FIELDTERMINATOR = ',',
ROWTERMINATOR = '0x0A',
TABLOCK
);


TRUNCATE TABLE dbo.dim_product;
BULK INSERT dbo.dim_product
FROM 'C:\Users\nour\Desktop\New folder (2)\New folder\dim_product_v2.CSV'
WITH
(
FIRSTROW = 2,
FIELDTERMINATOR = ',',
ROWTERMINATOR = '0x0A',
TABLOCK
);

TRUNCATE TABLE dbo.dim_store;
BULK INSERT dbo.dim_store
FROM 'C:\Users\nour\Desktop\New folder (2)\New folder\dim_store_v2.CSV'
WITH
(
FIRSTROW = 2,
FIELDTERMINATOR = ',',
ROWTERMINATOR = '0x0A',
TABLOCK
);



TRUNCATE TABLE dbo.fact_sales;
BULK INSERT dbo.fact_sales
FROM 'C:\Users\nour\Desktop\New folder (2)\New folder\fact_sales_v2.CSV'
WITH
(
FIRSTROW = 2,
FIELDTERMINATOR = ',',
ROWTERMINATOR = '0x0A',
TABLOCK
);
