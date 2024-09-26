--- creating staging model for payment

with payment_info as (
    select *
    from {{ source('modeling_fufu', 'payment') }}
),

finals as (
    select *
    from payment_info
)

select *
from finals
