

SELECT *
FROM   "AwsDataCatalog"."de_wine_raw"."raw_data"
WHERE  country = 'Bulgaria';



SELECT *
FROM "AwsDataCatalog"."de_wine_raw"."raw_data"
WHERE country = 'Spain'
    AND region_1 = 'Cava';



SELECT Count(id) AS total,
       country
FROM   "AwsDataCatalog"."de_wine_raw"."raw_data"
GROUP  BY country
ORDER BY Count(id) DESC;



SELECT   id,
         country,
         price,
         points,
         Avg(price) OVER ( partition BY country ORDER BY points) AS avg_price
FROM     “awsdatacatalog"."de_wine_raw"."raw_data";



SELECT id,
       country,
       price,
       points,
       Max(price)
       OVER (
           partition BY country
           ORDER BY points) AS avg_price
FROM   "AwsDataCatalog"."de_wine_raw"."raw_data";




SELECT   id,
         country,
         price,
         Row_number() OVER ( partition BY country ORDER BY price DESC) AS wine_row_num
FROM     “awsdatacatalog"."de_wine_raw"."raw_data";




SELECT   id,
         country,
         price,
         Rank() OVER ( partition BY country ORDER BY price DESC) AS wine_rank
FROM     “awsdatacatalog"."de_wine_raw"."raw_data";



SELECT *
FROM   "AwsDataCatalog"."de_wine_raw"."raw_data"
WHERE  province='California'
AND    variety='Pinot Noir';



SELECT *
FROM   "AwsDataCatalog"."de_wine_raw"."raw_data"
WHERE  variety = 'Cabernet Sauvignon'
       AND price > 20
       AND points > 94;