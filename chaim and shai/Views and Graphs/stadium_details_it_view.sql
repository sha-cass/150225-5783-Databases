create or replace view stadium_details_it as
  select s.city, t.TEAM_NAME, s.capacity, s.owner
    from CHASHKEN.TEAM t inner join chashken.stadium s on s.stadiumid = t.stadiumid
    where s.country = 'Italy'
   
