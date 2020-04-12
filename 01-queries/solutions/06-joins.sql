-- inner join ( our result only includes rows that match our ON condition.)

-- line 1 - select columns from both tables
SELECT 
-- this is the column 'order_id' from the 'orders' table
orders.order_id,
-- this is the column 'customer_name' from the 'customers' table
customers.customer_name

-- line 2 specifies the first table (referred in the docs as table one)
FROM orders

-- line 3 specifies the second table (referred in the docs as table two)
JOIN customers

-- line 4 tells us how to combine the two tables
  ON orders.customer_id = customers.customer_id;



--   left joins (combine two tables and keep some of the un-matched rows)
SELECT
customers.customer_name AS subscriber,
subscriptions.description AS GENRE
From customers
LEFT JOIN subscriptions
on customer_id = subscription_id
