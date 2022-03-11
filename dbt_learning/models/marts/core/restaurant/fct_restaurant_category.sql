{{ config(
    materialized="table"
)}}

with restaurant_table as (
    select * from {{ ref('int_restaurant_age') }}
),

restaurant_category as (

    select restaurant_name,
        restaurant_age,
        ({{ get_restaurant_category('restaurant_age') }}) as restaurant_category

    from restaurant_table
)

select * from restaurant_category