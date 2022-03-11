{% macro get_restaurant_category(column) %}
    CASE
        WHEN {{ column }} = 3 THEN 'Newly established restaurant. (3 year)'
        WHEN {{ column }} IN (4, 5) THEN 'Middle aged restaurant. (4 to 5 years)'
        WHEN {{ column }} IN (6, 7) THEN 'Old restaurant. (6 to 7 years)'
        WHEN {{ column }} = 8 THEN 'Aged restaurant. (8 years)'
    END
{% endmacro %}