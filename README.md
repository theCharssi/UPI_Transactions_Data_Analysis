# UPI Transaction Analysis Capstone Project

> End-to-end UPI Transaction Analysis capstone. Leverages SQL for data warehousing, Python (Pandas) for cleaning/analysis, and Power BI for dashboarding. Focuses on fraud detection, performance KPIs, and customer insights from 7 interconnected CSV datasets.

---

## 1. Business Context

Unified Payments Interface (UPI) has revolutionized India's digital payments ecosystem. This project simulates a real-world scenario where a leading digital payments platform needs to analyze its vast operational, transactional, and risk data.

With rapid growth in users, merchants, and transaction volume come challenges in fraud risk, compliance, and operational efficiency. Management seeks to leverage advanced analytics to drive data-driven decision-making, optimize operations, and enhance security.

## 2. Project Objectives

As a Data Analytics Consultant, the primary goals of this project are to:

* **Analyze** operational, transactional, and risk data from UPI systems.
* **Identify** patterns in customer/merchant behavior, payment trends, and fraud risks.
* **Develop** Key Performance Indicators (KPIs) and dashboards for decision-making.
* **Deliver** actionable business recommendations to improve platform performance and user trust.

## 3. Core Business Questions Addressed

This analysis is structured to answer four key operational questions:

1.  **Risk:** Are certain segments (customer, merchant, device) at higher risk of transaction fraud?
2.  **Operations:** Where do bottlenecks or failures occur in the customer or merchant journey?
3.  **Effectiveness:** How effective are existing risk controls and fraud alerts?
4.  **Performance:** How can business performance (by customer, merchant, device, or region) be monitored and improved?

## 4. Tech Stack

* **Database:** **SQL** (e.g., PostgreSQL, MySQL) for data warehousing, creating relational schemas (DDL), and complex querying.
* **Data Cleaning & Analysis:** **Python** (specifically **Pandas** for data manipulation and **Jupyter Notebooks** for exploratory analysis).
* **Data Visualization:** **Power BI** (or alternatively, Python libraries like **Matplotlib/Seaborn**) for building interactive dashboards.

## 5. Datasets

The analysis is based on 7 interconnected CSV files, simulating a production database:

1.  `customer_master.csv`: Customer demographic and profile data.
2.  `customer_feedback_surveys.csv`: User-submitted feedback and satisfaction scores.
3.  `device_info.csv`: Information on user devices, app versions, and security status.
4.  `fraud_alert_history.csv`: A log of all fraud alerts triggered by the system.
5.  `merchant_info.csv`: Merchant profile data, including type, region, and risk score.
6.  `upi_account_details.csv`: Details of UPI IDs and linked bank accounts.
7.  `upi_transaction_history.csv`: The core transaction log, including status, amount, and fraud flags.

## 6. Project Workflow

The project follows a standard data analysis framework:

1.  **Project Definition & Discovery:**
    * Review project goals (`UPI Transaction Analysis.pdf`).
    * Perform initial data profiling (check types, nulls, unique values) of all 7 CSVs.

2.  **Data Cleaning & Preparation (ETL):**
    * Handle missing values strategically (e.g., `null` in `resolution_date` means "unresolved").
    * Standardize all date/time columns to `datetime` objects.
    * Perform feature engineering (e.g., extracting `hour_of_day` from timestamps, creating `age_group` bins).

3.  **Data Warehousing (SQL):**
    * Design a relational database schema (ERD) to link the 7 tables.
    * Write SQL DDL (`CREATE TABLE`) scripts to build the database structure with primary and foreign keys.
    * Ingest the cleaned data into the SQL database.

4.  **Exploratory Data Analysis (SQL & Python):**
    * Define core KPIs (e.g., Total Transaction Volume, Fraud Rate, Alert Resolution Time).
    * Query the SQL database to answer the 4 key business questions.

5.  **Visualization & Dashboarding (Power BI):**
    * Create dashboards to communicate findings effectively:
        * **Executive Overview:** High-level KPIs, TTV over time, performance by region.
        * **Fraud & Risk Deep Dive:** Fraud rates by device, time of day, and alert effectiveness.
        * **Customer & Operations:** Satisfaction scores, transaction failure reasons, and feedback themes.

6.  **Actionable Recommendations:**
    * Synthesize all findings into a final report, translating data insights into clear business recommendations.
