
[General]
Version=1

[Preferences]
Username=
Password=2902
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=CHASHKEN
Name=STADIUM
Count=500

[Record]
Name=STADIUM_NAME
Type=VARCHAR2
Size=20
Data=Company
Master=

[Record]
Name=CAPACITY
Type=NUMBER
Size=
Data=Random(2000, 25000)
Master=

[Record]
Name=COUNTRY
Type=VARCHAR2
Size=20
Data=Country
Master=

[Record]
Name=OWNER
Type=VARCHAR2
Size=20
Data=FirstName +' ' + LastName
Master=

[Record]
Name=MAINTENANCE_MANAGER
Type=VARCHAR2
Size=20
Data=FirstName +' ' + LastName
Master=

[Record]
Name=FOUND_YEAR
Type=NUMBER
Size=
Data=Random(1968, 2015)
Master=

[Record]
Name=STADIUMID
Type=NUMBER
Size=
Data=Sequence(1, 1, WithinParent)
Master=

[Record]
Name=CITY
Type=VARCHAR2
Size=20
Data=City
Master=

