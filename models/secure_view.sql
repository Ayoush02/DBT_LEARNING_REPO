{{
    config(
        materialized='view', secure=true
    )
}}

select * from {{ source('raw_src', 'CUSTOMERS') }}