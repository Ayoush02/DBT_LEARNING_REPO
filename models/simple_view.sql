{{
    config(
        materialized='view'
    )
}}

select * from {{ source('raw_src', 'CUSTOMERS') }}