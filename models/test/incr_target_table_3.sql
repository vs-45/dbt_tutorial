{{ 
    config(
        alias='incr_target_table_3',  
        schema='raw',  
        materialized='incremental',
        incremental_strategy='delete+insert',
        unique_key = 'id'  
    )  
        }}


WITH source_data AS (
    SELECT *
    FROM {{ source('jaffle_shop', 'incr_source_3') }}
)


SELECT *
FROM source_data