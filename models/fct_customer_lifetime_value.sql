select
    c.CUST_ID,
    sum(e.TOTAL_AMOUNT) as lifetime_value,
    count(e.ORDER_ID) as total_orders
from {{ ref('customers') }} c
join {{ ref('int_completed_orders') }} e
    on c.CUST_ID = e.CUSTOMER_ID
group by c.CUST_ID