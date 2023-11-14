with

menu as (

    select * from {{ source('pos', 'menu') }}

),

final as (

    select
        MENU_ID::NUMBER(19,0),
        MENU_TYPE_ID::NUMBER(38,0),
        MENU_TYPE::VARCHAR(16777216),
        TRUCK_BRAND_NAME::VARCHAR(16777216),
        MENU_ITEM_ID::NUMBER(38,0),
        MENU_ITEM_NAME::VARCHAR(16777216),
        ITEM_CATEGORY::VARCHAR(16777216),
        ITEM_SUBCATEGORY::VARCHAR(16777216),
        COST_OF_GOODS_USD::NUMBER(38,4),
        SALE_PRICE_USD::NUMBER(38,4),
        MENU_ITEM_HEALTH_METRICS_OBJ::VARIANT
    from menu

)

select * from final