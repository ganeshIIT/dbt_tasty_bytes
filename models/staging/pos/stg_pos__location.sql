with

locations as (

    select * from {{ source('pos', 'location') }}

),

final as (

    select
        LOCATION_ID::NUMBER(19,0),
        PLACEKEY::VARCHAR(16777216),
        LOCATION::VARCHAR(16777216),
        CITY::VARCHAR(16777216),
        REGION::VARCHAR(16777216),
        ISO_COUNTRY_CODE::VARCHAR(16777216),
        COUNTRY::VARCHAR(16777216)
    from locations

)

select * from final