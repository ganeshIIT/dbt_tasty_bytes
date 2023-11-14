with

trucks as (

    select * from {{ source('pos', 'truck') }}

),

final as (

    select
        TRUCK_ID::NUMBER(38,0),
        MENU_TYPE_ID::NUMBER(38,0),
        PRIMARY_CITY::VARCHAR(16777216),
        REGION::VARCHAR(16777216),
        ISO_REGION::VARCHAR(16777216),
        COUNTRY::VARCHAR(16777216),
        ISO_COUNTRY_CODE::VARCHAR(16777216),
        FRANCHISE_FLAG::NUMBER(38,0),
        YEAR::NUMBER(38,0),
        MAKE::VARCHAR(16777216),
        MODEL::VARCHAR(16777216),
        EV_FLAG::NUMBER(38,0),
        FRANCHISE_ID::NUMBER(38,0),
        TRUCK_OPENING_DATE::DATE
    from trucks

)

select * from final