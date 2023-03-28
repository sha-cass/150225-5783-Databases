CREATE TABLE Team
(
  Team_name VARCHAR(20) NOT NULL,
  Manager VARCHAR(20) NOT NULL,
  Found_year INT NOT NULL,
  Coach VARCHAR(20) NOT NULL,
  Team_location VARCHAR(20) NOT NULL,
  Stadium VARCHAR(20) NOT NULL,
  Owner VARCHAR(20) NOT NULL,
  Colors VARCHAR(20) NOT NULL,
  Stadium_name VARCHAR(20) NOT NULL,
  PRIMARY KEY (Team_name),
  UNIQUE(Team_location),
  FOREIGN KEY (Stadium_name) REFERENCES Stadium(Stadium_name)
);

CREATE TABLE Stadium
(
  Stadium_name VARCHAR(20) NOT NULL,
  Capacity INT NOT NULL,
  Stadium_address VARCHAR(20) NOT NULL,
  Owner VARCHAR(20) NOT NULL,
  Maintenance_manager VARCHAR(20) NOT NULL,
  Found_year INT NOT NULL,
  PRIMARY KEY (Stadium_name),
  UNIQUE (Stadium_address)
);

CREATE TABLE Sponsor
(
  Sponsor_name VARCHAR(20) NOT NULL, 
  Product VARCHAR(20) NOT NULL,
  Trademark INT NOT NULL,
  Office_address VARCHAR(20) NOT NULL,
  PR_contact VARCHAR(20) NOT NULL,
  PRIMARY KEY (Trademark)
);

CREATE TABLE Sponsored_by
(
  Team_name VARCHAR(20) NOT NULL,
  Trademark INT NOT NULL,
  PRIMARY KEY (Team_name, Trademark),
  FOREIGN KEY (Team_name) REFERENCES Team(Team_name),
  FOREIGN KEY (Trademark) REFERENCES Sponsor(Trademark)
);


