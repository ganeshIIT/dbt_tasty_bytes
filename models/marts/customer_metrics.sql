with 

customer_loyalty as(
    select * from {{ ref('stg_customer__customer_loyalty') }}
),

order_header as(
    select * from {{ ref('stg_pos__order_header') }}
),

final as (
SELECT 
    cl.customer_id,
    cl.city,
    cl.country,
    cl.first_name,
    cl.last_name,
    cl.phone_number,
    cl.e_mail,
    SUM(oh.order_total) AS total_sales,
    ARRAY_AGG(DISTINCT oh.location_id) AS visited_location_ids_array
FROM customer_loyalty cl
JOIN order_header oh ON cl.customer_id = oh.customer_id
GROUP BY 
    cl.customer_id, 
    cl.city, 
    cl.country, 
    cl.first_name,
    cl.last_name, 
    cl.phone_number, 
    cl.e_mail
)

select * from final