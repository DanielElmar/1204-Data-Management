SELECT dataset.dateRep AS "date",

       SUM(deaths) OVER (
        ORDER BY Dates.year, Dates.month, Dates.day
        ROWS BETWEEN
            UNBOUNDED PRECEDING
            AND CURRENT ROW
        ) AS "cumulative UK deaths",

       SUM(cases) OVER (
        ORDER BY Dates.year, Dates.month, Dates.day
        ROWS BETWEEN
            UNBOUNDED PRECEDING
            AND CURRENT ROW
        ) AS "cumulative UK cases"

FROM dataset INNER JOIN Dates on dataset.dateRep = Dates.dateRep
Where dataset.geoId="UK"
GROUP BY dataset.dateRep ORDER BY Dates.year, Dates.month, Dates.day;