--Find all countries that have teams that have sponsors that ended in the same year they started
SELECT st.country, count(distinct t.teamid) as teams_count
from stadium st
inner join team t on st.stadiumid = t.stadiumid
inner join sponsored_by sp on t.teamid = sp.teamid
inner join sponsor s on sp.sponsorid = s.sponsorid
where  sp.year_end = sp.year_start
group by st.country
order by teams_count desc;
