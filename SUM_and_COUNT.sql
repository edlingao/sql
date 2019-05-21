SELECT SUM(population)
FROM world


select continent from world
group by continent



select SUM(gdp) from world
where continent = 'Africa'


select COUNT(name) from world
where area >= 1000000


Select SUM(population) from world
where name IN ('Estonia', 'Latvia', 'Lithuania')


select continent, COUNT(name) from world
group by continent


select continent, COUNT(name) from world
where population >= 10000000
group by continent


SELECT continent FROM (SELECT continent, SUM(population) total FROM world GROUP BY continent) x
WHERE total > 100000000;
