CREATE TABLE Judge
(
  ID INT NOT NULL,
  Fname VARCHAR(10) NOT NULL,
  Lname VARCHAR(10) NOT NULL,
  age INT NOT NULL,
  nationality VARCHAR(2) NOT NULL,
  experience INT NOT NULL,
  matches INT NOT NULL,
  PRIMARY KEY (ID)
);

CREATE TABLE Coach
(
  ID INT NOT NULL,
  Fname VARCHAR(10) NOT NULL,
  Lname VARCHAR(10) NOT NULL,
  age INT NOT NULL,
  nationality VARCHAR(2) NOT NULL,
  matches INT NOT NULL,
  win INT NOT NULL,
  losses INT NOT NULL,
  awards VARCHAR(20) NOT NULL,
  experience INT NOT NULL,
  PRIMARY KEY (ID)
);

CREATE TABLE Player
(
  Fname VARCHAR(10) NOT NULL,
  Lname VARCHAR(10) NOT NULL,
  ID INT NOT NULL,
  age INT NOT NULL,
  height NUMERIC NOT NULL,
  weight NUMERIC NOT NULL,
  nationality VARCHAR(2) NOT NULL,
  position VARCHAR(10) NOT NULL,
  number INT NOT NULL,
  matches INT NOT NULL,
  wins INT NOT NULL,
  losses INT NOT NULL,
  awards VARCHAR(20) NOT NULL,
  experience INT NOT NULL,
  ID INT NOT NULL,
  PRIMARY KEY (ID),
  FOREIGN KEY (ID) REFERENCES Coach(ID)
);