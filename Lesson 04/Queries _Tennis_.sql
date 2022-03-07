/*Query 01*/
SELECT teamno
FROM teamS
WHERE playerno = 27
  AND teamno != 1;

/*Query 02*/
SELECT players.playerno, name, initials
FROM players,
     matches
WHERE matches.playerno = players.playerno
  AND matches.won > 0
GROUP BY players.playerno, name, initials;

/*Query 03*/
SELECT players.playerno, name
FROM players,
     penalties
WHERE penalties.playerno = players.playerno
GROUP BY players.playerno, name;

/*Query 04*/
SELECT players.playerno, name
FROM players,
     penalties
WHERE penalties.playerno = players.playerno
  AND amount > 50
GROUP BY players.playerno, name;

/*Query 05*/
SELECT playerno, name
FROM players
WHERE year_of_birth =
      (SELECT year_of_birth
       FROM players
       WHERE initials = 'R'
         AND name = 'Parmenter');

/*Query 06*/
SELECT playerno, name
FROM players
WHERE year_of_birth =
      (SELECT MAX(year_of_birth)
       FROM players);