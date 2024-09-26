--- creating staging model for orders

with ordering as (
    select *
    from {{ source('modeling_fufu','orders') }}
),


order_rename as (
    select *, subtotal as amount
    from ordering
),

order_select as (
    select order_id, menu_item_id as menu_id,
     outlet_id, order_type, 
     quantity, unit_price, amount, order_date
    from order_rename
)

select *
from order_select

