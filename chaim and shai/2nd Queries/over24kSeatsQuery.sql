select s.stadium_name, s.capacity, s.city, s.country, t.team_name 
from stadium s
inner join team t on s.stadiumid = t.stadiumid
where s.capacity >= 24000
order by s.capacity desc;
