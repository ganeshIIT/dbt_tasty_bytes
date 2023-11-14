with 

customer_loyalty as(
    select * from {{ ref('stg_customer__customer_loyalty') }}
),

order_header as(
    select * from {{ ref('stg_pos__order_header') }}
),

order_detail as(
    select * from {{ ref('stg_pos__order_detail') }}
),

truck as(
    select * from {{ ref('stg_pos__truck') }}
),

menu as(
    select * from {{ ref('stg_pos__menu') }}
),

franchise as(
    select * from {{ ref('stg_pos__franchise') }}
),

location as(
    select * from {{ ref('stg_pos__location') }}
),

final as (
    SELECT 
        oh.order_id,
        oh.truck_id,
        oh.order_ts,
        od.order_detail_id,
        od.line_number,
        m.truck_brand_name,
        m.menu_type,
        t.primary_city,
        t.region,
        t.country,
        t.franchise_flag,
        t.franchise_id,
        f.first_name AS franchisee_first_name,
        f.last_name AS franchisee_last_name,
        l.location_id,
        cl.customer_id,
        cl.first_name,
        cl.last_name,
        cl.e_mail,
        cl.phone_number,
        cl.children_count,
        cl.gender,
        cl.marital_status,
        od.menu_item_id,
        m.menu_item_name,
        od.quantity,
        od.unit_price,
        od.price,
        oh.order_amount,
        oh.order_tax_amount,
        oh.order_discount_amount,
        oh.order_total
    FROM order_detail od
    JOIN order_header oh ON od.order_id = oh.order_id
    JOIN truck t ON oh.truck_id = t.truck_id
    JOIN menu m ON od.menu_item_id = m.menu_item_id
    JOIN franchise f ON t.franchise_id = f.franchise_id
    JOIN location l ON oh.location_id = l.location_id
    LEFT JOIN customer_loyalty cl ON oh.customer_id = cl.customer_id
)

select * from final