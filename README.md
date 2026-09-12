# E-Commerce Sales Analysis Using SQL

## Project Overview

This project analyzes e-commerce sales performance using SQL to understand revenue and order patterns across products, categories, customers, and time.

The analysis focuses on identifying sales trends, top-performing products and categories, customer purchasing behavior, and changes in revenue over time. The goal is to generate business insights that can support better decisions related to products, customers, and revenue growth.

### Tools Used
- SQL
- SQLite
- VS Code
- GitHub
  
## Business Problem

The business wants to understand how its e-commerce sales are performing
across different products, categories, customers, and time periods.

The analysis aims to answer key business questions such as:

- How much revenue is being generated?
- Which products and categories perform best?
- How does revenue change from month to month?
- What are the purchasing patterns of customers?
- Which customers contribute the most revenue?
- What factors are associated with changes in sales performance?

The objective is to use SQL-based analysis to identify meaningful patterns
and provide insights that can support business decisions related to revenue,
products, and customers.

## 1. Dataset & Database

The database consists of three main tables: `customers`, `products`, and
`orders`. Each table contains information specific to a particular
business entity.

### Tables

#### Customers

Contains customer-related information:

- `customer_id` — Unique identifier for each customer
- `customer_name` — Customer name
- `city` — Customer city
- `state` — Customer state
- `signup_date` — Customer signup date

#### Products

Contains product-related information:

- `product_id` — Unique identifier for each product
- `product_name` — Product name
- `category` — Product category
- `sub_category` — Product sub-category
- `cost_price` — Product cost price

#### Orders

Contains transaction-level information:

- `order_id` — Unique identifier for each order
- `customer_id` — Customer who placed the order
- `order_date` — Date of the order
- `product_id` — Product included in the order
- `quantity` — Quantity purchased
- `unit_price` — Price per unit
- `discount` — Discount applied to the order
- `payment_method` — Payment method used
- `order_status` — Current status of the order

### Table Relationships

The `customers` table is connected to the `orders` table through
`customer_id`.

## 2. Data Validation

Before performing the analysis, the database was validated to ensure that
the data contained the expected records and could be reliably used for
analysis.

### Record Counts

| Table | Number of Records |
|---|---:|
| Customers | 500 |
| Products | 100 |
| Orders | 5,000 |

### Validation Checks

The following checks were performed:

- Verified the number of records in each table.
- Verified that `customer_id` uniquely identifies customers.
- Verified that `product_id` uniquely identifies products.
- Verified the relationship between customers and orders using `customer_id`.
- Verified the relationship between products and orders using `product_id`.
- Checked the available order status values.
- Checked the numerical fields used in revenue calculations.

### Revenue Calculation

For completed orders, revenue was calculated as:

`quantity × unit_price × (1 - discount)`

Only orders with `order_status = 'Completed'` were included when calculating
completed sales revenue.

The `products` table is connected to the `orders` table through
`product_id`.

The `orders` table acts as the central transaction table, while the
`customers` and `products` tables provide additional information used
for analysis.

## 3. KPI Definitions

The following key performance indicators (KPIs) were defined to measure
the overall sales performance of the e-commerce business.

| KPI | Definition |
|---|---|
| Total Orders | Total number of orders placed |
| Completed Orders | Number of orders with `Completed` status |
| Unique Customers | Number of distinct customers who placed orders |
| Total Revenue | Revenue generated from completed orders |
| Total Quantity Sold | Total units sold through completed orders |
| Average Order Value (AOV) | Total completed revenue divided by completed orders |
| Completion Rate | Completed orders as a percentage of total orders |
| Cancellation Rate | Cancelled orders as a percentage of total orders |
| Average Discount | Average discount applied to orders |

### Revenue Calculation

Revenue for each order is calculated as:

`Quantity × Unit Price × (1 - Discount)`

For sales performance analysis, revenue is calculated using only orders
with `order_status = 'Completed'`.

---

###  KPI Analysis

The overall business performance was evaluated using key metrics such as:

- Total orders
- Completed orders
- Unique customers
- Total revenue
- Total quantity sold
- Average Order Value (AOV)
- Completion rate
- Cancellation rate
- Average discount

These metrics provide a high-level view of the company's sales performance.

### 3.1 Category & Product Analysis

