--FIND TEAM WITHOUT SPONSOR
SELECT T1.team_name, S1.city FROM chashken.team T1, chashken.stadium S1 where T1.STADIUMID=S1.STADIUMID
and T1.TEAMID not in (SELECT T1.TEAMID FROM CHASHKEN.SPONSORED_BY SB WHERE T1.TEAMID=SB.TEAMID);
