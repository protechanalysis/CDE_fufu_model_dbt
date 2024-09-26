{{ config(materialized='table') }}


--- creating dim model for menu as table
select *
from {{ ref('stg_menu')}}