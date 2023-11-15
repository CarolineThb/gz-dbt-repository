with 

source as (

    select * from {{ source('raw', 'cc_parcel') }}

),

renamed as (

    select
        parcel_id AS parcel_id,
        parcel_tracking AS parcel_tracking,
        transporter AS transporter,
        priority AS priority,
        PARSE_DATE('%b %d, %Y',Date_purCHase) AS date_purchase,
        PARSE_DATE('%b %d, %Y',Date_sHIpping) AS date_shipping,
        PARSE_DATE('%b %d, %Y',DATE_delivery) AS date_delivery,
        PARSE_DATE('%b %d, %Y',DaTeCANcelled) AS date_cancelled,
        EXTRACT (MONTH FROM PARSE_DATE('%b %d, %Y',Date_purCHase)) AS month_purchase,

    from source

)

select * from renamed
