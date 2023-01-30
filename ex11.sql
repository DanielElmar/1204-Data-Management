CREATE TABLE CountryPopulation(
countriesAndTerritories TEXT PRIMARY KEY,
popData2019 INTEGER
);


CREATE TABLE Countries(
geoId TEXT PRIMARY KEY,
countriesAndTerritories TEXT,
countryterritoryCode TEXT,
continentExp TEXT,
FOREIGN KEY(countriesAndTerritories) REFERENCES CountryPopulation(countriesAndTerritories)
);


CREATE TABLE Dates(
dateRep TEXT PRIMARY KEY,
day INTEGER,
month INTEGER,
year INTEGER
);
