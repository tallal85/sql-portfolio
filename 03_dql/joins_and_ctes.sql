-- Placeholder -- Total revenue per customer using CTE
WITH RevenueCTE AS (
    SELECT 
        c.CustomerID,
        c.FirstName,
        SUM(o.Quantity * p.Price) AS TotalRevenue
    FROM SalesDW.Orders o
    JOIN SalesDW.Customers c ON o.CustomerID = c.CustomerID
    JOIN SalesDW.Products p ON o.ProductID = p.ProductID
    GROUP BY c.CustomerID, c.FirstName
)
SELECT * FROM RevenueCTE
ORDER BY TotalRevenue DESC;for joins_and_ctes.sql
