{{
  config(
    materialized= 'view'
  )
}}
SELECT currency_code,conversion_rate, 100*conversion_rate as Indian_100_rupees
FROM {{ ref('currency_conversion') }} 