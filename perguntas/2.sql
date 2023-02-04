# Equipes ordenadas por ano de ingresso na NBA em ordem crescente
select nickname as `Equipe`, min_year as `Ano de ingresso`
from teams
order by `Ano de ingresso` asc
