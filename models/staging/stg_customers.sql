-- CI Test: Adding a comment to check trigger logic
with

source as (

    select * from {{ ref( 'raw_customers') }}

),

renamed as (

    select

        ----------  ids
        id as customer_id,

        ---------- text
        name as customer_name

    from source

)

select * from renamed
