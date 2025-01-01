# Performance Analytics Dashboard: Kimia Farma (2020-2023) 📊
Kimia Farma Company is the largest pharmaceutical company in Indonesia, founded in 1817. The company is engaged in the production and distribution of pharmaceutical products, medical devices, and other health products.
Kimia Farma is also involved in drug research and development and provides health services through its pharmacy network throughout Indonesia.

## Project Background
As part of the Big Data Analytics internship program at Kimia Farma, this project aims to analyze business performance for 4 years (2020-2023) through big data. This project focuses on complex data processing to visualization in the form of an easy-to-understand dashboard for strategic decision making.

### Tools & Technologies Used:
- 🦫 Dbeaver
- 📁 GitHub
- ⌨ Google BigQuery
- 📊 Google Looker Studio

## Data Preprocessing

### Data Collection
- The dataset consists of 4 CSV files containing transaction data, sales, customer ratings, and product inventory.
- Using DBeaver to check the structure and quality of the data before uploading to BigQuery.

## Data Analysis and Aggregation

### Transaction, branch, and product data are combined using SQL in BigQuery.
Joining Data:
- Using LEFT JOIN to integrate the transaction table with the branch and product tables.

Calculating New Columns:
- Gross Profit Percentage by price category.
- Net Sales after discounts.
- Net Profit based on gross profit percentage.

## Dashboard Visualization & Insights

### Dashboard

### Key Insights
- Total profit reached IDR98.6 billion, with an average branch rating of 4.4 and a total of 672.5 thousand transactions.
- West Java dominates the number of transactions and sales at the provincial level.
- There is a significant purchasing trend for hypnotic and anxiolytic drugs, indicating the high demand of the Indonesian people for stress and anxiety management solutions.
- Kimia Farma branches in Pematangsiantar, Jambi, and Batam have a high reputation for service quality (highest branch rating), but lower transaction ratings indicate potential for improvement in the transaction experience.

### Recommendations
- Discount Strategy Optimization: Focus on high margin product categories (>20%).
- Service Quality Improvement: Special training for low rating branches.
- Product Expansion: Adding product variants for high sales areas
