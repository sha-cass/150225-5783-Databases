select get_team_city(t.teamid), t.team_name, get_team_average(t.teamid) as average, team_victories(t.teamid)-team_loses(t.teamid) as wins
from chashken.team t
