with

trucks as (

    select * from {{ source('pos', 'truck') }}

),

final as (

    select
        TRUCK_ID,
        MENU_TYPE_ID,
        PRIMARY_CITY,
        REGION,
        ISO_REGION,
        COUNTRY,
        ISO_COUNTRY_CODE,
        FRANCHISE_FLAG,
        YEAR,
        MAKE,
        MODEL,
        EV_FLAG,
        FRANCHISE_ID,
        TRUCK_OPENING_DATE
    from trucks

)

select * from final