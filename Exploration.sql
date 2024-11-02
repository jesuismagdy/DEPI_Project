--What is the total sales amount for each product in the Products table?
SELECT p.ProductName, SUM(od.Sales) AS TotalSales
FROM Products p
JOIN OrderDetails od ON p.ProductID = od.ProductID
GROUP BY p.ProductName;

--How many orders were placed by each customer?
SELECT c.CustomerName, COUNT(o.OrderID) AS NumberOfOrders
FROM Customers c
LEFT JOIN Orders o ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerName;

--What are the top 5 products by total profit?
SELECT p.ProductName, SUM(od.Profit) AS TotalProfit
FROM Products p
JOIN OrderDetails od ON p.ProductID = od.ProductID
GROUP BY p.ProductName
ORDER BY TotalProfit DESC
OFFSET 0 ROWS FETCH NEXT 5 ROWS ONLY;