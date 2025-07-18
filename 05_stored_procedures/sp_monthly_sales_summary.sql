-- Stored procedure: monthly sales summary by product category
CREATE OR ALTER PROCEDURE SalesDW.sp_MonthlySalesSummary (@Month INT, @Year INT)
AS
BEGIN
    SELECT 
        p.Category,
        SUM(o.Quantity * p.Price) AS TotalSales
    FROM SalesDW.Orders o
    JOIN SalesDW.Products p ON o.ProductID = p.ProductID
    WHERE MONTH(o.OrderDate) = @Month 
      AND YEAR(o.OrderDate) = @Year
    GROUP BY p.Category;
END;
