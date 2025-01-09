{{ config(
    materialized='incremental',
    unique_key='EmployeeID'
) }}

SELECT 
    EmployeeID, 
    Name, 
    Salary
FROM {{ source('my_project', 'employee') }}

{% if is_incremental() %}
    WHERE EmployeeID > (SELECT MAX(EmployeeID) FROM {{ this }})
{% endif %}