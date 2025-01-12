{{ 
    config(
        alias='incr_target_table_1',  
        schema='raw',  
        materialized='incremental',
        incremental_strategy='append',
        unique_key = 'id'  
    )  
        }}

select * from {{ source('jaffle_shop', 'incr_source_1') }}

