# Primeiros 5 times visitantes que mais pontuaram em uma partida
SELECT teams.nickname as `Equipe`, games.pts_away as `Pontos`
from games
inner join teams on games.visitor_team_id = teams.team_id
order by `Pontos` desc
limit 5
