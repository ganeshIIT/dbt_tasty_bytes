with

locations as (

    select * from {{ source('pos', 'location') }}

),

final as (

    select
        LOCATION_ID,
        PLACEKEY,
        LOCATION,
        CITY,
        REGION,
        ISO_COUNTRY_CODE,
        COUNTRY
    from locations

)

select * from final