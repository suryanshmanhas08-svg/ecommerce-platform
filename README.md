# Online E-Commerce Platform

A desktop e-commerce application built with **Java Swing** and **MySQL (JDBC)**. Sellers list products, buyers purchase them, and administrators manage the system. Each role gets its own dashboard.

## Team

| Name | Role |
|---|---|
| [Your Name] | Team Lead and Developer |

College: [College name]

## Features

- **Admin:** view and manage users, products and orders.
- **Seller:** list products, update inventory, view orders for their products, low-stock alerts.
- **Buyer:** search and browse products, place orders, track order status.

## Technologies

- Java (JDK 17 or newer)
- Java Swing (GUI)
- MySQL 8 (XAMPP) with JDBC (MySQL Connector/J)
- Git and GitHub

## Java Concepts Demonstrated

| Concept | Where it is used |
|---|---|
| Inheritance and polymorphism | Abstract `User` class extended by `Admin`, `Seller` and `Buyer` |
| Interfaces | `Dashboard` interface implemented by `User` |
| Exception handling | Custom `OutOfStockException`; try/catch around all database calls |
| Collections and generics | `List<Product>`, `List<Order>`, `List<String>` |
| Multithreading and synchronization | `synchronized` order placement; background `LowStockMonitor` thread |
| Database classes | `ProductDAO`, `OrderDAO`, `UserDAO` |
| JDBC | `DBConnection` class and `PreparedStatement` queries |

## Project Structure

```
ecommerce-platform/
├── README.md
├── .gitignore
└── ecommerce/
    ├── database/
    │   └── schema.sql          # tables and sample data
    ├── lib/
    │   └── mysql-connector-j-x.x.x.jar
    └── src/
        ├── model/              # User, Admin, Seller, Buyer, Product, Order, Dashboard
        ├── dao/                # UserDAO, ProductDAO, OrderDAO
        ├── util/               # DBConnection, LowStockMonitor
        ├── exception/          # OutOfStockException
        ├── ui/                 # LoginFrame, DashboardFrame
        └── main/               # Main (entry point), TestDao
```

## Requirements

- JDK 17 or newer
- XAMPP (MySQL) or any MySQL 8 server
- MySQL Connector/J jar (MySQL driver)
- IntelliJ IDEA or Eclipse

## Setup

1. Clone the repository:
```
   git clone https://github.com/<your-username>/ecommerce-platform.git
```
2. Start **MySQL** in XAMPP and open phpMyAdmin.
3. Open the **SQL** tab, paste the contents of `ecommerce/database/schema.sql`, and click **Go**. This creates the `ecommerce` database, its tables and the sample users.
4. Open the `ecommerce` folder in your IDE.
5. Add the MySQL Connector/J jar as a library (IntelliJ: right-click the jar in `lib`, then **Add as Library**).
6. If your MySQL root user has a password, set it in `src/util/DBConnection.java`.

## How to Run

Run `src/main/Main.java` from your IDE. The login window opens.

## Sample Logins

| Role | Email | Password |
|---|---|---|
| Admin | admin@shop.com | admin123 |
| Seller | meera@shop.com | seller123 |
| Buyer | aarav@shop.com | buyer123 |

## Database Tables

- `users` (id, name, email, password, role)
- `products` (id, name, description, price, stock, seller_id)
- `orders` (id, buyer_id, product_id, quantity, status, order_date)

## Screenshots

[Add screenshots of the login, admin, seller and buyer screens here.]

## Future Improvements

Shopping cart, payment integration, product images, wishlist and sales charts.
