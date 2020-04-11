USE mysqlReview;

CREATE TABLE customers(
    customer_id INT auto_increment NOT NULL PRIMARY KEY,
    customer_name VARCHAR(255) NOT NULL,
    address VARCHAR(255) NOT NULL
);

INSERT INTO customers (customer_name, address) 
 VALUE 
('NICK WAHLBERG','98 Pyongyang Boulevard'),
('JENNIFER DAVIS','1621 Tongliao Avenue'),
('JOHNNY LOLLOBRIGIDA','1872 Toulon Loop'),
('BETTE NICHOLSON','64 Korla Street'),
('GRACE MOSTEL',"1351 Aparecida de Goinia Parkway"),
('MATTHEW JOHANSSON','495 Bhimavaram Lane'),
('JOE SWANK','207 Cuernavaca Loop'),
('CHRISTIAN GABLE','31 Deerfield Ave'),
('ZERO CAGE','56 Morton St'),
('KARL BERRY','100 Bryan Ave'),
('UMA WOOD','1786 Salinas Place'),
('FRED COSTNER','1909 Dayton Avenue'),
('HELEN VOIGHT','185 Mannheim Lane'),
('DAN TORN','751 Lima Loop'),
('CUBA OLIVIER','1229 Valencia Parkway');




