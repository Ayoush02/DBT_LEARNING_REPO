{{
    config(
        materialized='ephemeral'
    )
}}

SELECT
    ORDER_ID,
    TO_DATE(CREATED_AT) AS ORDER_DATE,
    CUSTOMER_ID,
    TOTAL_AMOUNT,
    STATUS 
FROM {{ ref('orders') }}
WHERE STATUS = 'COMPLETED'
