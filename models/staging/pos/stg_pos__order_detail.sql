with

order_details as (

    select * from {{ source('pos', 'order_detail') }}

),

final as (

    select
        ORDER_DETAIL_ID,
        ORDER_ID,
        MENU_ITEM_ID,
        DISCOUNT_ID,
        LINE_NUMBER,
        QUANTITY,
        UNIT_PRICE,
        PRICE,
        ORDER_ITEM_DISCOUNT_AMOUNT
    from order_details

)

select * from final