create or replace view TEAM_PRODUCTS_IT as
  select s.city, t.TEAM_NAME, t.COLOR1, t.COLOR2
    from CHASHKEN.TEAM t inner join chashken.stadium s on s.stadiumid = t.stadiumid
    where s.country = 'Italy'
   
