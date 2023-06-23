create or replace view owners as
  select t.owner, st.stadium_name, st.capacity
    from CHASHKEN.TEAM t
    inner join chashken.stadium st on st.stadiumid = t.stadiumid
    where st.country = 'USA'
