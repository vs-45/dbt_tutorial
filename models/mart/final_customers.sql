{{ 
    config
        (transient=false, 
         materialized="table", 
         dist="CUSTOMER_ID") 
         }}


select * from {{ref("stg_customers")}}
