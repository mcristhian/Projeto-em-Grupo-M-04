# Número de vitória dos mandantes (1) e visitantes (0)
SELECT home_team_wins as `Resultado`,
case
	when home_team_wins = 1 then count(*)
	when home_team_wins = 0 then count(*)
end as `Vitórias`
from games
group by home_team_wins
