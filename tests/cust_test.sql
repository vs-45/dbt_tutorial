SELECT *
FROM {{ ref('customers') }}
WHERE CUSTOMER_ID < 1