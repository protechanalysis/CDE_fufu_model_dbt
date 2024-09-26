{{ config(materialized='table') }}


--- creating dim model for payment as table
select *
from {{ ref('stg_payment')}}