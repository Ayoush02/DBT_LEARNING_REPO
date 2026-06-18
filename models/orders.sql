with source as (
    select * from {{ source('raw_src', 'ORDERS') }}
)
select 
    ID AS ORDER_ID,
    CUSTOMER_ID,
    STATUS,
    ORDER_DATE, 
    TOTAL_AMOUNT,
    CREATED_AT,
    UPDATED_AT
from source