-- Ranking Analysis

-- Which 5 products Generating the Highest Revenue?
SELECT TOP 5
    dp.product_name,
    SUM(fs.sales_amount) AS total_revenue
FROM fact_sales fs
LEFT JOIN dim_product dp
    ON fs.product_id = dp.product_id
GROUP BY dp.product_name
ORDER BY total_revenue DESC;

----------------------------------------------------------------
----------------------------------------------------------------

-- What are the 5 worst-performing products in terms of sales?

SELECT TOP 5
    dp.product_name,
    SUM(fs.sales_amount) AS total_revenue
FROM fact_sales fs
LEFT JOIN dim_product dp
    ON fs.product_id = dp.product_id
GROUP BY dp.product_name
ORDER BY total_revenue ;








----------------------------------------------------------------
----------------------------------------------------------------

-- Find the top 5 customers who have generated the highest revenue

SELECT TOP 5
    dc.customer_id,
    SUM(fs.sales_amount) AS total_revenue
FROM fact_sales fs
LEFT JOIN dim_customer dc
    ON fs.customer_id = dc.customer_id
GROUP BY dc.customer_id
ORDER BY total_revenue DESC;



