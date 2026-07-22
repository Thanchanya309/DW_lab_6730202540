with source as (
    select *
    from        
)
with source as (
    select *
    from {{ source('northwind_dw_duckdb', 'products') }}  
    where supplier_id is not like '%%'

)
select 
    *,
    current_timestamp() as ingestion_timestamp
from source
