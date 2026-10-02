-- View All Customers
SELECT * FROM customers;

-- Total Customers
SELECT COUNT(*) AS Total_Customers
FROM customers;

-- Male vs Female Customers
SELECT Gender, COUNT(*) AS Total
FROM customers
GROUP BY Gender;

-- Average Age\
SELECT ROUND(AVG(Age),2) AS Average_Age
FROM customers;

-- Average Income
SELECT ROUND(AVG(Income),2) AS Average_Income
FROM customers;

-- Average Spending Score
SELECT ROUND(AVG(Score),2) AS Average_Spending
FROM customers;

-- Top 10 Highest Income Customers
SELECT *
FROM customers
ORDER BY Income DESC
LIMIT 10;

-- Top 10 Highest Spending Customers
SELECT *
FROM customers
ORDER BY Score DESC
LIMIT 10;

-- Customers Below Age 25
SELECT *
FROM customers
WHERE Age < 25;

-- Customers Above Age 50
SELECT *
FROM customers
WHERE Age > 50;

-- Income Groups
SELECT
CASE
WHEN Income < 40 THEN 'Low'
WHEN Income BETWEEN 40 AND 70 THEN 'Medium'
ELSE 'High'
END AS Income_Group,
COUNT(*) AS Customers
FROM customers
GROUP BY Income_Group;

-- Spending Groups
SELECT
CASE
WHEN Score < 40 THEN 'Low'
WHEN Score BETWEEN 40 AND 70 THEN 'Medium'
ELSE 'High'
END AS Spending_Group,
COUNT(*) AS Customers
FROM customers
GROUP BY Spending_Group;

-- Gender-wise Average Income
SELECT
Gender,
ROUND(AVG(Income),2) AS Average_Income
FROM customers
GROUP BY Gender;

-- Gender-wise Spending
SELECT
Gender,
ROUND(AVG(Score),2) AS Average_Spending
FROM customers
GROUP BY Gender;

-- VIP Customers
SELECT *
FROM customers
WHERE Income > 70
AND Score > 70;