with

countries as (

    select * from {{ source('pos', 'country') }}

),

final as (

    select
        COUNTRY_ID,
        COUNTRY,
        ISO_CURRENCY,
        ISO_COUNTRY,
        CITY_ID,
        CITY,
        CITY_POPULATION
    from countries

)

select * from final