Product and category performance was analyzed to identify the major
contributors to revenue.

The analysis includes:

- Revenue by category
- Orders and quantity sold by category
- Top products by revenue
- Top products within each category
- Categories with revenue above the average
- Category with the highest Average Order Value
- Revenue contribution by category
- Products performing above the overall average revenue
- Highest-revenue product within each category

This analysis helps identify strong-performing and weaker-performing
areas of the product portfolio.

### 3.2 Customer Analysis

Customer-level analysis was performed to understand purchasing behavior
and identify high-value customers.

The analysis includes:

- Top customers by revenue
- Order count by customer
- Customers with multiple completed orders
- Customers spending above the average
- Repeat customer percentage
- Highest-spending customer in each city
- Customer spending segments
- New customers acquired by month
- Customer-level revenue, order count, AOV, and revenue rank

This analysis helps understand customer contribution and purchasing
patterns.

###4 Time-Series Analysis

Monthly sales performance was analyzed to identify trends and changes
over time.

The analysis includes:

- Monthly completed revenue
- Monthly completed order count
- Monthly Average Order Value
- Month-over-month revenue growth
- Cumulative revenue
- Highest-revenue month
- Lowest-revenue month
- Monthly revenue by category
- Category-level month-over-month revenue growth

Window functions such as `LAG()` were used to compare current-period
performance with previous-period performance.

### 5.Business Case Analysis

Business-oriented case studies were performed to move beyond basic
reporting and investigate potential business problems.

The analysis covered:

#### Revenue Decline

Identified months where revenue decreased compared with the previous
month and measured the magnitude of the change.

#### Revenue Decline Drivers

For the month with the largest revenue decline, category-level revenue
was compared with the previous month to identify categories contributing
to the decline.

#### Customer Retention

Customers were classified into:

- One-time customers — exactly one completed order
- Repeat customers — two or more completed orders

#### High-Value Customers

Customers with revenue above the average customer revenue and order
counts below the average customer order count were identified.

#### Executive Business Summary

The analysis identified:

| Metric | Result |
|---|---|
| Highest-Revenue Category | Fashion |
| Highest-Revenue Product | Product 40 |
| Highest-Spending Customer | Customer 420 |
| Highest-Revenue Month | January 2025 |
| Lowest-Revenue Month | June 2025 |

---

## 6. Key Findings

The analysis produced the following key findings:

- Fashion was the highest-revenue product category.
- Product 40 was the highest-revenue product.
- Customer 420 was the highest-spending customer.
- January 2025 recorded the highest monthly revenue.
- June 2025 recorded the lowest monthly revenue.
- Revenue performance varied across months, categories, products, and customers.
- Customer analysis revealed differences between one-time and repeat purchasing behavior.
- Month-over-month analysis helped identify periods where revenue declined and enabled further investigation into category-level performance.

---

## 7. Business Recommendations

Based on the findings from the analysis, the following actions could be
considered:

- Continue monitoring high-performing categories such as Fashion and identify the products driving their performance.
- Investigate the causes of lower-revenue periods, particularly June, using category, product, and order-level analysis.
- Identify and retain high-value customers through targeted customer engagement strategies.
- Analyze repeat-customer behavior to identify opportunities for improving customer retention.
- Monitor monthly revenue trends regularly to identify significant changes in sales performance early.
- Review weaker-performing products and categories to determine whether pricing, discounting, or product strategy should be evaluated.

These recommendations are based on observed patterns in the available
data and should be validated with additional business information before
major decisions are made.

---

## 7. Limitations

- The dataset covers only the year 2025.
- The analysis is based on the available e-commerce dataset.
- Customer demographic and marketing campaign information is not available.
- External factors such as competition, seasonality, and marketing spend are not included.
- Profitability was not analyzed because a validated profit calculation was not included in the current analysis.
- The analysis identifies patterns in the available data but does not establish causal relationships.

---

## 8. Conclusion

This project used SQL to analyze e-commerce sales performance across
products, categories, customers, and time.

The analysis covered KPI measurement, product and category performance,
customer purchasing behavior, monthly sales trends, and business case
analysis.

The project demonstrates how SQL can be used not only to retrieve data,
but also to investigate business performance, identify meaningful
patterns, and translate analytical findings into potential business
actions.
