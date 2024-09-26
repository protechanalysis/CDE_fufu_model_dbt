--- creating staging model for outlet

with fufU_outlet as (
    select *
    from {{ source('modeling_fufu', 'outlet') }}
),

outleting as (
    select * from fufU_outlet
)

select *
from outleting