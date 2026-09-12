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

The `products` table is connected to the `orders` table through
`product_id`.

The `orders` table acts as the central transaction table, while the
`customers` and `products` tables provide additional information used
for analysis.

-- ============================================
-- E-COMMERCE DATABASE SETUP
-- ============================================

-- Customers table
CREATE TABLE customers (
    customer_id INTEGER PRIMARY KEY,
    customer_name TEXT NOT NULL,
    city TEXT,
    state TEXT,
    signup_date DATE
);

-- Products table
CREATE TABLE products (
    product_id INTEGER PRIMARY KEY,
    product_name TEXT NOT NULL,
    category TEXT,
    sub_category TEXT,
    cost_price REAL
);

-- Orders table
CREATE TABLE orders (
    order_id INTEGER PRIMARY KEY,
    customer_id INTEGER,
    order_date DATE,
    product_id INTEGER,
    quantity INTEGER,
    unit_price REAL,
    discount REAL,
    payment_method TEXT,
    order_status TEXT,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);
