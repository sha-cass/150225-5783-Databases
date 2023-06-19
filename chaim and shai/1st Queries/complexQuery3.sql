-- SPONSORS THAT SPONSOR AT LEAST 2 TEAMS WITH MORE RUNNING CONTRACTS THAN TEAMS THAT HAVE EXPIRED CONTRACTS
SELECT S.SPONSOR_NAME, COUNT(SP.TEAMID) AS TEAMS_COUNT
FROM CHASHKEN.SPONSOR S
INNER JOIN CHASHKEN.SPONSORED_BY SP ON S.SPONSORID = SP.SPONSORID
WHERE (SELECT COUNT(TEAMID) FROM CHASHKEN.SPONSORED_BY WHERE SPONSORID = S.SPONSORID AND YEAR_END IS NOT NULL) <
      (SELECT COUNT(TEAMID) FROM CHASHKEN.SPONSORED_BY WHERE SPONSORID = S.SPONSORID AND YEAR_END IS NULL)
GROUP BY S.SPONSOR_NAME, S.SPONSORID
HAVING COUNT(SP.TEAMID) >= 2
ORDER BY TEAMS_COUNT DESC;
