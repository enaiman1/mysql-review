-- creates a database called mysqlReview
CREATE DATABASE mysqlReview;

-- optionally we can delete the table and start over(we would put this before the create clause)
DROP DATABASE IF EXISTS mysqlReview

--makes all of the following code will affect the database 
USE mysqlReview;

-- creates table called movies within the mysqlReview database 
 CREATE TABLE movies(
    --  create a column called 'id', that is a number and automatically update every time a new row is added, set it to make sure it always has value
     id INTEGER auto_increment NOT NULL,
    --  create a column called 'name' that takes in a string and will allow 255 characters,set it to make sure it always has value
     title VARCHAR (255) NOT NULL,
    -- create a column called 'year' that takes in a number, 
     year INTEGER,
    --  create a column called 'genre',that takes in a string and will allow 255 characters,set it to make sure it always has value
     genre VARCHAR(255) NOT NULL,
    --  create a column called  'movie_score', set it as a decimal with 2 point to the left and 1 point to the right
     movie_score DECIMAL( 2,1),
     -- create a column called "rental_price", set it as a float
     rental_price FLOAT,
    --  create a primary key and with the designation of id
     primary KEY (id) 
 );


