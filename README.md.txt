# 📊 Executive Sales & Profitability Dashboard (Sample Superstore)

![Power BI](https://img.shields.io/badge/Power_BI-F2C811?style=for-the-badge&logo=powerbi&logoColor=black)
![SQL](https://img.shields.io/badge/SQL-4479A1?style=for-the-badge&logo=postgresql&logoColor=white)
![Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white)

---

## 📌 Business Problem & Overview
The objective of this project is to analyse retail sales and profitability data from the **Sample - Superstore** dataset. Despite maintaining high sales volumes, management lacked visibility into which product lines, discount levels, and regions were eroding overall net profit margins.

This project delivers an end-to-end analytical pipeline—from SQL data validation to an interactive Power BI dashboard—to identify profit leaks and provide actionable strategy recommendations for executive leadership.
Additionally, the analysis was performed in Python (Pandas).

---

## 💡 Key Business Insights
* **The 20% Discount Threshold:** Discounts exceeding **20%** consistently resulted in negative net profit margins, causing severe margin erosion across all product categories.
* **Unprofitable Sub-Categories:** The *Tables* and *Bookcases* sub-categories generated high sales volume but ended with a cumulative net loss exceeding **$17,000**.
* **Regional Disparities:** The *Central* region yielded the lowest average profit margin (approx. **7.9%**) due to aggressive discount policies implemented by sales reps.

---

## 🎯 Executive Recommendations
1. **Discount Governance:** Implement a hard limit capping maximum allowable sales discounts to **15%** without regional manager approval.
2. **Product Portfolio Rationalization:** Re-evaluate supplier costs for underperforming sub-categories (*Tables*) or discontinue persistent loss-leading SKUs.
3. **Regional Incentive Alignment:** Shift regional performance KPIs from top-line revenue (*Sales*) to net margin contribution (*Profit*).

---

## 🛠️ Tech Stack & Methods
| Component | Tool / Language | Purpose |
| :--- | :--- | :--- |
| **Data Cleaning** | MySQL / Python (Pandas) | Deduplication, date standardisation (`DD-MM-YYYY`), missing value audits |
| **Data Warehousing** | MySQL | Analytical view creation (`sales_analysed`) |
| **Data Modeling** | Power BI (DAX) | Metric calculations (`Total Sales`, `Total Profit`, `Profit Margin %`) |
| **Visualization** | Power BI Desktop / Python (Pandas) | Interactive multi-page executive dashboard |

---

## 📊 Dashboard Architecture & Preview


### Dashboard Features:
* **KPI Header Cards:** Instant high-level readouts of Total Revenue, Profit, Margin %, and Order Count.
* **Dynamic Discount Impact Chart:** Visual comparison showing profit degradation across discount tiers.
* **Top 5 Loss-Making Products Table:** Dynamic "Bottom N" drill-down visual for operational review.

---

## ⚙️ Project Structure & Reproduction
```text
├── data/
│   └── Sample - Superstore.csv
├── sql/
│   ├── create_table_sales_data.sql
│   ├── data_cleaning.sql
│   └── sales_analysed.sql
├── python/
│   └── sales_analysis.py
├── power_bi/
│   └── Superstore_Dashboard.pbix
└── README.md