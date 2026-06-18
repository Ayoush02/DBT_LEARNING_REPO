with source as (
    select * from {{ source('raw_src', 'PRODUCTS') }}
)
SELECT 
    ID AS PRODUCT_ID,
	NAME,
	CATEGORY,
	PRICE 
FROM SOURCE