CREATE DATABASE upi_trasactions;
USE upi_trasactions;
DROP TABLE IF EXISTS customer_feedback_surveys;
CREATE TABLE customer_feedback_surveys (
    feedback_id VARCHAR(20) PRIMARY KEY,
    customer_id VARCHAR(20) NOT NULL,
    date_submitted DATE,
    feedback_text TEXT,
    satisfaction_score TINYINT,
    issue_type VARCHAR(50),
    resolved BOOLEAN,
    
    -- ---
    -- Indexes to speed up common queries
    -- ---
    
    INDEX idx_customer_id (customer_id),
    INDEX idx_date_submitted (date_submitted)
);
SELECT * FROM customer_feedback_surveys;
DROP TABLE IF EXISTS customer_master;

CREATE TABLE customer_master (
    customer_id VARCHAR(20) PRIMARY KEY,
    full_name VARCHAR(100),
    mobile_number VARCHAR(15),
    age TINYINT,
    gender VARCHAR(10),
    region VARCHAR(20),
    date_joined DATE,
    is_business_user BOOLEAN,
    risk_score DECIMAL(3, 2),
    
    INDEX idx_region (region),
    INDEX idx_date_joined (date_joined)
);
SELECT * FROM customer_master;
SELECT COUNT(*) FROM customer_master;
DROP TABLE IF EXISTS device_info;

CREATE TABLE device_info (
    device_id VARCHAR(20) PRIMARY KEY,
    customer_id VARCHAR(20) NOT NULL,
    device_type VARCHAR(20),
    app_version VARCHAR(15),
    is_rooted BOOLEAN,
    last_active DATETIME(6));
SELECT * FROM device_info;
SELECT COUNT(*) FROM device_info;
DROP TABLE IF EXISTS fraud_alert_history;

CREATE TABLE fraud_alert_history (
    alert_id VARCHAR(20) PRIMARY KEY,
    transaction_id VARCHAR(20) NOT NULL,
    alert_type VARCHAR(50),
    alert_date DATETIME(6),
    resolved BOOLEAN,
    resolution_date DATETIME(6),
    remarks TEXT);
SELECT * FROM fraud_alert_history;
SELECT COUNT(*) FROM fraud_alert_history;
DROP TABLE IF EXISTS merchant_info;

CREATE TABLE merchant_info (
    merchant_id VARCHAR(20) PRIMARY KEY,
    merchant_name VARCHAR(100),
    merchant_type VARCHAR(50),
    region VARCHAR(20),
    onboard_date DATE,
    risk_score DECIMAL(3, 2));
SELECT * FROM merchant_info;
SELECT COUNT(*) FROM merchant_info;
DROP TABLE IF EXISTS upi_account_details;

CREATE TABLE upi_account_details (
    upi_id VARCHAR(100) PRIMARY KEY,
    customer_id VARCHAR(20) NOT NULL,
    bank_name VARCHAR(50),
    account_type VARCHAR(50),
    date_added DATE,
    status VARCHAR(20));
SELECT * FROM upi_account_details;
SELECT COUNT(*) FROM upi_account_details;


DROP TABLE IF EXISTS upi_transaction_history;

CREATE TABLE upi_transaction_history (
    transaction_id VARCHAR(20) PRIMARY KEY,
    upi_id VARCHAR(100) NOT NULL,
    customer_id VARCHAR(20) NOT NULL,
    timestamp DATETIME(6) NOT NULL,
    amount DECIMAL(10, 2) NOT NULL,
    transaction_type VARCHAR(50),
    merchant_id VARCHAR(20),
    counterparty_upi VARCHAR(100),
    status VARCHAR(20),
    device_id VARCHAR(20),
    device_type VARCHAR(20),
    channel VARCHAR(20),
    fraud_flag BOOLEAN DEFAULT FALSE,
    reversal_flag BOOLEAN DEFAULT FALSE,
    failure_reason TEXT);
SELECT * FROM upi_transaction_history;
SELECT COUNT(*) FROM upi_transaction_history;