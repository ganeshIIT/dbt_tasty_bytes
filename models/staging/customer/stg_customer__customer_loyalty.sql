with

customers as (

    select * from {{ source('customer', 'customer_loyalty') }}

),

final as (

    select
        CUSTOMER_ID::NUMBER(38,0),
        FIRST_NAME::VARCHAR(16777216),
        LAST_NAME::VARCHAR(16777216),
        CITY::VARCHAR(16777216),
        COUNTRY::VARCHAR(16777216),
        POSTAL_CODE::VARCHAR(16777216),
        PREFERRED_LANGUAGE::VARCHAR(16777216),
        GENDER::VARCHAR(16777216),
        FAVOURITE_BRAND::VARCHAR(16777216),
        MARITAL_STATUS::VARCHAR(16777216),
        CHILDREN_COUNT::VARCHAR(16777216),
        SIGN_UP_DATE::DATE,
        BIRTHDAY_DATE::DATE,
        E_MAIL::VARCHAR(16777216),
        PHONE_NUMBER::VARCHAR(16777216)

    from customers

)

select * from final