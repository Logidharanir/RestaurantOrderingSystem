# 🍽️ Restaurant Ordering System (MySQL)

This project is part of the **ARTTIFAI Tech Internship - MySQL Task 4**.  
It is a complete backend solution for managing a restaurant’s menu, customer orders, and stock handling using **MySQL**.

---

## 📌 Project Objectives

- Manage menu items (name, price, stock, category)
- Register customers and handle order placements
- Track order details, payment status, and order totals
- Automatically reduce stock after each order (optional trigger)
- Generate reports for sales, order tracking, and inventory

---

## 🧾 Database Structure

The system includes the following tables:

- **Menu** – Item ID, name, price, category, stock quantity
- **Customers** – Customer details including contact and email
- **Orders** – Order metadata (customer, date, total, status)
- **OrderDetails** – Detailed list of items per order

---

## ⚙️ How to Run This Project

### 🖥️ MySQL Workbench (Recommended)
1. Open `RestaurantOrderingSystem.sql` in MySQL Workbench
2. Select all (Ctrl+A) and click the ⚡ **Execute** button
3. All tables and sample data will be created

### 🌐 phpMyAdmin (via XAMPP)
1. Install [XAMPP](https://www.apachefriends.org/index.html)
2. Start Apache and MySQL
3. Go to [http://localhost/phpmyadmin](http://localhost/phpmyadmin)
4. Create a database (e.g., `RestaurantDB`)
5. Import or paste the SQL script and execute

---

## 🍕 Sample Data

### 📋 Menu Table
| ItemID | ItemName           | Price | Category | StockQuantity |
|--------|--------------------|-------|----------|----------------|
| 101    | Margherita Pizza   | 300   | Pizza    | 10             |
| 102    | Cheeseburger       | 250   | Burger   | 15             |
| 103    | Pasta Alfredo      | 400   | Pasta    | 8              |

### 👤 Customers Table
| CustomerID | Name          | PhoneNumber | Email             |
|------------|---------------|-------------|-------------------|
| 1          | Rahul Sharma  | 9876543210  | rahul@gmail.com   |
| 2          | Pooja Nair    | 9123456789  | pooja@gmail.com   |

### 🧾 Orders Table
| OrderID | CustomerID | OrderDate   | TotalAmount | Status     |
|---------|------------|-------------|-------------|------------|
| 5001    | 1          | 2025-03-25  | 550         | Delivered  |
| 5002    | 2          | 2025-03-26  | 400         | Pending    |

### 📦 OrderDetails Table
| OrderID | ItemID | Quantity | Subtotal |
|---------|--------|----------|----------|
| 5001    | 101    | 1        | 300      |
| 5001    | 102    | 1        | 250      |

---

## 🔍 Example Queries

```sql
-- Show full menu
SELECT * FROM Menu;

-- Show all orders
SELECT * FROM Orders;

-- View customer info
SELECT * FROM Customers;

-- View items in an order
SELECT * FROM OrderDetails WHERE OrderID = 5001;
