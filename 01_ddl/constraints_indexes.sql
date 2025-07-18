-- Add constraints and indexes
CREATE UNIQUE INDEX IX_Customers_Email ON SalesDW.Customers(Email);
CREATE INDEX IX_Orders_OrderDate ON SalesDW.Orders(OrderDate);
