# Project e-Commerce Database

## Overview
This project involves designing and implementing a database for an e-commerce platform. The database manages user accounts, products, orders, payments, and reviews efficiently.

## Table of Contents
- [Project Structure](#project-structure)
- [Schema Overview](#schema-overview)
- [Functional Requirements](#functional-requirements)
- [Setup Instructions](#setup-instructions)
- [Future Enhancements](#future-enhancements)

## Project Structure


## Schema Overview
### Entities and their Attributes
- **Users**: `user_id`, `name`, `email`, `password`, `address`, `created_at`, `updated_at`
- **Products**: `product_id`, `name`, `description`, `price`, `stock_quantity`, `category_id`, `created_at`, `updated_at`
- **Orders**: `order_id`, `user_id`, `order_date`, `total_amount`, `status`
- **Payments**: `payment_id`, `order_id`, `payment_method`, `payment_status`, `transaction_date`
- **Reviews**: `review_id`, `user_id`, `product_id`, `rating`, `comment`, `review_date`
- **Categories**: `category_id`, `category_name`
- **Admin**: `admin_id`, `username`, `password`, `role`
- **Order Items**: `order_item_id`, `order_id`, `product_id`, `quantity`, `subtotal_price`

### Relationships
- Users place Orders.
- Orders have Payments.
- Orders contain Order Items.
- Users write Reviews.
- Products have Reviews.
- Products belong to Categories.
- Admin manages the system.

## Functional Requirements
1. **User Management**:
   - Register and log in.
   - Securely store user details.
   - Update profile information.

2. **Product Management**:
   - Add, update, and delete products.
   - Categorize products.
   - Each product should have a name, description, price, stock quantity, and category.

3. **Order Management**:
   - Place orders.
   - Generate unique order ID for each purchase.
   - View past orders.
   - Update order statuses (Pending, Shipped, Delivered, Cancelled).

4. **Payment Processing**:
   - Complete payment before order confirmation.
   - Store payment method and transaction details.
   - Update payment statuses.

5. **Review System**:
   - Leave ratings and comments on products.
   - Link reviews to specific users and products.
   - Manage (approve/delete) reviews.

6. **Admin Features**:
   - Manage users (view, delete accounts).
   - Manage product categories.
   - View all orders and payments.

7. **System Constraints**:
   - Handle concurrent user access.
   - Support ACID transactions.
   - Encrypt sensitive data for security.

## Setup Instructions
1. **Clone the repository**:
   ```bash
   git clone https://github.com/Usmanxta/Project-e-Commerce-Database.git
   cd ecommerce-database


