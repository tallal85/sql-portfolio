-- Example query for SSIS data flow (daily incremental load)
SELECT OrderID, CustomerID, ProductID, OrderDate, Quantity
FROM SalesDW.Orders
WHERE OrderDate >= DATEADD(DAY, -1, GETDATE());
