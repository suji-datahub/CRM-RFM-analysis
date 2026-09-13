# Customer CRM Analysis: RFM Segmentation & Marketing Strategy
> A SQL-based CRM analysis of one year of customer purchase data from a Shopify phone case store, using RFM (Recency, Frequency, Monetary) analysis to segment customers and develop targeted marketing strategies.

## 📌 Project Overview
This project analyzes one year of customer and order data from a Shopify-based phone case e-commerce store.

The analysis focuses on understanding customer purchasing behavior, identifying valuable and at-risk customer segments, and developing targeted CRM marketing strategies based on RFM analysis.

Using MySQL, customer purchase data was aggregated and evaluated across three dimensions:

- Recency — How recently a customer made a purchase
- Frequency — How often a customer purchased
- Monetary — How much a customer spent

The final goal is to transform raw transaction data into actionable customer segments and marketing strategies.

## 🎯 Business Objective
The goal of this project is to understand customer purchasing behavior and identify different customer segments using RFM analysis.

The analysis aims to answer the following questions:
- Who are the most valuable customers?
- Which high-value customers may be at risk of churn?
- Which customers have potential for repeat purchases or higher spending?
- How can different customer segments be targeted with appropriate CRM marketing strategies?

By answering these questions, the project aims to turn customer transaction data into actionable marketing insights.

## 🛠️ Tools & Technologies
- MySQL
- SQL
- RFM Analysis
- Customer Segmentation
- CRM Marketing Strategy
- GitHub

## 📦 Dataset
The dataset contains one year of customer and order data from a Shopify phone case e-commerce store.

Data Used
- Customer information
- Order information
- Customer email
- Order number
- Payment date
- Total customer spending

The data was used to aggregate customer-level purchasing behavior and calculate RFM scores.

> **Data Confidentiality Notice**
>
> The analysis was conducted using real-world company data from a Shopify-based e-commerce business.
>
> Due to data confidentiality and privacy considerations, the original dataset, customer-level information, transaction details, and specific business metrics are not included in this repository.
>
> The SQL logic, analytical methodology, customer segmentation framework, and marketing recommendations are presented for portfolio and demonstration purposes.

## 🔄 Analysis Methodology
The analysis was conducted through the following steps:
1. **Data Preparation**
   - Joined customer and order data using customer email.
   - Standardized order date fields.
   - Identified purchasing and non-purchasing customers.
2. **Customer-Level Aggregation**
   - Calculated order count.
   - Calculated total customer spending.
   - Identified first and most recent purchase dates.
3. **RFM Scoring**
   - Assigned Recency scores using customer purchase recency.
   - Assigned Frequency scores based on order count.
   - Assigned Monetary scores based on total spending.
4. **Customer Segmentation**
   - Segmented customers primarily using Recency and Monetary scores.
   - Used Frequency as a supporting indicator.
5. **CRM Strategy**
   - Developed targeted marketing strategies for each customer segment.

## 📊 RFM Analysis
RFM analysis was used to evaluate customer purchasing behavior based on three key dimensions: Recency, Frequency, and Monetary value.

| Metric            | Definition                                               | Scoring |
| ----------------- | -------------------------------------------------------- | ------- |
| **Recency (R)**   | Number of days since the customer's most recent purchase | 1–5     |
| **Frequency (F)** | Number of orders placed by the customer                  | 0–2     |
| **Monetary (M)**  | Total amount spent by the customer                       | 1–5     |

### Scoring Method

* **Recency:** Customers who purchased more recently receive higher scores.
* **Frequency:** Customers with one purchase receive a score of 1, while customers with two purchases receive a score of 2.
* **Monetary:** Customers with higher total spending receive higher scores.
* **Non-purchasers:** Customers with no purchase history receive a score of 0 for all RFM metrics.

The RFM scores are then combined to support customer segmentation and prioritization.

## 👥 Customer Segmentation
Customers were segmented based primarily on Recency and Monetary scores, with Frequency used as a supporting indicator.

| Customer Segment         | Characteristics                              |
| ------------------------ | -------------------------------------------- |
| **High Value**           | Recent purchase and high spending            |
| **Potential High Value** | Recent purchase but lower spending           |
| **High Value At Risk**   | Low recent activity but high spending        |
| **Low Value / At Risk**  | Low recent activity and lower spending       |
| **Developing**           | Medium recency and developing customer value |
| **Non-Purchaser**        | No purchase history                          |

This segmentation helps identify customers with different levels of value and engagement, allowing marketing activities to be tailored to each segment.

## 📈 Segment Performance
Customer segments were evaluated based on customer distribution, revenue contribution, and overall RFM characteristics.

Due to company data confidentiality, detailed customer-level data and specific business metrics are not publicly disclosed in this repository.

The analysis evaluated each segment using:
- Customer count and distribution
- Revenue contribution
- Average customer spending
- RFM score distribution
- Customer value and engagement characteristics

## 🔍 Key Findings
- A relatively small group of customers showed both high recency and high monetary value, representing the core high-value customer segment.
- Some high-spending customers showed low recency, indicating potential churn risk and the need for reactivation campaigns.
- Customers with high recency but lower spending represented opportunities for upselling and increasing repeat purchases.
- A significant group of customers had no purchase history, highlighting the need for separate customer acquisition and conversion strategies.
- Customer segments showed different levels of customer value and engagement, suggesting that a one-size-fits-all marketing approach would be less effective.

## 💡 CRM Marketing Strategy
### High Value
**Goal:** Retain high-value customers
**Strategy:**
- VIP benefits
- Loyalty rewards
- Exclusive product offers
- Early access to new products

### Potential High Value
**Goal:** Increase purchase frequency and spending
**Strategy:**
- Cross-selling
- Upselling
- Personalized product recommendations
- Second-purchase incentives

### High Value At Risk
**Goal:** Reactivate valuable inactive customers
**Strategy:**
- Win-back campaigns
- Personalized offers
- Limited-time discounts
- Product recommendations based on previous purchases

### Low Value / At Risk
**Goal:** Encourage reactivation at a low marketing cost
**Strategy:**
- Low-cost promotional campaigns
- Reminder campaigns
- Targeted discounts

### Developing
**Goal:** Encourage repeat purchases
**Strategy:**
- Follow-up campaigns
- Product recommendations
- Loyalty program introduction
- Repeat-purchase incentives

### Non-Purchaser
**Goal:** Convert non-purchasers into first-time customers
**Strategy:**
- First-purchase discounts
- Welcome campaigns
- Product education
- Promotional campaigns

## 📝 Conclusion
This project used RFM analysis to identify different customer segments based on purchasing behavior.

By combining Recency, Frequency, and Monetary metrics, customers were classified into segments with different levels of value and engagement. The analysis also identified opportunities to retain high-value customers, reactivate at-risk customers, and encourage repeat purchases among developing customers.

The results demonstrate how SQL-based customer analysis can be transformed into actionable CRM strategies and support more targeted customer engagement.
