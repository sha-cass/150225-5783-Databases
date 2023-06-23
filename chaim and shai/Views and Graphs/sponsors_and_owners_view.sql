create or replace view sponsors_and_owners as
  select sp.sponsor_name, sp.office_address, sp.pr_contact, t.owner
    from CHASHKEN.TEAM t
    inner join chashken.stadium st on st.stadiumid = t.stadiumid
    inner join chashken.sponsored_by sb on sb.teamid = t.teamid
    inner join chashken.sponsor sp on sb.sponsorid = sp.sponsorid
    where st.country = 'USA'
   
