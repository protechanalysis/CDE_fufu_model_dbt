{{ config(materialized='table') }}


--- creating sales fact
select p.order_id, o.outlet_id, p.id as payment_id, payment_date, sum(o.amount) as amount
from {{ ref('dim_payment')}} as p
join {{ ref('dim_order')}} as o
using(order_id)
group by 1, 2, 3, 4