select country, sponsor_name, sponsorid, pr_contact, count(teamid) as TEAMS
from teamsponsorshipview
where country = 'USA' or country = 'Canada'
group by country, sponsor_name, sponsorid, pr_contact
having count (teamid) <= 2
order by country, TEAMS;
