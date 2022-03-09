SELECT DISTINCT(province) AS code, province_name AS province FROM dev_pizzastore.datafiniti 
INNER JOIN dev_pizzastore.province_data
ON dev_pizzastore.datafiniti.province = dev_pizzastore.province_data.province_code
ORDER BY code ASC