select country, sponsor_name, sponsorid, team_name, teamid, year_start, year_end
from teamsponsorshipview
where country = 'Israel' and (year_end >=2000 or year_end = null)
order by(sponsor_name);
