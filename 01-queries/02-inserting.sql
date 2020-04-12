DROP DATABASE IF EXISTS mysqlReview;

CREATE DATABASE mysqlReview;

USE mysqlReview;

CREATE TABLE movies(
    id INT auto_increment NOT NULL PRIMARY KEY,
    title VARCHAR(255) UNIQUE NOT NULL,
    year YEAR(4),
    genre VARCHAR(255) NOT NULL, TEXT
    movie_score DECIMAL (2,1),
    rental_price real
);

-- add seeds into table called movies




