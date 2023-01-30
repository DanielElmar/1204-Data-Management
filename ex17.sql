SELECT Countries.countriesAndTerritories AS country,
       cast(sum(cases) as real) / cast (CountryPopulation.popData2019 as real) AS "% cases of population",
       cast(sum(deaths) as real) / cast (CountryPopulation.popData2019 as real) AS "% deaths of population"
FROM dataset INNER JOIN Countries on dataset.geoId = Countries.geoId INNER JOIN CountryPopulation on CountryPopulation.countriesAndTerritories = Countries.countriesAndTerritories
GROUP BY Countries.countriesAndTerritories;