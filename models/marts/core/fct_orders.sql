{{ config(materialized='ephemeral') }}

with orders as (
select * from {{ref('stg_orders')}}

),

payments as (
    select * from {{ref('stg_payments')}}
)

select 
orders.order_id as order_id,
customer_id,
amount
from orders left join payments on orders.order_id = payments.order_id