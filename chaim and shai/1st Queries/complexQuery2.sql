-- Stadiums with capacity over 1000 seats
-- That teams have the color Green on their uniform
-- and they have a sponsor that manufactures Cars that their contracts ended after the year 2000.
SELECT S.STADIUM_NAME, S.CITY
FROM CHASHKEN.STADIUM S
WHERE S.CAPACITY > 1000 
AND S.STADIUMID IN (SELECT T.STADIUMID
FROM CHASHKEN.TEAM T
WHERE (T.COLOR1 = 'Green'
OR T.COLOR2 = 'Green')
AND T.TEAMID IN (SELECT SB.TEAMID
FROM CHASHKEN.SPONSORED_BY SB
WHERE SB.YEAR_END > 2000
AND SB.SPONSORID IN (SELECT SP.SPONSORID
FROM CHASHKEN.SPONSOR SP
WHERE SP.PRODUCT = 'Car')));
