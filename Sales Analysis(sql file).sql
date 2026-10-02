USE northwind;
SHOW TABLES;
USE northwind;
SELECT * FROM customers LIMIT 5;
SELECT * FROM orders LIMIT 5;
SELECT * FROM order_details LIMIT 5;
SELECT * FROM products LIMIT 5;
SELECT
    o.id AS order_id,
    c.id AS customer_id,
    c.company
FROM orders o
JOIN customers c
    ON o.customer_id = c.id
LIMIT 10;
SELECT
    o.id AS order_id,
    od.id AS order_detail_id,
    od.product_id,
    od.quantity,
    od.unit_price
FROM orders o
JOIN order_details od
    ON o.id = od.order_id
LIMIT 10;
SELECT
    od.order_id,
    od.product_id,
    p.product_name,
    od.quantity,
    od.unit_price
FROM order_details od
JOIN products p
    ON od.product_id = p.id
LIMIT 10;
SELECT
    od.order_id,
    od.product_id,
    od.quantity,
    od.unit_price,
    od.discount,
    (od.quantity * od.unit_price * (1 - od.discount)) AS sales_amount
FROM order_details od
LIMIT 10;
SELECT
    c.id AS customer_id,
    c.company AS customer_name,
    o.id AS order_id,
    o.order_date,
    od.product_id,
    p.product_name,
    od.quantity,
    od.unit_price,
    od.discount,
    (od.quantity * od.unit_price * (1 - od.discount)) AS sales_amount
FROM customers c
JOIN orders o
    ON c.id = o.customer_id
JOIN order_details od
    ON o.id = od.order_id
JOIN products p
    ON od.product_id = p.id
LIMIT 20;
SELECT
    SUM(od.quantity * od.unit_price * (1 - od.discount)) AS total_sales
FROM orders o
JOIN order_details od
    ON o.id = od.order_id;
SELECT
    c.id AS customer_id,
    c.company AS customer_name,
    SUM(od.quantity * od.unit_price * (1 - od.discount)) AS total_sales
FROM customers c
JOIN orders o
    ON c.id = o.customer_id
JOIN order_details od
    ON o.id = od.order_id
GROUP BY
    c.id,
    c.company
ORDER BY total_sales DESC;
SELECT
    p.id AS product_id,
    p.product_name,
    SUM(od.quantity * od.unit_price * (1 - od.discount)) AS total_sales
FROM products p
JOIN order_details od
    ON p.id = od.product_id
GROUP BY
    p.id,
    p.product_name
ORDER BY total_sales DESC;
SELECT
    DATE_FORMAT(o.order_date, '%Y-%m') AS sales_month,
    SUM(od.quantity * od.unit_price * (1 - od.discount)) AS total_sales
FROM orders o
JOIN order_details od
    ON o.id = od.order_id
GROUP BY
    DATE_FORMAT(o.order_date, '%Y-%m')
ORDER BY
    sales_month;
    SELECT
    COUNT(DISTINCT o.id) AS total_orders,
    SUM(od.quantity) AS total_quantity_sold
FROM orders o
JOIN order_details od
    ON o.id = od.order_id;
    SELECT
    c.id AS customer_id,
    c.company AS customer_name,
    SUM(od.quantity * od.unit_price * (1 - od.discount)) AS total_sales
FROM customers c
JOIN orders o
    ON c.id = o.customer_id
JOIN order_details od
    ON o.id = od.order_id
GROUP BY
    c.id,
    c.company
ORDER BY total_sales DESC
LIMIT 5;
SELECT
    p.id AS product_id,
    p.product_name,
    SUM(od.quantity * od.unit_price * (1 - od.discount)) AS total_sales
FROM products p
JOIN order_details od
    ON p.id = od.product_id
GROUP BY
    p.id,
    p.product_name
ORDER BY total_sales DESC
LIMIT 5;
SELECT
    c.id AS customer_id,
    c.company AS customer_name,
    o.id AS order_id,
    o.order_date,
    p.id AS product_id,
    p.product_name,
    od.quantity,
    od.unit_price,
    od.discount,
    (od.quantity * od.unit_price * (1 - od.discount)) AS sales_amount
FROM customers c
JOIN orders o
    ON c.id = o.customer_id
JOIN order_details od
    ON o.id = od.order_id
JOIN products p
    ON od.product_id = p.id;
    SELECT 
    p.product_name,
    SUM(od.quantity * od.unit_price * (1 - od.discount)) AS total_sales
FROM order_details od
JOIN products p
    ON od.product_id = p.id
GROUP BY p.product_name
ORDER BY total_sales DESC
LIMIT 1;
SELECT
    c.company AS customer_name,
    SUM(od.quantity * od.unit_price * (1 - od.discount)) AS total_sales
FROM customers c
JOIN orders o
    ON c.id = o.customer_id
JOIN order_details od
    ON o.id = od.order_id
GROUP BY c.company
ORDER BY total_sales DESC
LIMIT 1;
SELECT
    DATE_FORMAT(o.order_date, '%Y-%m') AS sales_month,
    SUM(od.quantity * od.unit_price * (1 - od.discount)) AS total_sales
FROM orders o
JOIN order_details od
    ON o.id = od.order_id
GROUP BY DATE_FORMAT(o.order_date, '%Y-%m')
ORDER BY sales_month;