create or replace function TEAM_VICTORIES(TEAMID NUMBER) return number is
  FunctionResult number;
begin
  select count(*)
  into FunctionResult
  from akorman.gameteamstats gs
  where gs.teamid = TEAMID and gs.iswin = 1;
  return(FunctionResult);
end TEAM_VICTORIES;
/
