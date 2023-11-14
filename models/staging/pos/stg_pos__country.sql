with

countries as (

    select * from {{ source('pos', 'country') }}

),

final as (

    select
        COUNTRY_ID::NUMBER(18,0),
        COUNTRY::VARCHAR(16777216),
        ISO_CURRENCY::VARCHAR(3),
        ISO_COUNTRY::VARCHAR(2),
        CITY_ID::NUMBER(19,0),
        CITY::VARCHAR(16777216),
        CITY_POPULATION::VARCHAR(16777216)
    from countries

)

select * from final