SELECT yr, subject, winner
FROM nobel
WHERE yr = 1950


SELECT winner
FROM nobel
WHERE yr = 1962
    AND subject = 'Literature'


SELECT yr, subject
FROM nobel
WHERE winner = 'Albert Einstein'

SELECT winner FROM nobel
WHERE subject = 'Peace' AND yr > 1999

SELECT yr,subject,winner FROM nobel
WHERE yr > 1979 AND yr < 1990 AND subject = 'Literature'


SELECT * FROM nobel
 WHERE winner IN ('Theodore Roosevelt',
                  'Woodrow Wilson',
                  'Jimmy Carter',
                  'Barack Obama')



select winner from nobel
where winner like 'John%'

select yr, subject, winner from nobel
where yr = 1984 AND subject = 'Chemistry' OR subject = 'Physics' AND yr = 1980


select yr,subject,winner from nobel
where subject not like 'Chemistry' and subject not like 'Medicine' and yr = 1980


select yr, subject, winner from nobel
where subject = 'Medicine' AND  yr < 1910 OR subject = 'Literature' AND yr > 2003


select * from nobel
where winner like 'PETER GRÜNBERG'


select * from nobel
where winner like 'EUGENE O''NEILL'


select winner,yr,subject from nobel
where winner like 'Sir%'



SELECT winner, subject
  FROM nobel
 WHERE yr=1984
 ORDER BY subject IN ('Physics','Chemistry'), subject,winner