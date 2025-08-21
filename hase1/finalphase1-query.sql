
/* ===============================================
   MET AD 599 – Final Project: Phase 1 (SQL Only)
   Team Members: Alissa Yang, Makenzie Howard, Vidhi Arun Sharma, Willie Watts
   =============================================== */


/* -----------------------------------------------
   Part 1 – Employee Sales Performance Analysis
   Author: Alissa Yang
   ----------------------------------------------- */

-- Calculates total sales per employee and ranks them based on performance
-- Insight: The top-performing employee is consistently surpassing others in total sales, indicating strong client relationships and effective upselling. 
-- There's a noticeable gap between the top two ranks, suggesting performance differences worth investigating further.

WITH EmployeeSales AS (
    SELECT 
        o.EmployeeID,
        e.FirstName || ' ' || e.LastName AS EmployeeName,
        ROUND(SUM(od.UnitPrice * od.Quantity * (1 - od.Discount)), 2) AS TotalSales
    FROM Orders o
    JOIN "Order Details" od ON o.OrderID = od.OrderID
    JOIN Employees e ON o.EmployeeID = e.EmployeeID
    GROUP BY o.EmployeeID
)
SELECT 
    EmployeeID,
    EmployeeName,
    TotalSales,
    RANK() OVER (ORDER BY TotalSales DESC) AS SalesRank
FROM EmployeeSales;


/* -----------------------------------------------
   Part 2 – Monthly Sales Trend Analysis
   Author: Makenzie Howard
   ----------------------------------------------- */

-- Calculates total monthly sales and month-over-month growth
-- Insight: The company experiences significant fluctuations in monthly sales, with sharp spikes often followed by steep declines. These patterns likely reflect seasonal product demand, holiday surges, and post-holiday slowdowns.

WITH MonthlySales AS (
    SELECT 
        STRFTIME('%Y-%m', O.OrderDate) AS YearMonth,
        SUM(OD.UnitPrice * OD.Quantity * (1 - OD.Discount)) AS TotalSales
    FROM [Order Details] OD
    JOIN Orders O ON OD.OrderID = O.OrderID
    GROUP BY YearMonth
)

SELECT 
    YearMonth,
    TotalSales,
    ROUND(((TotalSales - LAG(TotalSales) OVER (ORDER BY YearMonth)) / 
           LAG(TotalSales) OVER (ORDER BY YearMonth)) * 100, 2) AS MoMGrowthPercent
FROM MonthlySales
ORDER BY YearMonth;


/* -----------------------------------------------
   Part 3 – Product Sales Ranking by Category
   Author: Vidhi Arun Sharma
   ----------------------------------------------- */

-- Creates a temp table of product-level sales with category info
-- Ranks products within each category by total sales
-- Insight: Within each category, top-selling products dominate sales by a wide margin. Notably, premium beverages and condiments show particularly high sales volumes, 
-- making them ideal candidates for expanded marketing or bundling strategies.

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
JOIN Products p ON "Order Details".ProductID = p.ProductID
JOIN Categories c ON p.CategoryID = c.CategoryID
GROUP BY 
    p.ProductID, p.ProductName, c.CategoryID, c.CategoryName;

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


/* -----------------------------------------------
   Part 4 – Customer Purchase Behavior Analysis
   Author: Willie Watts
   ----------------------------------------------- */

-- Calculates average order value per customer and ranks them
-- Insight: High-ranking customers place fewer but more expensive orders. These clients represent ideal targets for loyalty programs and tailored promotions to drive repeat business.

WITH CustomerAverages AS (
  SELECT
    o.CustomerID,
    SUM(od.UnitPrice * od.Quantity * (1 - od.Discount)) AS OrderTotal
  FROM Orders o
  JOIN [Order Details] od ON o.OrderID = od.OrderID
  GROUP BY o.OrderID
),
Ranked AS (
  SELECT
    c.CustomerID,
    c.CompanyName,
    ROUND(AVG(ca.OrderTotal), 2) AS AvgOrderValue,
    RANK() OVER (ORDER BY AVG(ca.OrderTotal) DESC) AS Rank
  FROM Customers c
  JOIN CustomerAverages ca ON c.CustomerID = ca.CustomerID
  GROUP BY c.CustomerID, c.CompanyName
)
SELECT *
FROM Ranked
WHERE Rank IN (2, 3, 5, 8, 12, 15, 17)
ORDER BY Rank;