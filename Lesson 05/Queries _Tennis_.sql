/*Query 01*/
SELECT COUNT(*), year_joined
FROM players
GROUP BY year_joined;

/*Query 02*/
SELECT playerno, COUNT(*), AVG(amount)
FROM penalties
GROUP BY playerno;

/*Query 03*/
SELECT EXTRACT(YEAR FROM TO_DATE(pen_date, 'DD-MM-YYYY')), COUNT(*)
FROM penalties
WHERE EXTRACT(YEAR FROM TO_DATE(pen_date, 'DD-MM-YYYY')) < 1983
GROUP BY EXTRACT(YEAR FROM TO_DATE(pen_date, 'DD-MM-YYYY'));

/*Query 04*/
SELECT town, COUNT(*)
FROM players
GROUP BY town
HAVING COUNT(*) > 4;

/*Query 05*/
SELECT playerno, SUM(amount)
FROM penalties
GROUP BY playerno
HAVING SUM(amount) > 150;

/*Query 06*/
SELECT name, initials, penalties.playerno
FROM penalties,
     players
WHERE players.playerno = penalties.playerno
GROUP BY name, initials, penalties.playerno
HAVING COUNT(penalties.playerno) > 1;

/*Query 07*/
SELECT EXTRACT(YEAR FROM TO_DATE(pen_date, 'DD-MM-YYYY'))
FROM penalties
GROUP BY EXTRACT(YEAR FROM TO_DATE(pen_date, 'DD-MM-YYYY'))
HAVING COUNT(*) = 2;

/*Query 08*/
SELECT name, initials, penalties.playerno
FROM penalties,
     players
WHERE amount > 40
  AND players.playerno = penalties.playerno
GROUP BY name, initials, penalties.playerno
HAVING COUNT(*) > 1;

/*Query 09*/
SELECT name, initials
FROM penalties,
     players
WHERE players.playerno = penalties.playerno
GROUP BY name, initials
HAVING SUM(penalties.amount) >= ALL
       (SELECT SUM(amount)
        FROM penalties
        GROUP BY playerno);

/*Query 10*/
SELECT EXTRACT(YEAR FROM TO_DATE(pen_date, 'DD-MM-YYYY')), COUNT(*)
FROM penalties
GROUP BY pen_date
HAVING COUNT(*) >= ALL
       (SELECT COUNT(*)
        FROM penalties
        GROUP BY pen_date);

/*Query 11*/
SELECT playerno, teamno, won, lost
FROM matches
ORDER BY lost DESC;
