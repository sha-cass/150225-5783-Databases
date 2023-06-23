select t.found_year, count(*) as c
from chashken.team t
group by t.found_year
order by c
