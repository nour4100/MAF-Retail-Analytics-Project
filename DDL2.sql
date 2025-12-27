CREATE TABLE dim_store (
Store_id INT PRIMARY KEY,
Store_name VARCHAR(100),
City VARCHAR(100),
Country VARCHAR(100),
Store_Formate VARCHAR(100),
Store_Size_Band VARCHAR(100),
Opening_date Date
);

CREATE TABLE dim_product (
product_id INT PRIMARY KEY,
product_name VARCHAR(150),
category VARCHAR(100),
sub_category VARCHAR(100),
brand VARCHAR(100),
brand_type VARCHAR(100),
);


CREATE TABLE dim_customer (
customer_id INT PRIMARY KEY,
gender VARCHAR(10),
age_group VARCHAR(20),
loyalty_tier VARCHAR(50), -- Silver / Gold / Platinum
preferred_channel VARCHAR(50),
registration_date DATE
);

CREATE TABLE dim_date (
date_id INT PRIMARY KEY,
full_date DATE,
day INT,
month INT,
month_name VARCHAR(20),
quarter INT,
year INT,
is_weekend VARCHAR(20)
);



CREATE TABLE dim_campaign (
campaign_id INT PRIMARY KEY,
campaign_name VARCHAR(150),
campaign_type VARCHAR(50), -- Discount / Bundle / Seasonal
marketing_channel VARCHAR(50),
start_date DATE,
end_date DATE
);

CREATE TABLE fact_sales (
sales_id BIGINT PRIMARY KEY,
date_id INT,
store_id INT,
product_id INT,
customer_id INT,
campaign_id  FLOAT,
payment_type VARCHAR(50),
quantity INT,
unit_price DECIMAL(10,2),
sales_amount DECIMAL(12,2),
discount_amount DECIMAL(12,2),
cost_amount DECIMAL(12,2),
);