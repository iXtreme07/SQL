/*Queries 02*/
SELECT level, lpad(super, 2 * level, '--') AS super, sub
FROM parts
CONNECT BY PRIOR sub = super
START WITH super IN ('P3', 'P9');

/*Queries 03*/
SELECT *
FROM (SELECT level, lpad(super, 2 * level, '--') AS super, sub
      FROM parts
      CONNECT BY PRIOR sub = super
      START WITH super = ('P1'))
WHERE sub = 'P12';

/*Queries 04*/
SELECT *
FROM (SELECT level, lpad(super, 2 * level, '--') AS super, sub, price
      FROM parts
      CONNECT BY PRIOR sub = super
      START WITH super = ('P1'))
WHERE price > 20;