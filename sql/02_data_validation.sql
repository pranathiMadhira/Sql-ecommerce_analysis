-- Record count: Customers
SELECT COUNT(*) AS customer_count
FROM customers;

-- Record count: Products
SELECT COUNT(*) AS product_count
FROM products;

-- Record count: Orders
SELECT COUNT(*) AS order_count
FROM orders;

-- Check customer IDs
SELECT COUNT(*) AS total_customers,
       COUNT(DISTINCT customer_id) AS unique_customer_ids
FROM customers;

-- Check product IDs
SELECT COUNT(*) AS total_products,
       COUNT(DISTINCT product_id) AS unique_product_ids
FROM products;

-- Check order status values
SELECT order_status,
       COUNT(*) AS order_count
FROM orders
GROUP BY order_status;
