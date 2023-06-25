--teqams with sponsors from IL
SELECT t.Team_name, s.city, s.country, sr.sponsor_name, sr.pr_contact
FROM chashken.Stadium s
INNER JOIN chashken.Team t ON s.StadiumID = t.StadiumID
INNER JOIN chashken.sponsored_by sp ON t.TeamID = sp.TeamID
INNER JOIN chashken.Sponsor sr ON sp.SponsorID = sr.SponsorID
WHERE sr.office_address like '% IL %' and s.country = 'USA'
Order by t.team_name desc;
