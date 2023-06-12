--TEAMS IN ISRAEL
SELECT T1.team_name, S1.city FROM chashken.team T1, chashken.stadium S1 where T1.STADIUMID=S1.STADIUMID
AND S1.COUNTRY='Israel'
