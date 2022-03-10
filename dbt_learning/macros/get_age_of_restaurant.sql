{% macro get_age_of_restaurant(column) %}
    CASE
        WHEN EXTRACT(year FROM AGE(NOW(), date_added)) <= 4 THEN 'Newly established restaurant.'
        WHEN EXTRACT(year FROM AGE(NOW(), date_added)) IN (5, 6) THEN 'Middle aged restaurant.'
        WHEN EXTRACT(year FROM AGE(NOW(), date_added)) IN (7, 8) THEN 'Old restaurant.'
    END
{% endmacro %}