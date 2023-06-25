select t.team_name,s.country, round(avg(gts.score), 1) as AveragePoints
from team t
join akorman.games g on t.teamid = g.hometeamid or t.teamid = g.awayteamid
join akorman.gameteamstats gts on g.gameid = gts.gameid and t.teamid = gts.teamid
join stadium s on t.stadiumid = s.stadiumid
group by t.team_name, s.country
order by AveragePoints DESC
fetch first 10 rows only;
















