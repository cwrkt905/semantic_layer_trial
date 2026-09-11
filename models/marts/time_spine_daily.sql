{{ config(materialized='table') }}

with dates as (

    select
        unnest(
            generate_series(
                current_date - interval '5 years',
                current_date + interval '5 years',
                interval '1 day'
            )
        )::date as date_day

)

select
    date_day

from dates