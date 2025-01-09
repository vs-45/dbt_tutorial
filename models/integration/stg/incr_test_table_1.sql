{{
    config(
    materialized='incremental',
    unique_key='EmployeeID',
    )
}}
--- append, merge(update-insert),delete+insert

    select EmployeeID, Name,Salary
from {{ source('my_project', 'employee') }}

{% if is_incremental() %}
  -- this filter will only be applied on incremental runs
  AND EmployeeID > (SELECT MAX(EmployeeID) FROM {{ this }}) 
{% endif %}