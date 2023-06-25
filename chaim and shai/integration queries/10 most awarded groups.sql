select t.team_name,s.country, count(*) as AwardCount
from team t
join akorman.awards a on a.winnerid = t.teamid and a.isteam = 1
join stadium s on t.stadiumID = s.stadiumid
group by t.team_name, s.country
order by AwardCount DESC
fetch first 10 rows only;
