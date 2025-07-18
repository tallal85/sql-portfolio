-- Incremental load: insert only new orders from Staging
INSERT INTO SalesDW.Orders (OrderID, CustomerID, ProductID, OrderDate, Quantity)
SELECT s.OrderID, s.CustomerID, s.ProductID, s.OrderDate, s.Quantity
FROM Staging.Orders s
LEFT JOIN SalesDW.Orders dw ON s.OrderID = dw.OrderID
WHERE dw.OrderID IS NULL;-- Placeholder for incremental_load_example.sql
