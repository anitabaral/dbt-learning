select 
    date_added, 
    date_updated
from {{ ref('stg_restaurants') }}
where date_added>date_updated