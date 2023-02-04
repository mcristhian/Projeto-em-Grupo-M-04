# 10 Jogadores que mais pontuaram por partida em ordem decrescente
SELECT teams.nickname as `Equipe`, players.player_name as `Jogador`, pts as `Pontos`
from games_details
inner join players on games_details.player_id = players.player_id
inner join teams on games_details.team_id = teams.team_id
order by `Pontos` desc
limit 10
