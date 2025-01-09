{{ config(
    materialized='incremental',
    unique_key='unique_id',
    incremental_strategy='delete+insert',
) }}

SELECT 
    dbt_utils.generate_uuid() as unique_id,
    EmployeeID,
    Name, 
    Salary
FROM {{ source('my_project', 'employee') }}

{% if is_incremental() %}
    WHERE EmployeeID > (SELECT MAX(EmployeeID) FROM {{ this }})
{% endif %} 
