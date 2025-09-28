-- Total Sales
SELECT SUM(Sales) AS Total_Sales FROM orders;

-- Average Profit by Category
SELECT Category, AVG(Profit) AS Average_Profit
FROM orders
GROUP BY Category;

-- Top 5 Products by Sales
SELECT Product_Name, SUM(Sales) AS Total_Sales
FROM orders
GROUP BY Product_Name
ORDER BY Total_Sales DESC
LIMIT 5;

-- Sales by Region
SELECT Region, SUM(Sales) AS Total_Sales
FROM orders
GROUP BY Region;

-- Monthly Sales Trend
SELECT DATE_FORMAT(Order_Date,'%Y-%m') AS Month, SUM(Sales) AS Total_Sales
FROM orders
GROUP BY Month
ORDER BY Month;
