CREATE DATABASE climate_risk_analysis;
USE climate_risk_analysis;
CREATE TABLE climate_risk (
    Country VARCHAR(100),
    CRI_Rank INT,
    CRI_Score DECIMAL(10,2),
    Fatalities_Per_100K_Rank INT,
    Fatalities_Per_100K DECIMAL(10,2),
    Fatalities_Rank INT,
    Total_Fatalities DECIMAL(15,2),
    Losses_Per_GDP_Rank INT,
    Losses_Per_GDP_Pct DECIMAL(10,2),
    Economic_Loss_Rank INT,
    Economic_Loss_USD_Mn_PPP DECIMAL(15,2),
    Country_Code VARCHAR(10)
);
DROP TABLE IF EXISTS climate_risk;
CREATE TABLE climate_risk (
    country VARCHAR(100),
    CRI_Rank INT,
    CRI_Score DECIMAL(10,2),
    Fatalities_Per_100K_Rank INT,
    Fatalities_Per_100K DECIMAL(10,2),
    Fatalities_Rank INT,
    Total_Fatalities DECIMAL(15,2),
    Losses_Per_GDP_Rank INT,
    Losses_Per_GDP_Pct DECIMAL(10,2),
    Economic_Loss_Rank INT,
    Economic_Loss_USD_Mn_PPP DECIMAL(15,2),
    Country_Code VARCHAR(10)
);
DESCRIBE climate_risk;
SELECT COUNT(*) AS total_rows
FROM climate_risk;
SELECT *
FROM climate_risk
LIMIT 10;
SELECT
    COUNT(*) AS total_rows,
    SUM(country IS NULL) AS missing_country,
    SUM(CRI_Rank IS NULL) AS missing_cri_rank,
    SUM(CRI_Score IS NULL) AS missing_cri_score,
    SUM(Fatalities_Per_100K IS NULL) AS missing_fatalities_per_100k,
    SUM(Total_Fatalities IS NULL) AS missing_total_fatalities,
    SUM(Losses_Per_GDP_Pct IS NULL) AS missing_losses_gdp,
    SUM(Economic_Loss_USD_Mn_PPP IS NULL) AS missing_economic_loss
FROM climate_risk;
SELECT 
    country,
    COUNT(*) AS country_count
FROM climate_risk
GROUP BY country
HAVING COUNT(*) > 1;
SELECT *
FROM climate_risk
WHERE country IN (
    SELECT country
    FROM climate_risk
    GROUP BY country
    HAVING COUNT(*) > 1
)
ORDER BY country;
SELECT *
FROM climate_risk
WHERE country = 'COUNTRY_NAME';
SELECT COUNT(*) AS total_rows
FROM climate_risk;
SELECT COUNT(DISTINCT country) AS unique_countries
FROM climate_risk;
TRUNCATE TABLE climate_risk;
LOAD DATA LOCAL INFILE 'E:/climate_risk_data_analysis/climate_risk_cleaned.csv'
INTO TABLE climate_risk
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(
    country,
    CRI_Rank,
    CRI_Score,
    Fatalities_Per_100K_Rank,
    Fatalities_Per_100K,
    Fatalities_Rank,
    Total_Fatalities,
    Losses_Per_GDP_Rank,
    Losses_Per_GDP_Pct,
    Economic_Loss_Rank,
    Economic_Loss_USD_Mn_PPP,
    Country_Code
);
SET GLOBAL local_infile = 1;
SHOW GLOBAL VARIABLES LIKE 'local_infile';
LOAD DATA LOCAL INFILE 'E:/climate_risk_data_analysis/climate_risk_cleaned.csv'
INTO TABLE climate_risk
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(
    country,
    CRI_Rank,
    CRI_Score,
    Fatalities_Per_100K_Rank,
    Fatalities_Per_100K,
    Fatalities_Rank,
    Total_Fatalities,
    Losses_Per_GDP_Rank,
    Losses_Per_GDP_Pct,
    Economic_Loss_Rank,
    Economic_Loss_USD_Mn_PPP,
    Country_Code
);
SELECT COUNT(*) AS total_rows
FROM climate_risk;
SELECT 
    country,
    COUNT(*) AS country_count
FROM climate_risk
GROUP BY country
HAVING COUNT(*) > 1;
SELECT
    SUM(country IS NULL) AS country_nulls,
    SUM(CRI_Rank IS NULL) AS cri_rank_nulls,
    SUM(CRI_Score IS NULL) AS cri_score_nulls,
    SUM(Fatalities_Per_100K IS NULL) AS fatalities_per_100k_nulls,
    SUM(Total_Fatalities IS NULL) AS total_fatalities_nulls,
    SUM(Losses_Per_GDP_Pct IS NULL) AS losses_gdp_nulls,
    SUM(Economic_Loss_USD_Mn_PPP IS NULL) AS economic_loss_nulls,
    SUM(Country_Code IS NULL) AS country_code_nulls
FROM climate_risk;
SELECT
    country,
    CRI_Rank,
    CRI_Score,
    Losses_Per_GDP_Pct
FROM climate_risk
WHERE Losses_Per_GDP_Pct IS NULL;
SELECT
    COUNT(*) AS total_countries,
    ROUND(AVG(CRI_Score), 2) AS avg_cri_score,
    ROUND(MIN(CRI_Score), 2) AS min_cri_score,
    ROUND(MAX(CRI_Score), 2) AS max_cri_score,
    ROUND(AVG(Total_Fatalities), 2) AS avg_total_fatalities,
    ROUND(SUM(Total_Fatalities), 2) AS total_fatalities
FROM climate_risk;
SELECT
    country,
    CRI_Rank,
    CRI_Score,
    Fatalities_Per_100K,
    Total_Fatalities,
    Losses_Per_GDP_Pct,
    Economic_Loss_USD_Mn_PPP
FROM climate_risk
ORDER BY CRI_Score DESC
LIMIT 10;
SELECT
    country,
    Total_Fatalities,
    Fatalities_Per_100K,
    Fatalities_Rank
FROM climate_risk
ORDER BY Total_Fatalities DESC
LIMIT 10;
SELECT
    country,
    Economic_Loss_USD_Mn_PPP,
    Losses_Per_GDP_Pct,
    Economic_Loss_Rank
FROM climate_risk
WHERE Economic_Loss_USD_Mn_PPP IS NOT NULL
ORDER BY Economic_Loss_USD_Mn_PPP DESC
LIMIT 10;

