create or replace function get_team_average(teamid in number) return number is
  FunctionResult number;
begin
  select average
  into FunctionResult
  from (select gs.teamid as team, avg(gs.score) as average
  from akorman.gameteamstats gs
  where teamid = gs.teamid and not gs.iswin = 1
  group by gs.teamid)
  where  team = teamid;
  return(FunctionResult);
end get_team_average;
/
