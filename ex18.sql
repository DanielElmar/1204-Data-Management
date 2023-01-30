SELECT Countries.countriesAndTerritories AS "country name",
       cast(sum(deaths) as real) / cast(sum(cases) as real) AS "% deaths of country cases"
FROM dataset INNER JOIN Countries on dataset.geoId = Countries.geoId
GROUP BY Countries.countriesAndTerritories ORDER BY "% deaths of country cases" desc LIMIT 10;