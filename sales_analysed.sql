CREATE VIEW sales_analysed AS
    SELECT 
        order_id,
        order_date,
        region,
        category,
        sub_category,
        product_name,
        sales,
        profit,
        discount,
        (sales - profit) AS cost,
        CASE
            WHEN sales > 0 THEN (profit / sales) * 100
            ELSE 0
        END AS profit_margin_pct
    FROM
        sales_data;