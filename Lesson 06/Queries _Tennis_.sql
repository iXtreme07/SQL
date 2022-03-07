/*Query 01*/
SELECT players.playerno, name, initials, COUNT(won)
FROM players,
     matches
WHERE players.playerno = matches.playerno
GROUP BY players.playerno, name, initials
ORDER BY COUNT(won) DESC;

/*Query 02*/
SELECT name, pen_date, amount
FROM penalties,
     players
WHERE players.playerno = penalties.playerno
ORDER BY amount DESC;

/*Query 03*/
SELECT teamno, name
FROM teams,
     players
WHERE teams.playerno = players.playerno;

/*Query 04*/
SELECT name, won, lost
FROM players,
     matches
WHERE players.playerno = matches.playerno
  AND won > lost;

/*Query 05*/
SELECT players.playerno, players.name, SUM(amount)
FROM players,
     penalties
WHERE players.playerno = penalties.playerno
GROUP BY players.playerno, players.name
ORDER BY SUM(amount) ASC;

