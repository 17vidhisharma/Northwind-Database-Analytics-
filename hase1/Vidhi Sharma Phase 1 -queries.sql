CREATE TEMP TABLE ProductSales AS
SELECT 
    p.ProductID,
    p.ProductName,
    c.CategoryID,
    c.CategoryName,
    SUM("Order Details".Quantity) AS UnitsSold,
    ROUND(SUM("Order Details".UnitPrice * "Order Details".Quantity), 2) AS TotalSales
FROM 
    "Order Details"
JOIN 
    Products p ON "Order Details".ProductID = p.ProductID
JOIN 
    Categories c ON p.CategoryID = c.CategoryID
GROUP BY 
    p.ProductID, p.ProductName, c.CategoryID, c.CategoryName;
    
--------------------------------------------------------------------------

SELECT 
    ps1.ProductID,
    ps1.ProductName,
    ps1.CategoryName,
    ps1.UnitsSold,
    ps1.TotalSales,
    (
        SELECT COUNT(*) + 1
        FROM ProductSales ps2
        WHERE ps2.CategoryID = ps1.CategoryID
        AND ps2.TotalSales > ps1.TotalSales
    ) AS CategoryRank
FROM 
    ProductSales ps1
ORDER BY 
    ps1.CategoryName, CategoryRank;
    
DROP TABLE IF EXISTS ProductSales;


CREATE TEMP TABLE ProductSales AS
SELECT 
    p.ProductID,
    p.ProductName,
    c.CategoryID,
    c.CategoryName,
    SUM("Order Details".Quantity) AS UnitsSold,
    ROUND(SUM("Order Details".UnitPrice * "Order Details".Quantity), 2) AS TotalSales
FROM 
    "Order Details"
JOIN 
    Products p ON "Order Details".ProductID = p.ProductID
JOIN 
    Categories c ON p.CategoryID = c.CategoryID
GROUP BY 
    p.ProductID, p.ProductName, c.CategoryID, c.CategoryName;





SELECT 
    ps1.ProductID,
    ps1.ProductName,
    ps1.CategoryName,
    ps1.UnitsSold,
    ps1.TotalSales,
    (
        SELECT COUNT(1) + 1
        FROM ProductSales ps2
        WHERE ps2.CategoryID = ps1.CategoryID
        AND ps2.TotalSales > ps1.TotalSales
    ) AS CategoryRank
FROM 
    ProductSales ps1
WHERE 
    (
        SELECT COUNT(1)
        FROM ProductSales ps2
        WHERE ps2.CategoryID = ps1.CategoryID
        AND ps2.TotalSales > ps1.TotalSales
    ) < 3
ORDER BY 
    ps1.CategoryName,
    CategoryRank;
