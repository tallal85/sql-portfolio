-- Indexed view to improve reporting performance

CREATE VIEW SalesDW.vw_TotalSalesPerCategory
WITH SCHEMABINDING
AS
SELECT 
    p.Category,
    SUM(o.Quantity * p.Price) AS TotalSales,
    COUNT_BIG(*) AS CountRows
FROM SalesDW.Orders o
JOIN SalesDW.Products p ON o.ProductID = p.ProductID
GROUP BY p.Category;

-- Create a clustered index on the view
CREATE UNIQUE CLUSTERED INDEX IX_vw_TotalSalesPerCategory
ON SalesDW.vw_TotalSalesPerCategory(Category);-- Placeholder for indexed_views_performance.sql
