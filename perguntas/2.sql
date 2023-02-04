# Equipes ordenadas por ano de ingresso na NBA em ordem crescente
select nickname, min_year
from teams
order by min_year asc