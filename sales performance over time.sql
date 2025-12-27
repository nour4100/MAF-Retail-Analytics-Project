--change over time analysis

-- Analyse sales performance over time
SELECT
SUM(fs.sales_amount) AS Total_sales,
YEAR(full_date) AS sales_year,
Month(full_date) AS sales_month
FROM fact_sales fs
LEFT JOIN dim_date dd
ON fs.date_id = dd.date_id
GROUP BY YEAR(full_date),Month(full_date)
ORDER BY YEAR(full_date),Month(full_date)

------------------------------------------------------
------------------------------------------------------


-- and the running total of sales over time

WITH RUNING_TOTAL AS (
SELECT
SUM(fs.sales_amount) AS Total_sales,
YEAR(full_date) AS sales_year,
Month(full_date) AS sales_month
FROM fact_sales fs
LEFT JOIN dim_date dd
ON fs.date_id = dd.date_id
GROUP BY YEAR(full_date),Month(full_date)
)

SELECT
sales_year,
sales_month,
total_sales,
SUM(total_sales) OVER (PARTITION BY sales_year ORDER BY sales_year,sales_month) AS Runing_total
FROM RUNING_TOTAL