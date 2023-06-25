create or replace view teamsponsorshipview as
select t.TeamID, t.Team_name, st.country, s.SponsorID, sp.Sponsor_name, sp.pr_contact, s.Year_start, s.Year_end
from Team t
join sponsored_by s on t.TeamID = s.TeamID
join Sponsor sp on s.SponsorID = sp.SponsorID
join Stadium st on t.StadiumID = st.StadiumID;
