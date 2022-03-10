WITH CTE_province_data AS
(SELECT DISTINCT(dev_pizzastore.province_data.city) AS province_name, province AS province_code 
FROM dev_pizzastore.datafiniti 
INNER JOIN dev_pizzastore.province_data
ON dev_pizzastore.datafiniti.province = dev_pizzastore.province_data.state_code
ORDER BY province_name
)

SELECT * FROM CTE_province_data