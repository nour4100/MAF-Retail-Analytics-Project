-- Part-to-Whole Analysis

-- Which Sub_categories contribute the most overall sales?

WITH OVER_ALL_SALES AS (
SELECT
dp.sub_category,
SUM(fs.sales_amount) AS total_sales
FROM fact_sales fs
LEFT JOIN dim_product dp
ON fs.product_id = dp.product_id
GROUP BY dp.sub_category
)

SELECT
sub_category,
total_sales,
SUM(total_sales) OVER () AS overall_sales,
ROUND(CAST(total_sales AS float) / SUM(total_sales) OVER () *100,2) AS percentage_of_total
FROM OVER_ALL_SALES
