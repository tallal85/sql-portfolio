-- Example star schema: DimDate, DimCustomer, and FactSales tables

CREATE TABLE SalesDW.DimDate (
    DateKey INT PRIMARY KEY,
    FullDate DATE,
    Month INT,
    Year INT
);

CREATE TABLE SalesDW.DimCustomer (
    CustomerKey INT PRIMARY KEY,
    CustomerName VARCHAR(100)
);

CREATE TABLE SalesDW.FactSales (
    SalesKey INT PRIMARY KEY,
    DateKey INT REFERENCES SalesDW.DimDate(DateKey),
    CustomerKey INT REFERENCES SalesDW.DimCustomer(CustomerKey),
    TotalSales DECIMAL(12,2)
);-- Placeholder for star_schema_example.sql
