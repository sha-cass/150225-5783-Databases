SELECT g.gameid, g.gamedate, t1.Team_name AS HomeTeam,
       t2.Team_name AS AwayTeam, s.Stadium_name,
       gts1.score AS HomeScore, gts2.score AS AwayScore,
       CASE WHEN gts1.score > gts2.score THEN t1.Team_name
            WHEN gts1.score < gts2.score THEN t2.Team_name
            ELSE 'Draw' END AS WinningTeam
FROM AKORMAN.GAMES g
JOIN Team t1 ON g.hometeamid = t1.TeamID
JOIN Team t2 ON g.awayteamid = t2.TeamID
JOIN Stadium s ON g.locationid = s.StadiumID
JOIN AKORMAN.GAMETEAMSTATS gts1 ON g.gameid = gts1.gameid AND g.hometeamid = gts1.teamid
JOIN AKORMAN.GAMETEAMSTATS gts2 ON g.gameid = gts2.gameid AND g.awayteamid = gts2.teamid
WHERE g.gameid = (SELECT MIN(gameid) FROM AKORMAN.GAMES)
