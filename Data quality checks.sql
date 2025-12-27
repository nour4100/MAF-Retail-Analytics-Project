-- Data quality checks

--Check for nulls or duplicates
SELECT
campaign_id,
count(*)
FROM dim_campaign
GROUP BY campaign_id
HAVING count(*) > 1 OR campaign_id IS NULL

--Check for unwanted spaces
SELECT
campaign_id,
campaign_name,
campaign_type,
marketing_channel,
start_date,
end_date
FROM dim_campaign
WHERE campaign_name != TRIM(campaign_name)
OR campaign_type != TRIM(campaign_type)
OR marketing_channel != TRIM(marketing_channel)

---------------------------------------------------
---------------------------------------------------

--Check for nulls or duplicates
SELECT
customer_id,
COUNT(*)
FROM dim_customer
GROUP BY customer_id
HAVING COUNT(*) > 1 OR customer_id IS NULL

--Check for unwanted spaces
SELECT
gender,
age_group,
loyalty_tier,
preferred_channel
FROM dim_customer
WHERE gender != TRIM(gender)
OR age_group != TRIM(age_group)
OR loyalty_tier != TRIM(loyalty_tier)
OR preferred_channel != TRIM(preferred_channel)

------------------------------------------------------
------------------------------------------------------


--Check for nulls or duplicates
SELECT
date_id,
count(*)
FROM dim_date
GROUP BY date_id
HAVING count(*) > 1 OR date_id IS NULL

---------------------------------------------------
---------------------------------------------------

--Check for nulls or duplicates
SELECT
product_id,
count(*)
FROM dim_product
GROUP BY product_id
HAVING count(*) > 1 OR product_id IS NULL


---------------------------------------------------
---------------------------------------------------


--Check for nulls or duplicates
SELECT
Store_id,
count(*)
FROM dim_store
GROUP BY Store_id
HAVING count(*) > 1 OR Store_id IS NULL


---------------------------------------------------
---------------------------------------------------


--Check for nulls or duplicates
SELECT
sales_id,
count(*)
FROM fact_sales
GROUP BY sales_id
HAVING count(*) > 1 OR sales_id IS NULL