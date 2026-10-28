# Trim Extra Spaces and Fix Casing
UPDATE sales_data
SET 
    `customer_name` = TRIM(`customer_name`),
    `City` = TRIM(`City`),
    `State` = TRIM(`State`),
    `Category` = TRIM(`Category`),
    `Sub_Category` = TRIM(`Sub_Category`),
    `Ship_Mode` = TRIM(`Ship_Mode`);
    
# -- Convert text format to standard MySQL date format
UPDATE sales_data
SET 
    `Order_Date` = STR_TO_DATE(`Order_Date`, '%d/%m/%Y'),
    `Ship_Date` = STR_TO_DATE(`Ship_Date`, '%d/%m/%Y');

-- Safely alter the column data types to DATE
ALTER TABLE sales_data
MODIFY COLUMN `Order_Date` DATE,
MODIFY COLUMN `Ship_Date` DATE;

# Handle Missing Values
UPDATE sales_data t1
JOIN sales_data t2 
  ON t1.City = t2.City 
  AND t1.State = t2.State
SET t1.`Postal_Code` = t2.`Postal_Code`
WHERE t1.`Postal_Code` IS NULL 
  AND t2.`Postal_Code` IS NOT NULL;
  
# Remove Duplicate Rows
DELETE FROM sales_data
WHERE `Row_ID` NOT IN (
    SELECT min_id FROM (
        SELECT MIN(`Row_ID`) AS min_id
        FROM sales_data
        GROUP BY `Order_ID`, `Product_ID`, `Customer_ID`, `Order_Date`
    ) AS temp
);

# Format Numeric Metrics
ALTER TABLE sales_data
MODIFY COLUMN `Sales` DECIMAL(10,2),
MODIFY COLUMN `Profit` DECIMAL(10,2),
MODIFY COLUMN `Discount` DECIMAL(4,2),
MODIFY COLUMN `Quantity` INT;