# mysql-ecommerce-project
# 🛒 MySQL eCommerce Database Project

This is a beginner-friendly **MySQL database project** that simulates an eCommerce platform. It models core business operations including customers, products, orders, and payments. Ideal for practicing SQL development, queries, and reporting.

---

## 📌 Project Goals

- Design and implement a normalized eCommerce database schema
- Populate tables with realistic sample data
- Write SQL queries for common business and analytical use cases
- Practice stored procedures, joins, aggregates, and CTEs

---

## 🧱 Database Schema

### 1. `Customers`
Stores customer information.
- `customer_id` (PK)
- `name`
- `email`
- `address`
- `city`

### 2. `Products`
Stores product catalog.
- `product_id` (PK)
- `product_name`
- `category`
- `price`

### 3. `Orders`
Tracks customer orders.
- `order_id` (PK)
- `customer_id` (FK)
- `order_date`
- `total_amount`

### 4. `OrderDetails`
Line items in each order.
- `order_detail_id` (PK)
- `order_id` (FK)
- `product_id` (FK)
- `quantity`

### 5. `Payments`
Stores payment information.
- `payment_id` (PK)
- `order_id` (FK)
- `payment_date`
- `payment_method`
- `amount_paid`

---

## 💾 Sample Data

Includes 50–100 records across tables:
- Diverse customers and cities
- Multiple product categories (Electronics, Clothing, etc.)
- Orders with varying dates and totals
- Payments via different methods (UPI, Card, Cash)

---

## 🔍 Key SQL Queries & Features

- 📈 Total sales by product/category/month
- 💰 Top 5 customers by spending
- 🧾 Orders with total amounts
- ⏳ Payments made by method and date
- ❓ Customers with no orders (LEFT JOIN practice)
- 📊 Monthly revenue trend
- 🧠 CTE: Products with average order quantity > 3
- 🛠️ Stored procedure to retrieve orders by customer or date

---

## 🧑‍💻 About Me

I'm transitioning from a non-IT background into the tech industry, focusing on **SQL Development** and **Software Testing**.  
This project showcases my hands-on experience with relational database design and data analytics using SQL.

---

## 📁 Project Structure

mysql-ecommerce-project/
│
├── ecommerce_schema.sql # All CREATE TABLE statements
├── ecommerce_sample_data.sql # INSERT sample records
├── ecommerce_queries.sql # All analytical queries and procedures
