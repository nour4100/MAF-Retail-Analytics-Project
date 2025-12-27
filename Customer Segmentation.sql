--Customer Segmentation
--How do different loyalty tiers contribute to revenue and order volume?

SELECT
dc.loyalty_tier,
SUM(fs.sales_amount) AS total_sales,
COUNT(DISTINCT fs.sales_id) AS total_orders,
ROUND(SUM(fs.sales_amount) / COUNT(DISTINCT fs.sales_id),2) avg_order_value
FROM fact_sales fs
LEFT JOIN dim_customer dc
ON fs.customer_id = dc.customer_id
GROUP BY dc.loyalty_tier
ORDER BY total_sales DESC;

