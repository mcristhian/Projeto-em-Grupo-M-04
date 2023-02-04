# Qual é a porcentagem de vitória dos times por confederação?
select ranking.conference, avg(ranking.w_pct)
from ranking
group by ranking.conference
