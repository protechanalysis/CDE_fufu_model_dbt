with ordering as (
    select *
    from {{ source('modeling_fufu','orders') }}
),

final as (
    select *, subtotal as amount
    from ordering
)

select order_id, menu_item_id, outlet_id, order_type, quantity, amount, 
    cast(order_date as datetime)
from final

