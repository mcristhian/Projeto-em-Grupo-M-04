# Lista dos times por número de jogadores em ordem decrescente
select teams.nickname as `Equipe`, count(*) as `Número de jogadores`
from players
inner join teams on players.team_id = teams.team_id
group by teams.team_id
order by `Número de jogadores` desc
