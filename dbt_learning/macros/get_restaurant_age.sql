{% macro get_restaurant_age(column) %}
    extract(year from age(now(), {{ column }}))  
{% endmacro %}

            
