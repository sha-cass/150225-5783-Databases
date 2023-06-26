create or replace function get_team_city(teamid in number) return varchar2 is
  FunctionResult varchar2(20);
begin
  select city
  into FunctionResult
  from (select s.city as city, t.teamid as team
  from chashken.stadium s
  inner join chashken.team t on s.stadiumid = t.teamid
  where teamid = t.teamid)
  where teamid = team;
  return(FunctionResult);
end get_team_city;
/
