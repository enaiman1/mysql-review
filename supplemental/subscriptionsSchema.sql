USE mysqlReview;

CREATE TABLE subscriptions(
    subscription_id INT auto_increment NOT NULL PRIMARY KEY,
    description VARCHAR(255) NOT NULL,
    price_per_month INT ,
    subscription_length TEXT NOT NULL
);


INSERT INTO subscriptions (description, price_per_month, subscription_length) 
 VALUE 
('Politics Magazine',10, '12 months'),
('Politics Magazine',11,'6 months'),
('Fashion Magazine',15,'12 months'),
('Fashion Magazine',17,'6 months'),
('Fashion Magazine',19,'3 months'),
('Sports Magazine',	11,'12 months'),
('Sports Magazine',	12,'6 months'),
('Sports Magazine',	13,'3 months'),
('Culinary Magazine',13,'3 months'),
('Culinary Magazine',14,'3 months'),
('Culinary Magazine',14,'3 months'),
('Coding Magazine',11,'3 months'),
('Coding Magazine',12,'3 months'),
('Coding Magazine',13,'3 months');