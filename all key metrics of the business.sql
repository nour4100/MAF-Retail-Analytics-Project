-- Measures Exploration

-- the Total Sales
SELECT SUM(SALES_AMOUNT) AS TOTAL_SALSE FROM fact_sales;

-- how many items are sold
SELECT SUM(QUANTITY) AS TOTAL_QUANTITY FROM fact_sales;

-- AVG Price
SELECT ROUND(AVG(unit_Price),2) AS avg_price FROM fact_sales;

-- total number of orders
SELECT COUNT(DISTINCT sales_id) AS total_orders FROM fact_sales;

-- total nummber of product
SELECT COUNT(DISTINCT Product_id) AS total_product FROM fact_sales;

--total number of customers that has placed an order
SELECT COUNT(DISTINCT customer_id) AS total_customer FROM fact_sales;

--total number of stores
SELECT COUNT(DISTINCT store_id) AS total_stores FROM fact_sales;



--all key metrics of the business
SELECT 'Total_Sales' AS Measure_name,SUM(SALES_AMOUNT) AS Measure_Value FROM fact_sales
UNION ALL
SELECT 'Total Quantity', SUM(quantity) FROM fact_sales
UNION ALL
SELECT 'Average Price', AVG(unit_price) FROM fact_sales
UNION ALL
SELECT 'Total Orders', COUNT(DISTINCT product_id) FROM fact_sales
UNION ALL
SELECT 'Total Products',COUNT(DISTINCT sales_id) FROM fact_sales
UNION ALL
SELECT 'Total Customers',COUNT(DISTINCT customer_id) FROM fact_sales
UNION ALL
SELECT 'Total Stores',COUNT(DISTINCT store_id) FROM fact_sales