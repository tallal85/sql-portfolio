-- Update customer status (mark inactive customers)
UPDATE SalesDW.Customers
SET IsActive = 0
WHERE CustomerID = 2;
