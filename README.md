# 🌍 Climate Risk Analysis Dashboard

An end-to-end **Data Analytics project** that analyzes climate risk, human impact, and economic exposure across **182 countries** using **Python, MySQL, SQL, and Power BI**.

The project demonstrates a complete data analytics workflow — from raw data cleaning and preprocessing to SQL validation and interactive Power BI dashboard development.

---

##  Project Overview

Climate-related events can have significant impacts on human lives and economic conditions.

This project analyzes a Climate Risk Index dataset to understand differences between countries based on:

- Climate Risk Index (CRI)
- Climate Risk Rank
- Fatalities
- Fatalities per 100,000 people
- Economic losses
- Economic losses as a percentage of GDP

The raw dataset was cleaned and transformed using Python before being validated and analyzed using SQL/MySQL. The final cleaned data was used to build an interactive Power BI dashboard.

---

##  Project Objectives

The main objectives of this project are to:

1. Clean and preprocess the raw climate-risk dataset.
2. Identify and handle missing and unnecessary data.
3. Validate the dataset using SQL.
4. Analyze climate-risk scores and rankings.
5. Examine the human impact of climate-related events.
6. Analyze reported economic losses.
7. Create meaningful KPIs and visualizations.
8. Build an interactive Power BI dashboard.
9. Demonstrate an end-to-end data analytics workflow.

---

# Project Workflow

