-- Create tables in SalesDW schema
CREATE TABLE SalesDW.Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    IsActive BIT DEFAULT 1
);

CREATE TABLE SalesDW.Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Category VARCHAR(50),
    Price DECIMAL(10,2)
);

CREATE TABLE SalesDW.Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT REFERENCES SalesDW.Customers(CustomerID),
    ProductID INT REFERENCES SalesDW.Products(ProductID),
    OrderDate DATE,
    Quantity INT,
    TotalAmount AS (Quantity * (SELECT Price FROM SalesDW.Products WHERE Products.ProductID = Orders.ProductID)) PERSISTED
);
