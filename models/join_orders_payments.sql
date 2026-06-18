with orders as (
    select * from {{ ref('orders') }}
),
payments as (
    select * from {{ ref('payments') }}
)

select
    o.ORDER_ID,
    o.CUSTOMER_ID,
    o.STATUS,
    o.ORDER_DATE,
    o.TOTAL_AMOUNT,
    p.AMOUNT as PAYMENT_AMOUNT,
    p.PAYMENT_METHOD,
    p.PAYMENT_DATE
from orders o
left join payments p
    on o.ORDER_ID = p.ORDER_ID
