{% test is_city1_team(model, column_name) %}

with validation as (

    select
        {{ column_name }} as city

    from {{ model }}

),

validation_errors as (

    select
        city

    from validation

    where city != 'city1'

)

select *
from validation_errors

{% endtest %}