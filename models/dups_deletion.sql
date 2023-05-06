{{config
    (materialized='table',
    alias='emp_curated')
}}

select * from RAW_DATA.EMP_RAW
qualify row_number() over(partition by id order by inserted_at desc) = 1