-- Задание 2.1: Создание представления по регионам
CREATE VIEW v_region_sales_summary AS
SELECT 
    Region,
    COUNT(*) AS Sales_Count,
    SUM(Unit_Price * Quantity_Sold * (1 - Discount)) AS Total_Revenue
FROM 
    sales
GROUP BY 
    Region
ORDER BY 
    Total_Revenue DESC;
