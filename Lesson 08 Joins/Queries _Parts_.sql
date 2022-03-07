/*Queries 02*/
SELECT parts.super, parts.sub
FROM parts,
     (SELECT DISTINCT super
         FROM parts
         CONNECT BY PRIOR sub = super
         START WITH super in ('P3', 'P9')) P
WHERE parts.super = P.super;

/*Queries 03*/
SELECT LVL, parts.super, parts.sub
FROM parts,
     (SELECT level AS LVL, sub
      FROM parts
      CONNECT BY PRIOR sub = super
      START WITH super = ('P1')) P
WHERE P.sub = parts.sub
  AND P.sub = 'P12';

/*Queries 04*/
SELECT parts.sub, parts.price
FROM parts,
     (SELECT sub, price
      FROM parts
      CONNECT BY PRIOR sub = super
      START WITH super = ('P1')) P
WHERE P.price > 20
  AND parts.sub = P.sub;