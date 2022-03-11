with restaurant_info as(

    select 
     
        province as province_code,
        name as restaurant_name,
        date_added,
        date_updated
            
    from {{ source('fastfood', 'restaurants')}}    
)

select * from restaurant_info