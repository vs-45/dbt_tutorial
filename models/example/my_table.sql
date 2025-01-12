{{ 
    config(
        alias='my_table',  
        schema='raw',  
        materialized='table'  
    )  
        }}

select * from {{ source('jaffle_shop', 'orders') }}