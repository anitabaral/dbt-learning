{{ config(
    materialized="view"
)}}

with restaurant_info as (
    select * from {{ ref('stg_restaurants') }}
), 

restaurant_count as (
    select 
    restaurant_name,
    count(restaurant_name) as total_restaurant_branches    
    from restaurant_info
    group by restaurant_name
    order by count(restaurant_name) asc

),

highly_recognized_restaurants as (
    select restaurant_name, total_restaurant_branches
    from restaurant_count
    where total_restaurant_branches > 10
)

select * from highly_recognized_restaurants
