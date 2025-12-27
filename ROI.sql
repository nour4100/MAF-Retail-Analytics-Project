-- Business Question
-- Which marketing campaigns generated incremental sales and delivered positive(ROI)

SELECT
dc.campaign_name,
dc.campaign_type,
SUM(fs.sales_amount) AS total_sales,
SUM(fs.discount_amount) AS total_discount,
ROUND((SUM(fs.sales_amount) - SUM(fs.discount_amount)) / SUM(fs.discount_amount),2) AS Marketing_roi
FROM fact_sales fs
INNER JOIN dim_campaign dc
ON fs.campaign_id = dc.campaign_id
GROUP BY
    dc.campaign_name,
    dc.campaign_type
ORDER BY marketing_roi DESC;