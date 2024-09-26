{{ config(materialized='table') }}


--- creating dim model for outlet as table
select *
from {{ ref('stg_outlet')}}