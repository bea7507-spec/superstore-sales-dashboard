# Calculate Core Executive KPIs
SELECT 
    ROUND(SUM(sales), 2) AS total_revenue,
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND((SUM(profit) / SUM(sales)) * 100, 2) AS overall_margin_pct,
    COUNT(DISTINCT order_id) AS total_orders
FROM
    sales_analysed;

# Identify the Top 5 Most Unprofitable Products
SELECT 
    product_name,
    category,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_loss
FROM
    sales_analysed
GROUP BY product_name , category
HAVING SUM(profit) < 0
ORDER BY total_loss ASC
LIMIT 5;

# Analyze Discount Impact on Profitability
SELECT 
    discount,
    COUNT(order_id) AS order_count,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND((SUM(profit) / SUM(sales)) * 100, 2) AS margin_pct
FROM
    sales_analysed
GROUP BY discount
ORDER BY discount ASC;