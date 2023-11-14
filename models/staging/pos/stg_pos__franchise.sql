with

franchises as (

    select * from {{ source('pos', 'franchise') }}

),

final as (

    select
        FRANCHISE_ID,
        FIRST_NAME,
        LAST_NAME,
        CITY,
        COUNTRY,
        E_MAIL,
        PHONE_NUMBER
    from franchises

)

select * from final