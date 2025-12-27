-- Data Range Exploration
SELECT
MIN(full_date) AS first_date,
MAX(full_date) AS LAST_date
FROM dim_date;


SELECT
MIN(opening_date) AS first_store,
MAX(opening_date) AS LAST_sore
FROM dim_store;


----------------------------------------------------
----------------------------------------------------

-- Store Expansion Analysis
SELECT
YEAR(opening_date) AS opening_year,
COUNT(*) AS stores_opened
FROM dim_store
GROUP BY YEAR(opening_date)
ORDER BY opening_year;