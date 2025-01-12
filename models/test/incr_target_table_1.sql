{{ 
    config(
        alias='incr_target_table_1',  
        schema='raw',  
        materialized='incremental',
        incremental_strategy='append'  
    )  
        }}

select * from {{ source('raw', 'incr_source_1') }}