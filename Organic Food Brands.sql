CREATE TABLE food_brands (
         brand_id INT PRIMARY KEY, 
         brand_name VARCHAR(100), 
         category VARCHAR(100)
     );
     INSERT INTO food_brands VALUES 
         (1, 'Organic India', 'Organic'), 
         (2, 'Patanjali', 'Health'), 
         (3, 'Dabur', 'Organic');


SELECT * FROM FOOD_BRANDS


SELECT BRAND_NAME
FROM FOOD_BRANDS
WHERE CATEGORY = 'Organic'
