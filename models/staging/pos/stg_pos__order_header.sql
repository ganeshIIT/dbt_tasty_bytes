with

order_headers as (

    select * from {{ source('pos', 'order_header') }}

),

final as (

    select
        ORDER_ID::NUMBER(38,0),
        TRUCK_ID::NUMBER(38,0),
        LOCATION_ID::FLOAT,
        CUSTOMER_ID::NUMBER(38,0),
        DISCOUNT_ID::VARCHAR(16777216),
        SHIFT_ID::NUMBER(38,0),
        SHIFT_START_TIME::TIME(9),
        SHIFT_END_TIME::TIME(9),
        ORDER_CHANNEL::VARCHAR(16777216),
        ORDER_TS::TIMESTAMP_NTZ(9),
        SERVED_TS::VARCHAR(16777216),
        ORDER_CURRENCY::VARCHAR(3),
        ORDER_AMOUNT::NUMBER(38,4),
        ORDER_TAX_AMOUNT::VARCHAR(16777216),
        ORDER_DISCOUNT_AMOUNT::VARCHAR(16777216),
        ORDER_TOTAL::NUMBER(38,4)
    from order_headers

)

select * from final