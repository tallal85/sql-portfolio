-- Move products from staging area to SalesDW
INSERT INTO SalesDW.Products (ProductID, ProductName, Category, Price)
SELECT ProductID, ProductName, Category, Price
FROM Staging.Products;
