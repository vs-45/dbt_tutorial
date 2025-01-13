SELECT *
FROM {{ ref('source_customers') }}
WHERE CUSTOMER_ID < 1