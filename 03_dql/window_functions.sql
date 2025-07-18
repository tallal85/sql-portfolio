-- Ranking customers by total revenue using window functions
SELECT 
    c.CustomerID,
    c.FirstName,
    SUM(o.Quantity * p.Price) AS TotalRevenue,
    RANK() OVER (ORDER BY SUM(o.Quantity * p.Price) DESC) AS RevenueRank,
    ROW_NUMBER() OVER (ORDER BY SUM(o.Quantity * p.Price) DESC) AS RevenueRowNumber
FROM SalesDW.Orders o
JOIN SalesDW.Customers c ON o.CustomerID = c.CustomerID
JOIN SalesDW.Products p ON o.ProductID = p.ProductID
GROUP BY c.CustomerID, c.FirstName;-- Placeholder for window_functions.sql
