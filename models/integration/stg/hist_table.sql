{{
    config(
        materialized="table",transient=false
    )
}}


    select c_custkey,
    c_name,
    c_address,
    c_phone
from {{ source('my_project', 'customer') }}