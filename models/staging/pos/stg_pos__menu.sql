with

menu as (

    select * from {{ source('pos', 'menu') }}

),

final as (

    select
        MENU_ID,
        MENU_TYPE_ID,
        MENU_TYPE,
        TRUCK_BRAND_NAME,
        MENU_ITEM_ID,
        MENU_ITEM_NAME,
        ITEM_CATEGORY,
        ITEM_SUBCATEGORY,
        COST_OF_GOODS_USD,
        SALE_PRICE_USD,
        MENU_ITEM_HEALTH_METRICS_OBJ
    from menu

)

select * from final