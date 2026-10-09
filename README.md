nline E-Commerce Platform

A desktop e-commerce application built with Java Swing and MySQL (JDBC). Sellers list products, buyers purchase them, and administrators manage the whole system. Each role has its own dashboard.

Team
Name	Role	Responsibility
[Name]	Team Lead	Class design (OOP), repository, README
[Name]	Developer	Database, DAO classes, exceptions
[Name]	Developer	Login screen, Admin dashboard
[Name]	Developer	Seller and Buyer dashboards, presentation
Features

Admin: manage users, manage all products, manage orders and their status. Seller: list products, update inventory, process orders, low-stock alerts. Buyer: search and browse products, place orders, track order status.

Technologies
Java (JDK 17 or newer)
Java Swing (GUI)
MySQL 8 (via XAMPP) and JDBC (MySQL Connector/J)
Git and GitHub
Java Concepts Demonstrated
Concept	Where
Inheritance and polymorphism	Abstract User extended by Admin, Seller, Buyer
Interfaces	Dashboard interface implemented by each role
Exception handling	Custom OutOfStockException; try/catch around all database calls
Collections and generics	List<Product>, Map, Set
Multithreading and synchronization	Synchronized stock update; background low-stock checker
Database classes	One DAO class per table (UserDAO, ProductDAO, OrderDAO)
JDBC	DBConnection class and PreparedStatement queries
Project Structure
ecommerce-platform/
├── README.md
├── .gitignore
└── ecommerce/
    ├── database/
    │   └── schema.sql        # tables and sample data
    ├── lib/
    │   └── mysql-connector-j-x.x.x.jar
    └── src/
        ├── model/            # User, Admin, Seller, Buyer, Product, Order
        ├── dao/              # database access classes
        ├── util/             # DBConnection
        ├── exception/        # custom exceptions
        └── main/             # entry point
Requirements
JDK 17 or newer
XAMPP (MySQL) or any MySQL 8 server
MySQL Connector/J jar (included in ecommerce/lib)
IntelliJ IDEA or Eclipse
Setup
Clone the repository:
   git clone https://github.com/<your-username>/ecommerce-platform.git
Start MySQL in XAMPP and open phpMyAdmin.
Open the SQL tab, paste the contents of ecommerce/database/schema.sql, and click Go. This creates the ecommerce database and sample users.
Open the ecommerce folder in your IDE.
Add the jar in lib/ to the project libraries (IntelliJ: right-click the jar, Add as Library).
If your MySQL has a password, update it in src/util/DBConnection.java.
How to Run

Run the main class in src/main from your IDE (the green run button).

Sample Logins
Role	Email	Password
Admin	admin@shop.com	admin123
Seller	meera@shop.com	seller123
Buyer	aarav@shop.com	buyer123
