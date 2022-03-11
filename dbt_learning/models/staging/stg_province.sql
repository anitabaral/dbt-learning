with province_info as(

    select 
     
        province as province_name,
        state_code

    
    from {{ source('fastfood', 'province')}}    
)

select * from province_info