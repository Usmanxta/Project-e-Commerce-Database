-- CREATE DATABASE e_commerce_db;    
-- USE e_commerce_db

/*
 CREATE TABLE users (
 
 user_id INT PRIMARY KEY AUTO_INCREMENT,
 name VARCHAR(100),
 email VARCHAR(100) UNIQUE,
 Password VARCHAR(100),
 address TEXT,
 created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
 updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
 ON UPDATE CURRENT_TIMESTAMP 
 
 ); 
 */
/*
I have used TIMESTAMP to record the date and time altho i could have used 
DATETIME as well... bcz TIMESTAMP stores the and automatically convert the time to UTC
which is more prcatical for an e-commerce database. 
DEFAULT CURRENT_TIMESTAMP force it to store the time only once through out where as in
updated_at is set ON UPDATE so it will once store it in the begining of the data entry and then
when it is last modified ...
*/
/*
CREATE TABLE products (

product_id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(200) NOT NULL,
description TEXT,
price DECIMAL (10,2) NOT NULL,
stock_quantity INT NOT NULL,
category_id INT,
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP

);
*/



