DROP TABLE superstore;
CREATE TABLE superstore (
    Ship_Mode VARCHAR(50),
    Segment VARCHAR(50),
    Country VARCHAR(100),
    City VARCHAR(100),
    State VARCHAR(100),
    Postal_Code NUMERIC,
    Region VARCHAR(50),
    Category VARCHAR(50),
    Sub_Category VARCHAR(50),
    Sales NUMERIC(12,2),
    Quantity INTEGER,
    Discount NUMERIC(5,2),
    Profit NUMERIC(12,2),
    Customer_Name VARCHAR(100)
);

SELECT
    Category,
    SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY Category
ORDER BY Total_Sales DESC;