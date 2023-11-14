with

franchises as (

    select * from {{ source('pos', 'franchise') }}

),

final as (

    select
        FRANCHISE_ID::NUMBER(38,0),
        FIRST_NAME::VARCHAR(16777216),
        LAST_NAME::VARCHAR(16777216),
        CITY::VARCHAR(16777216),
        COUNTRY::VARCHAR(16777216),
        E_MAIL::VARCHAR(16777216),
        PHONE_NUMBER::VARCHAR(16777216)
    from franchises

)

select * from final