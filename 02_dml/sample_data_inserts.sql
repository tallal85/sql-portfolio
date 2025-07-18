-- Insert sample data into Customers, Products, and Orders
INSERT INTO SalesDW.Customers (CustomerID, FirstName, LastName, Email)
VALUES 
(1, 'John', 'Doe', 'john.doe@email.com'),
(2, 'Jane', 'Smith', 'jane.smith@email.com');

INSERT INTO SalesDW.Products (ProductID, ProductName, Category, Price)
VALUES 
(101, 'Laptop', 'Electronics', 1200.00),
(102, 'Headphones', 'Electronics', 150.00);

INSERT INTO SalesDW.Orders (OrderID, CustomerID, ProductID, OrderDate, Quantity)
VALUES 
(1001, 1, 101, '2025-07-01', 1),
(1002, 2, 102, '2025-07-02', 2);
