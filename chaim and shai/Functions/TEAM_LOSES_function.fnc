create or replace function TEAM_LOSES(TEAMID NUMBER) return number is
  FunctionResult number;
begin
  select victories
  into FunctionResult
  from (select gs.teamid as team, count(*) as victories
  from akorman.gameteamstats gs
  where teamid = gs.teamid and not gs.iswin = 1
  group by gs.teamid)
  where  team = teamid;
  return(FunctionResult);
end TEAM_LOSES;
/
