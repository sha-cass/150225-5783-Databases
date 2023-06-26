select s.city, t.team_name, t.color1, t.color2
from chashken.team t
inner join chashken.stadium s on t.stadiumid = s.stadiumid
where s.country = 'Germany' and team_victories(t.teamid) > team_loses(t.teamid)
