--teqams with sponsors from IL
SELECT s.city, t.Team_name
FROM chashken.Stadium s
INNER JOIN chashken.Team t ON s.StadiumID = t.StadiumID
INNER JOIN chashken.sponsored_by sp ON t.TeamID = sp.TeamID
INNER JOIN chashken.Sponsor sr ON sp.SponsorID = sr.SponsorID
WHERE sr.office_address like '% IL %' and s.country = 'USA'
Order by t.team_name desc;
