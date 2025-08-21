SELECT
c.CustomerID,
c.CompanyName,
ROUND(AVG(ot.OrderTotal), 2) AS AverageOrderValue
FROM Customers AS c
JOIN (
SELECT 
o.CustomerID,
SUM(od.UnitPrice * od.Quantity * (1 - od.Discount)) AS OrderTotal
FROM [Order Details] AS od
JOIN Orders AS o
ON od.OrderID = o.OrderID
GROUP BY o.OrderID
) AS ot
ON c.CustomerID = ot.CustomerID
GROUP BY
c.CustomerID,
c.CompanyName
ORDER BY 
AverageOrderValue DESC;

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