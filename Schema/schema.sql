-- CREATE DATABASE e_commerce_db
-- USE e_commerse_db

/*

CREATE TABLE users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(100) NOT NULL,
    address TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(200) NOT NULL,
    description TEXT,
    price DECIMAL(10,2) NOT NULL,
    stock_quantity INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE categories (
    category_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    description TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT NOT NULL,
    total_price DECIMAL(10,2) NOT NULL,
    status ENUM('pending', 'shipped', 'delivered', 'cancelled') NOT NULL DEFAULT 'pending',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE payments (
    payment_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT NOT NULL,
    amount DECIMAL(10,2) NOT NULL,
    payment_method VARCHAR(50) NOT NULL,
    status ENUM('pending', 'completed', 'failed') NOT NULL DEFAULT 'pending',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE reviews (
    review_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT NOT NULL,
    product_id INT NOT NULL,
    rating INT CHECK (rating BETWEEN 1 AND 5),
    comment TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE admins (
    admin_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(100) NOT NULL,
    role ENUM('superadmin', 'moderator', 'editor') NOT NULL DEFAULT 'moderator',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

*/

-- NOW ADDING FOREIGN KEYS

-- ALTER TABLE orders 
-- ADD CONSTRAINT fk_orders_user FOREIGN KEY (user_id) REFERENCES users(user_id);

-- ALTER TABLE order_items 
-- ADD CONSTRAINT fk_order_items_order FOREIGN KEY (order_id) REFERENCES orders(order_id),
-- ADD CONSTRAINT fk_order_items_product FOREIGN KEY (product_id) REFERENCES products(product_id);

-- ALTER TABLE payments 
-- ADD CONSTRAINT fk_payments_order FOREIGN KEY (order_id) REFERENCES orders(order_id);

-- ALTER TABLE reviews 
-- ADD CONSTRAINT fk_reviews_user FOREIGN KEY (user_id) REFERENCES users(user_id),
-- ADD CONSTRAINT fk_reviews_product FOREIGN KEY (product_id) REFERENCES products(product_id);

-- ALTER TABLE products add column category_id int not null
/*
ALTER TABLE categories
ADD CONSTRAINT fk_cotegories_product FOREIGN KEY (category_id) REFERENCES products(category_id);
 
 --> I dont know why but i cannot establish the foeign key between 
 categories and product table i will try another way 
 */
 -- alter table products add column category_id int after stock_quantity 

-- alter table categories add column
-- category_id int primary key not null auto_increment first 
-- ALTER TABLE categories
-- ADD CONSTRAINT fk_cotegories_product FOREIGN KEY (category_id) REFERENCES products(category_id);
/* i have now tried so many ways to fix it... i will try to fix this 
issue some other day... for now lets just call it a day 
*/