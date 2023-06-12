CREATE TABLE Stadium
(
  Stadium_name VARCHAR(20)  NOT NULL,
  Capacity INT NOT NULL,
  country VARCHAR(20) NOT NULL,
  Owner VARCHAR(20) NOT NULL,
  Maintenance_manager VARCHAR(20) NOT NULL,
  Found_year INT NOT NULL,
  StadiumID INT NOT NULL,
  city VARCHAR(20) NOT NULL,
  PRIMARY KEY (StadiumID)
);

CREATE TABLE Sponsor
(
  Sponsor_name VARCHAR(60) NOT NULL,
  Product VARCHAR(60),
  Trademark CHAR(10),
  Office_address VARCHAR(100) NOT NULL,
  PR_contact CHAR(10) NOT NULL,
  SponsorID INT NOT NULL,
  PRIMARY KEY (SponsorID)
);

CREATE TABLE Team
(
  Manager VARCHAR(25) NOT NULL,
  Team_name VARCHAR(20) NOT NULL,
  Found_year INT NOT NULL,
  Coach VARCHAR(25) NOT NULL,
  Owner VARCHAR(25) NOT NULL,
  Color1 VARCHAR(20) NOT NULL,
  Color2 VARCHAR(20),
  TeamID INT NOT NULL,
  StadiumID INT NOT NULL,
  PRIMARY KEY (TeamID),
  FOREIGN KEY (StadiumID) REFERENCES Stadium(StadiumID)
);

CREATE TABLE sponsored_by
(
  Year_start INT NOT NULL,
  Year_end INT,
  TeamID INT NOT NULL,
  SponsorID INT NOT NULL,
  PRIMARY KEY (TeamID, SponsorID),
  FOREIGN KEY (TeamID) REFERENCES Team(TeamID),
  FOREIGN KEY (SponsorID) REFERENCES Sponsor(SponsorID)
);
