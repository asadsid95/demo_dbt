with teams as (
    select * from {{ ref('example_teams')}}
),

team_locations as (

    select * from {{ ref('team_locations')}}
),

final as (
    
    select 
        teams.team,
        team_locations.city,
        team_locations.state,
        iff(teams.team = '{{ var('current_champion')}}', true, false) as is_champion
        -- cleaner way to write:
        -- teams.name = '{{var('current_champion')}}' as is_champion

    from teams

    left join team_locations
        on team_locations.name = teams.team
)

select * from final