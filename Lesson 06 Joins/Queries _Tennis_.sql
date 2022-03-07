/*Query 01*/
SELECT players.playerno, name, initials, COUNT(won)
FROM players
         INNER JOIN matches m ON players.playerno = m.playerno
GROUP BY players.playerno, name, initials
ORDER BY COUNT(won) DESC;

/*Query 02*/
SELECT name, pen_date, amount
FROM penalties
         INNER JOIN players p ON penalties.playerno = p.playerno
ORDER BY amount DESC;

/*Query 03*/
SELECT teamno, name
FROM teams
        INNER JOIN players p ON teams.playerno = p.playerno;

/*Query 04*/
SELECT name, won, lost
FROM players
         INNER JOIN matches m on players.playerno = m.playerno
    AND won > lost;

/*Query 05*/
SELECT players.playerno, players.name, SUM(amount)
FROM players
         INNER JOIN penalties p on players.playerno = p.playerno
GROUP BY players.playerno, players.name
ORDER BY SUM(amount) ASC;