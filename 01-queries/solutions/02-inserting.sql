DROP DATABASE IF EXISTS mysqlReview;

CREATE DATABASE mysqlReview;

USE mysqlReview;

CREATE TABLE movies(
    id INT auto_increment NOT NULL PRIMARY KEY,
    title VARCHAR(255) UNIQUE NOT NULL,
    year YEAR(4),
    genre VARCHAR(255) NOT NULL,
    movie_score DECIMAL (2,1),
    rental_price float
);

-- add seeds into table called movies
INSERT INTO movies (title, year, genre, movie_score, rental_price ) VALUE ("Star Wars: The Last Jedi", 2017, "action", 7.0, 4.99);
INSERT INTO movies (title, year, genre, movie_score, rental_price ) VALUE ("The Big Sick", 2017, "romance", 7.5, 2.99);
INSERT INTO movies (title, year, genre, movie_score, rental_price ) VALUE ("Deadpool",2016, "action", 8.0, 3.99);

-- or
INSERT INTO movies (title, year, genre, movie_score, rental_price) 
VALUE ("Jurassic World", 2015, "action", 7.3, 3.99);
INSERT INTO movies (title, year, genre, movie_score, rental_price) 
VALUE ("Avengers: Age of Ultron", 2015, "action" ,7.9, 2.99);
INSERT INTO movies (title, year, genre, movie_score, rental_price) 
VALUE ("Furious Seven",2015, "action", 7.4, 1.99);

-- or 
INSERT INTO movies (title, year, genre, movie_score, rental_price) 
 VALUE 
("Inside Out", 2015,"comedy",8.6, 2.99),
("Minions", 2015, "comedy", 6.7, 2.99),
("Cinderella",2015, "romance", 7.1, 2.99);

