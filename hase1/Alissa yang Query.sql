SELECT 
    o.EmployeeID,
    e.FirstName || ' ' || e.LastName AS EmployeeName,
    ROUND(SUM(od.UnitPrice * od.Quantity * (1 - od.Discount)), 2) AS TotalSales
FROM Orders o
JOIN "Order Details" od ON o.OrderID = od.OrderID
JOIN Employees e ON o.EmployeeID = e.EmployeeID
GROUP BY o.EmployeeID;


WITH EmployeeSales AS (
    SELECT 
        o.EmployeeID,
        e.FirstName || ' ' || e.LastName AS EmployeeName,
        ROUND(SUM(od.UnitPrice * od.Quantity * (1 - od.Discount)), 2) AS TotalSales
    FROM orders o
    JOIN "order details" od ON o.OrderID = od.OrderID
    JOIN employees e ON o.EmployeeID = e.EmployeeID
    GROUP BY o.EmployeeID
)
SELECT 
    EmployeeID,
    EmployeeName,
    TotalSales,
    RANK() OVER (ORDER BY TotalSales DESC) AS SalesRank
FROM EmployeeSales;