```text
Raw Climate Risk Dataset
          ↓
        Python
          ↓
Data Cleaning & Preprocessing
          ↓
   Cleaned CSV Dataset
          ↓
        MySQL
          ↓
SQL Validation & Analysis
          ↓
      Power BI
          ↓
Interactive Dashboard

 Tools & Technologies
Technology	Purpose
Python	Data cleaning and preprocessing
Pandas	Data manipulation
NumPy	Data processing
MySQL	Data storage and validation
SQL	Data analysis and validation
Power BI	Interactive dashboard development
DAX	Calculated columns and dashboard analysis
GitHub	Project documentation

Dataset

The dataset contains climate-risk information for 182 countries.

Main Variables
Column	Description
country	Country name
CRI_Rank	Climate Risk Index rank
CRI_Score	Climate Risk Index score
Fatalities_Per_100K_Rank	Rank based on fatalities per 100K
Fatalities_Per_100K	Fatalities per 100,000 people
Fatalities_Rank	Fatalities ranking
Total_Fatalities	Total reported fatalities
Losses_Per_GDP_Rank	Rank based on economic losses relative to GDP
Losses_Per_GDP_Pct	Economic losses as a percentage of GDP
Economic_Loss_Rank	Economic-loss ranking
Economic_Loss_USD_Mn_PPP	Economic losses in USD million PPP
Country_Code	Country code
1. Data Cleaning & Preprocessing — Python

The raw dataset was processed using Python and Pandas.

Data cleaning steps
Loaded the raw CSV dataset.
Inspected the dataset structure and data types.
Checked for missing values.
Checked for duplicate records.
Removed unnecessary technical and geospatial columns.
Standardized column names.
Cleaned text fields.
Converted analytical columns to appropriate numeric data types.
Standardized country information.
Preserved missing economic-loss values instead of incorrectly replacing them with zero.
Exported the cleaned dataset for further analysis.
Final Dataset

182 rows × 12 columns

climate_risk_cleaned.csv
2. SQL & MySQL Analysis

The cleaned dataset was imported into MySQL for data validation and analysis.

The primary table created for the project is:

climate_risk
SQL validation performed
Verified the total number of records.
Checked for duplicate records.
Checked for NULL values.
Validated the database table structure.
Analyzed climate-risk scores.
Analyzed fatalities.
Analyzed economic losses.
Identified countries with high climate-risk scores.
Example SQL validation
SELECT COUNT(*) AS total_rows
FROM climate_risk;

Result: 182 records

Example analytical query
SELECT
    country,
    CRI_Rank,
    CRI_Score,
    Fatalities_Per_100K,
    Total_Fatalities
FROM climate_risk
ORDER BY CRI_Score DESC
LIMIT 10;
 3. Power BI Dashboard

The cleaned dataset was used to develop an interactive Power BI dashboard.

Dashboard Title

Climate Risk Analysis Dashboard

Subtitle

Climate Risk, Human Impact & Economic Exposure

📌 Dashboard Components
1. KPI Cards

The dashboard includes four key performance indicators:

Total Countries
Average Climate Risk Score
Total Fatalities
Total Economic Loss
2. Top 10 Countries by Climate Risk Score

A bar chart displays the top 10 countries by CRI score.

This visualization allows users to compare countries based on their recorded climate-risk scores.

3. Risk Category Distribution

A donut chart displays the distribution of countries across dashboard-defined risk categories.

CRI Score	Dashboard Category
75 and above	Very High
50–74.99	High
25–49.99	Moderate
Below 25	Low

Note: These categories are analytical groupings created specifically for this dashboard and are not official categories from the source dataset.

4. Climate Risk Score vs Total Fatalities

A scatter chart compares:

CRI_Score
Total_Fatalities

This visualization allows users to explore the relationship between climate-risk scores and reported fatalities.

5. Country-Level Data Table

The dashboard contains a detailed country-level table with:

Country
CRI Rank
CRI Score
Risk Category
Total Fatalities
Economic Loss
6. Country Filter

An interactive country slicer allows users to select individual countries and examine their corresponding climate-risk information.

📈 Key Analytical Questions

The dashboard was designed to explore questions such as:

Which countries have the highest CRI scores?
How are countries distributed across the dashboard-defined risk categories?
What is the reported human impact across countries?
How do CRI scores compare with total fatalities?
Which countries have significant reported economic losses?
How does the climate-risk profile change when filtering by country?
🧹 Data Quality & Validation

Data quality was considered throughout the project.

Validation performed
Confirmed the cleaned dataset contains 182 records.
Confirmed the MySQL table contains 182 records.
Checked for duplicate records.
Checked for missing values.
Verified numeric data types.
Removed unnecessary technical and geospatial fields.
Standardized column names.
Preserved unavailable economic-loss values as missing rather than assuming zero.
📁 Project Structure
climate-risk-analysis-dashboard/
│
├── data/
│   └── climate_risk_cleaned.csv
│
├── python/
│   └── climate_risk_cleaning.ipynb
│
├── sql/
│   └── climate_risk_analysis.sql
│
├── powerbi/
│   └── Climate_Risk_Analysis_Dashboard.pbix
│
└── README.md
💡 Skills Demonstrated
Data Cleaning
Data Preprocessing
Exploratory Data Analysis
Python
Pandas
NumPy
SQL
MySQL
Data Validation
Data Visualization
Power BI
DAX
KPI Development
Dashboard Design
Analytical Storytelling
🚀 End-to-End Data Analytics Workflow
DATA COLLECTION
       ↓
DATA UNDERSTANDING
       ↓
PYTHON DATA CLEANING
       ↓
DATA VALIDATION
       ↓
MYSQL / SQL ANALYSIS
       ↓
POWER BI VISUALIZATION
       ↓
INTERACTIVE DASHBOARD
       ↓
INSIGHTS & ANALYSIS
📌 Project Outcome

The final outcome is an interactive Climate Risk Analysis Dashboard that brings together climate-risk indicators, human-impact measures, and economic-loss metrics into a single analytical interface.

The project demonstrates an end-to-end data analytics workflow using:

Python + SQL + MySQL + Power BI

👩‍💻 Author
Indrani Chakraborty

MSc in Computer Science

Data Analyst | Python | SQL | Power BI | Data Analytics

⭐ Technologies Used

Python Pandas NumPy SQL MySQL Power BI DAX GitHub
