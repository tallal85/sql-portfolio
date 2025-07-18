-- Delete inactive customers
DELETE FROM SalesDW.Customers
WHERE IsActive = 0;
