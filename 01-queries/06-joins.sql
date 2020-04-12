-- **** using the orders table and customers table make an inner join to join them together


-- inner join ( our result only includes rows that match our ON condition.)

-- line 1 - select columns from both tables
SELECT 
-- add a column called 'order_id' from the 'orders' table
orders.order_id,
--  add a column called 'customer_name' from the 'customers' table
customers.customer_name

-- line 2 specifies the first table 'orders' (referred in the docs as table one)
FROM orders

-- line 3 specifies the second table 'customers'  and what kind of join  (referred in the docs as table two)
JOIN customers

-- line 4 uses ON cluase to tells us how to combine the two tables
ON orders.customer_id = customers.customer_id;


-- USING the customers table and subscriptions table create a left join to join them together

--   left joins (combine two tables and keep some of the un-matched rows)

-- line 1 - select columns from both tables
SELECT
-- add a column called 'customer name' from the 'orders' table
customers.customer_name AS subscriber,
--  add a column called 'desciption' from the 'customers' table
subscriptions.description AS GENRE
-- line 2 specifies the first table 'customer' (referred in the docs as table one)
From customers
-- line 3 specifies the second table 'subscriptions' and what kind of join (referred in the docs as table two)
LEFT JOIN subscriptions
-- line 4 uses ON cluase to tells us how to combine the two tables
ON customer_id = subscription_id
