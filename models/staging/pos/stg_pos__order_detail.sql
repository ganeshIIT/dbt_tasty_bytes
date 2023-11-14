with

order_details as (

    select * from {{ source('pos', 'order_detail') }}

),

final as (

    select
        ORDER_DETAIL_ID::NUMBER(38,0),
        ORDER_ID::NUMBER(38,0),
        MENU_ITEM_ID::NUMBER(38,0),
        DISCOUNT_ID::VARCHAR(16777216),
        LINE_NUMBER::NUMBER(38,0),
        QUANTITY::NUMBER(5,0),
        UNIT_PRICE::NUMBER(38,4),
        PRICE::NUMBER(38,4),
        ORDER_ITEM_DISCOUNT_AMOUNT::VARCHAR(16777216)
    from order_details

)

select * from final