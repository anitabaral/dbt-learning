select 
    total_restaurant_branches
from {{ ref('fct_restaurant_count') }}
where total_restaurant_branches<10