{{ 
    config(
        alias='my_view',  
        schema='raw',  
        materialized='view'  
    )  
        }}

select * from {{ source('jaffle_shop', 'orders') }}