INSERT INTO CountryPopulation(
countriesAndTerritories,
popData2019) 
SELECT distinct 
countriesAndTerritories, 
popData2019
FROM dataset;

INSERT INTO Countries(
geoId,
countriesAndTerritories,
countryterritoryCode,
continentExp)
SELECT distinct 
geoId,
countriesAndTerritories,
countryterritoryCode,
continentExp
FROM dataset;

INSERT INTO Dates(
dateRep,
day,
month,
year)
SELECT distinct 
dateRep,
day,
month,
year
FROM dataset;