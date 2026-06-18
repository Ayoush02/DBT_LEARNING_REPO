with source as (
    select * from {{ source('raw_src', 'CUSTOMERS') }}
)

SELECT 
	ID CUST_ID,
	NAME AS CUST_NAME,
	EMAIL AS CUST_EMAIL,
	REGION,
	CREATED_AT,
	UPDATED_AT
FROM source