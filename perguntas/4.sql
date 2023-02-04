# Lista dos times por número de jogadores em ordem decrescente
select teams.nickname, count(*) as Total
from players
inner join teams on players.team_id = teams.team_id
group by teams.team_id
order by Total desc
