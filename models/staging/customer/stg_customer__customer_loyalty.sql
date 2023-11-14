with

customers as (

    select * from {{ source('customer', 'customer_loyalty') }}

),

final as (

    select
        CUSTOMER_ID,
        FIRST_NAME,
        LAST_NAME,
        CITY,
        COUNTRY,
        POSTAL_CODE,
        PREFERRED_LANGUAGE,
        GENDER,
        FAVOURITE_BRAND,
        MARITAL_STATUS,
        CHILDREN_COUNT,
        SIGN_UP_DATE,
        BIRTHDAY_DATE,
        E_MAIL,
        PHONE_NUMBER

    from customers

)

select * from final