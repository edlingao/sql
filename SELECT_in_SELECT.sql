SELECT name FROM world
  WHERE population >
     (SELECT population FROM world
      WHERE name='Russia')

select name from world
where continent = 'Europe' AND
gdp/population >  (SELECT gdp/population FROM world
      WHERE name='United Kingdom')

Select name, continent  from world
where  continent = (Select continent from world where name = 'Argentina') OR continent = (select continent from world where name = 'Australia')
Order by name


select name, population from world
where population > (select population from world where name = 'Canada')  
  AND
    population < (select population from world where name = 'Poland')


select name, CONCAT(ROUND(100*population/(SELECT population FROM world WHERE name = 'Germany')), '%') from world
where continent = 'Europe'


Select name from world
where gdp > ALL (select gdp from world where continent = 'Europe' AND gdp>0)


SELECT continent, name, area FROM world x
  WHERE area >= ALL
    (SELECT area FROM world y
        WHERE y.continent=x.continent
          AND area>0)

select continent, name from world
where name IN (SELECT MIN(name) from world group by continent)



SELECT name, continent, population FROM world
WHERE continent NOT IN (
SELECT DISTINCT continent FROM world WHERE population > 25000000);


SELECT name, continent FROM world current WHERE population > ALL (
SELECT population * 3 FROM world WHERE continent = current.continent AND name <> current.name);

