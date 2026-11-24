{{
    config(
        materialized = 'ephemeral',
    )
}}

WITH hosts AS
(
    select
        HOST_ID,
        HOST_NAME,
        HOST_SINCE,
        IS_SUPERHOST,
        RESPONSE_RATE_QUALITY,
        HOST_CREATED_AT
    from
        {{ ref('obt') }}

)
SELECT * from hosts