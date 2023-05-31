from random import randint
import csv
import pandas as pd

PATH = 'C:\\Users\\Shai\\Documents\\Homework\\DataBaseProject\\Pandas\\'
fields = ["YEAR_START", "YEAR_END", "TEAMID", "SPONSORID"]
nrand = []


def reset():
    for n in range(0, 500):
        nrand.append(n)


reset()

teams = []
with open(PATH + 'teams.csv', newline='') as teamfile:
    teamreader = csv.DictReader(teamfile)
    for row in teamreader:
        teams.append(row)


def pop_random():
    i = randint(1, len(nrand)) - 1
    swap = nrand[i]
    nrand[i] = nrand[0]
    nrand[0] = swap
    return nrand.pop(0)


def addend(ys):
    yend = int(ys + randint(0, 10) * randint(1, 4))
    if yend > 2027:
        return None
    else:
        return yend


def create_random_csv_data_for_sponsored_by():
    connections = []
    for l in range(0, 4):
        for r in range(0, 500):
            team = pop_random()
            ystart = int(teams[team]["found_year"])
            ystart = randint(ystart, 2017)
            yend = addend(ystart)
            connection = {
                fields[0]: ystart,
                fields[1]: yend,
                fields[2]: team,
                fields[3]: randint(0, 19000)}
            connections.append(connection)
        reset()
    team_ids = []
    sponsor_ids = []
    year_st = []
    year_end = []
    for c in connections:
        year_st.append(c[fields[0]])
        year_end.append(c[fields[1]])
        team_ids.append(c[fields[2]])
        sponsor_ids.append(c[fields[3]])
    data = {
        fields[0]: year_st,
        fields[1]: year_end,
        fields[2]: team_ids,
        fields[3]: sponsor_ids
    }
    dframe = pd.DataFrame(data)
    return dframe


df = create_random_csv_data_for_sponsored_by()
df.to_csv(PATH + "sponsored_by.csv", index=False)
