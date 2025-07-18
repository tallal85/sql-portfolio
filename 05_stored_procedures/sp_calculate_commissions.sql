-- Stored procedure: calculate monthly commissions for sales reps
CREATE OR ALTER PROCEDURE SalesDW.sp_CalculateCommissions (@Month INT, @Year INT)
AS
BEGIN
    SELECT 
        c.CustomerID,
        SUM(o.Quantity * p.Price) * 0.05 AS Commission
    FROM SalesDW.Orders o
    JOIN SalesDW.Products p ON o.ProductID = p.ProductID
    JOIN SalesDW.Customers c ON o.CustomerID = c.CustomerID
    WHERE MONTH(o.OrderDate) = @Month 
      AND YEAR(o.OrderDate) = @Year
    GROUP BY c.CustomerID;
END;
