
-- Total revenue by category
SELECT Category, SUM(Units_Sold * Unit_Price) AS Total_Revenue
FROM ecommerce_sales
GROUP BY Category;

-- Monthly sales trend
SELECT DATE_TRUNC('month', Order_Date) AS Month, SUM(Revenue) AS Monthly_Revenue
FROM ecommerce_sales
GROUP BY Month
ORDER BY Month;

-- Top-performing regions by profit
SELECT Region, SUM(Profit) AS Total_Profit
FROM ecommerce_sales
GROUP BY Region
ORDER BY Total_Profit DESC;

-- Customer segment performance
SELECT Customer_Segment, COUNT(DISTINCT Order_ID) AS Orders, SUM(Revenue) AS Revenue
FROM ecommerce_sales
GROUP BY Customer_Segment;
