SELECT name as restaurant_name, 
EXTRACT( YEAR FROM age(NOW(), date_added )) as restaurant_age,  
{{ get_age_of_restaurant('date_added') }} as restaurant_category
FROM dev_pizzastore.datafiniti