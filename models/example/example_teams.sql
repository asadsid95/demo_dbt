with teams as (

    select
        'team1' as team

    union all

    select
        'team2' as team

    union all

    select
        'team3' as team

    union all

    select
        'team4' as team

)

select * from teams