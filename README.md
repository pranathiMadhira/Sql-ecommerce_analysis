# E-Commerce Sales Analysis Using SQL

## 1. Project Overview

This project analyzes e-commerce sales performance using SQL to understand revenue and order patterns across products, categories, customers, and time.

The analysis focuses on identifying sales trends, top-performing products and categories, customer purchasing behavior, and changes in revenue over time. The goal is to generate business insights that can support better decisions related to products, customers, and revenue growth.

### Tools Used
- SQL
- SQLite
- VS Code
- GitHub
  
## 2. Business Problem

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

## 3. Dataset & Database

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

## 4. Data Validation

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
