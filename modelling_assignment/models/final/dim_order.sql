{{ config(materialized='table') }}


--- creating dim model for order as a table
select *
from {{ ref('stg_order')}}