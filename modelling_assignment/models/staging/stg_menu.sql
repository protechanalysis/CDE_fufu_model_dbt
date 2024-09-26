--- creating staging model for menu

with menu_list as (
    select *
    from {{ source('modeling_fufu','menu') }}
),

final as (
    select id, name, description, base_price as price, outlet_id
    from menu_list
)

select *
from final