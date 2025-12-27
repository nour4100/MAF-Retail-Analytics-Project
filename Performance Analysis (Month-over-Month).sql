-- Performance Analysis (Month-over-Month)

/* Analyze the Monthly performance of products by comparing their sales 
to the sales performance of the product and the previous year's sales */

WITH MoM AS (
SELECT
YEAR(dd.full_date) AS sales_year,
MONTH(dd.full_date) AS sales_month,
SUM(fs.sales_amount) AS current_sales,
dp.product_name
FROM fact_sales fs
LEFT JOIN dim_date dd
ON fs.date_id = dd.date_id
LEFT JOIN dim_product dp
ON fs.product_id = dp.product_id
GROUP BY
product_name,
YEAR(dd.full_date),
MONTH(dd.full_date)
)

SELECT
product_name,
sales_year,
sales_month,
current_sales,
LAG(current_sales) OVER (PARTITION BY product_name,sales_year ORDER BY sales_month) AS prev_month_sales,
current_sales - LAG(current_sales) OVER (PARTITION BY product_name,sales_year ORDER BY sales_month) AS mom_diff,
CASE
	 WHEN current_sales > LAG(current_sales) OVER (PARTITION BY product_name,sales_year ORDER BY sales_month)  THEN 'Increase'
     WHEN current_sales < LAG(current_sales) OVER (PARTITION BY product_name,sales_year ORDER BY sales_month)  THEN 'Decrease'
	 ELSE 'No change'
END AS mom_trend
FROM MoM