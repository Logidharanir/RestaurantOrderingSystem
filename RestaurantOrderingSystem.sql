
-- Restaurant Ordering System SQL Script

-- Menu Table
CREATE TABLE Menu (
    ItemID INT PRIMARY KEY,
    ItemName VARCHAR(100),
    Price DECIMAL(10, 2),
    Category VARCHAR(50),
    StockQuantity INT
);

-- Customers Table
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100),
    PhoneNumber VARCHAR(15),
    Email VARCHAR(100)
);

-- Orders Table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY AUTO_INCREMENT,
    CustomerID INT,
    OrderDate DATE,
    TotalAmount DECIMAL(10, 2),
    Status VARCHAR(20),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

-- Order Details Table
CREATE TABLE OrderDetails (
    OrderID INT,
    ItemID INT,
    Quantity INT,
    Subtotal DECIMAL(10, 2),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ItemID) REFERENCES Menu(ItemID)
);

-- Sample Menu Items
INSERT INTO Menu (ItemID, ItemName, Price, Category, StockQuantity) VALUES
(101, 'Margherita Pizza', 300, 'Pizza', 10),
(102, 'Cheeseburger', 250, 'Burger', 15),
(103, 'Pasta Alfredo', 400, 'Pasta', 8);

-- Sample Customers
INSERT INTO Customers (Name, PhoneNumber, Email) VALUES
('Rahul Sharma', '9876543210', 'rahul@gmail.com'),
('Pooja Nair', '9123456789', 'pooja@gmail.com');

-- Sample Orders
INSERT INTO Orders (CustomerID, OrderDate, TotalAmount, Status) VALUES
(1, '2025-03-25', 550, 'Delivered'),
(2, '2025-03-26', 400, 'Pending');

-- Sample Order Details
INSERT INTO OrderDetails (OrderID, ItemID, Quantity, Subtotal) VALUES
(5001, 101, 1, 300),
(5001, 102, 1, 250);

-- Optional Reports (run separately)
-- SELECT * FROM Menu;
-- SELECT * FROM Orders;
-- SELECT * FROM Customers;
-- SELECT * FROM OrderDetails;
