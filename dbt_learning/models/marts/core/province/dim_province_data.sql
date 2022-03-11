{{ config(
    materialized="table"
)}}

with province_info as (
    select * from {{ ref('stg_province') }}
), 

restaurant_info as (
    select * from {{ ref('stg_restaurants') }}
), 

province_and_code as (
    
    select 
        distinct(province_name), 
        province_code 
    
    from restaurant_info
    inner join province_info
    on province_code = state_code
    order by province_name asc
)

select * from province_and_code