with

order_headers as (

    select * from {{ source('pos', 'order_header') }}

),

final as (

    select
        ORDER_ID,
        TRUCK_ID,
        LOCATION_ID,
        CUSTOMER_ID,
        DISCOUNT_ID,
        SHIFT_ID,
        SHIFT_START_TIME,
        SHIFT_END_TIME,
        ORDER_CHANNEL,
        ORDER_TS,
        SERVED_TS,
        ORDER_CURRENCY,
        ORDER_AMOUNT,
        ORDER_TAX_AMOUNT,
        ORDER_DISCOUNT_AMOUNT,
        ORDER_TOTAL
    from order_headers

)

select * from final