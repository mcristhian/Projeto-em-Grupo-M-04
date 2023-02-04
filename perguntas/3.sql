# Soma das cestas de 3 pontos de cada equipe por ordem decrescente
select teams.nickname as Equipe, sum(games_details.fg3m) as Soma 
from games_details 
inner join teams on games_details.team_id = teams.team_id 
group by teams.nickname 
order by Soma desc;
