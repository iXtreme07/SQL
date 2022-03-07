/*Query 01*/
SELECT name
FROM players
         JOIN matches M ON players.playerno = M.playerno
GROUP BY name
HAVING COUNT(DISTINCT teamno) > 1;

/*Query 02*/
SELECT name, initials
FROM players
         LEFT JOIN
     (SELECT playerno
      FROM penalties
      WHERE EXTRACT(YEAR FROM pen_date) = 1980) P ON players.playerno = P.playerno
WHERE P.playerno IS NULL;

/*Query 03*/
SELECT DISTINCT players.playerno, name
FROM players
         INNER JOIN penalties P ON players.playerno = P.playerno
    AND P.amount > 80;

/*Query 04*/
SELECT players.playerno, name
FROM players
         INNER JOIN (SELECT penalties.playerno, MIN(amount) AS P
                     FROM penalties
                     GROUP BY penalties.playerno
                     HAVING MIN(amount) > 80) Q
                    ON players.playerno = Q.playerno;