/*Query 01*/
SELECT name
FROM players
WHERE playerno =
      (SELECT playerno
       FROM matches
       GROUP BY playerno
       HAVING COUNT(DISTINCT teamno) > 1);

/*Query 02*/
SELECT name, initials
FROM players
WHERE playerno NOT IN
      (SELECT playerno
       FROM penalties
       WHERE EXTRACT(YEAR FROM pen_date) = 1980);

/*Query 03*/
SELECT playerno, name
FROM players
WHERE playerno IN
      (SELECT playerno
       FROM penalties
       WHERE amount > 80);

/*Query 04*/
SELECT playerno, name
FROM players
WHERE playerno IN
      (SELECT playerno
       FROM penalties
       GROUP BY playerno
       HAVING MIN(amount) > 80);