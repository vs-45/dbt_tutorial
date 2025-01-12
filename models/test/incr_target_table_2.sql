{{ 
    config(
        alias='incr_target_table_2',  
        schema='raw',  
        materialized='incremental',
        incremental_strategy='merge',
        unique_key = 'id'  
    )  
        }}


WITH source_data AS (
    SELECT *
    FROM {{ source('jaffle_shop', 'incr_source_2') }}
)


SELECT *
FROM source_data