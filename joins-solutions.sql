Get all customers and their addresses.

SELECT *
FROM addresses
JOIN customers
ON customers.id=addresses.customer_id;

Get all orders and their line items.

SELECT *
FROM orders
JOIN line_items
ON line_items.order_id=orders.id;

Which warehouses have cheetos?

SELECT *
FROM products
JOIN warehouse_product ON warehouse_product.product_id=products.id
JOIN warehouse ON warehouse_product.warehouse_id=warehouse.id
WHERE products.description ILIKE 'cheetos'



Which warehouses have diet pepsi?

SELECT *
FROM products
JOIN warehouse_product ON warehouse_product.product_id=products.id
JOIN warehouse ON warehouse_product.warehouse_id=warehouse.id
WHERE products.description ILIKE 'diet pepsi';

Get the number of orders for each customer. NOTE: It is OK if those without orders are not included in results.

SELECT *
FROM customers
JOIN addresses ON customers.id=addresses.customer_id
JOIN orders ON addresses.id=orders.address_id;

How many customers do we have?

SELECT COUNT (*)
FROM customers;


How many products do we carry?

SELECT COUNT (*)
FROM products;

What is the total available on-hand quantity of diet pepsi?

SELECT SUM (warehouse_product.on_hand)
FROM products
JOIN warehouse_product ON warehouse_product.product_id=products.id
JOIN warehouse ON warehouse_product.warehouse_id=warehouse.id
WHERE products.description ILIKE 'diet pepsi';
