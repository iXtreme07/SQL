/*Query 01*/
SELECT playerno, year_of_birth
FROM players
WHERE year_of_birth > 1960;

/*Query 02*/
SELECT playerno, name, town, sex
FROM players
WHERE town != 'Stratford'
  AND sex = 'F';

/*Query 03*/
SELECT playerno, year_joined
FROM players
WHERE year_joined
          BETWEEN 1970
          AND 1980;

/*Query 04*/
SELECT playerno, name, year_of_birth
FROM players
WHERE (MOD(year_of_birth, 4) = 0)
   OR (MOD(year_of_birth, 100) = 0)
   OR MOD(year_of_birth, 400) = 0;

/*Query 05*/
SELECT amount
FROM penalties
WHERE amount
          BETWEEN 50
          AND 100;

/*Query 06*/
SELECT playerno, name, town
FROM players
WHERE town != 'Douglas'
  AND town != 'Stratford';

/*Query 07*/
SELECT playerno, name
FROM players
WHERE name
          LIKE '%is%';

/*Query 08*/
SELECT leagueno
FROM players
WHERE leagueno
          IS NULL;