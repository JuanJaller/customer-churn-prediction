# Customer Churn Prediction

## Project Overview
This project analyzes customer churn using the IBM Telco Customer Churn dataset. The objective is to identify the main factors associated with customer attrition and build a machine learning model capable of predicting churn.

## Business Problem
Customer churn is a critical issue for subscription-based businesses. Retaining existing customers is often more cost-effective than acquiring new ones. This project aims to help identify high-risk customers and support retention strategies.

## Dataset
The dataset used in this project is the IBM Telco Customer Churn dataset, which includes customer demographic information, account details, services subscribed to, billing information, and churn status.

## Tools and Technologies
- Python
- Pandas
- NumPy
- Matplotlib
- Seaborn
- Scikit-learn
- SQL
- DBeaver
- VS Code

## Project Structure
```text
customer-churn-prediction/
│
├── data/
│   ├── raw/
│   └── processed/
├── notebooks/
├── sql/
├── src/
├── README.md
├── requirements.txt
└── .gitignore

Project Workflow
Data loading and cleaning
Exploratory data analysis (EDA)
SQL-based validation of key findings
Data preprocessing
Model training and evaluation
Business insights and recommendations
Data Cleaning
Converted TotalCharges from text to numeric
Removed 11 rows with missing values in TotalCharges
Final dataset size: 7,032 rows and 21 columns
Key Exploratory Insights
Customers with month-to-month contracts had the highest churn rate
Customers with two-year contracts had the lowest churn rate
Electronic check users had the highest churn rate among payment methods
Fiber optic customers showed a significantly higher churn rate
Customers who churned had lower average tenure and higher monthly charges
SQL Validation

SQL queries in DBeaver were used to validate the main EDA findings, confirming the patterns found in Python analysis.

Modeling

Two machine learning models were tested:

Logistic Regression
Random Forest
Model Performance
Model	Accuracy	Precision	Recall	F1-score	ROC-AUC
Logistic Regression	0.8038	0.6476	0.5749	0.6091	0.8357
Random Forest	0.7903	0.6330	0.5027	0.5604	0.8195
Best Model

Logistic Regression outperformed Random Forest across all major metrics and was selected as the best baseline model for this project.

Main Drivers of Churn

Factors associated with higher churn:

Fiber optic internet service
Electronic check payment method
Higher total charges
Streaming TV and Streaming Movies
Multiple lines
Paperless billing

Factors associated with lower churn:

Higher tenure
One-year and two-year contracts
Online security
Tech support
Having dependents
Business Recommendations
Encourage customers to move from month-to-month to longer contracts
Review the customer experience of fiber optic users
Promote automatic payment methods over electronic check
Focus retention efforts on new customers
Offer value-added services such as online security and tech support
Conclusion

This project demonstrates an end-to-end data science workflow, from data cleaning and exploratory analysis to SQL validation, machine learning modeling, and business recommendations. The results show that churn can be predicted with good performance and that the findings can support more effective retention strategies.
