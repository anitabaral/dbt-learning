{{ config(
    materialized="view"
)}}

with restaurant_info as (
    select * from {{ ref('stg_restaurants') }}
), 

restaurant_table as (
        
        select 
            restaurant_name,
            {{ get_restaurant_age('date_added') }} as restaurant_age 
        
        from restaurant_info
)

select * from restaurant_table