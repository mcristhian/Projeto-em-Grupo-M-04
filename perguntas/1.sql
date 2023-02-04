# Qual é a porcentagem de vitória dos times por confederação?
select ranking.conference as `Confederação`, avg(ranking.w_pct) as `Porcentagem`
from ranking
group by ranking.conference
