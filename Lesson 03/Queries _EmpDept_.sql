/*Query 09*/
SELECT *
FROM emp
WHERE comm > sal;

/*Query 10*/
SELECT *
FROM emp
WHERE deptno = 30
  AND sal >= 1500;

/*Query 11*/
SELECT mgr
FROM emp
WHERE deptno != 30;

/*Query 12*/
SELECT *
FROM emp
WHERE deptno = 10
  AND job != 'CLERK'
  AND job != 'MANAGER';

/*Query 13*/
SELECT *
FROM emp
WHERE sal
          BETWEEN 1200
          AND 1300;

/*Query 14*/
SELECT *
FROM emp
WHERE ename
          LIKE 'ALL__';

/*Query 15*/
SELECT sal + comm
FROM emp
WHERE sal + comm IS NOT NULL;

/*Query 16*/
SELECT *
FROM emp
WHERE comm > sal * 0.25;

/*Query 17*/
SELECT AVG(sal)
FROM emp
WHERE job != 'PRESIDENT';

/*Query 18*/
SELECT COUNT(*)
FROM emp
WHERE comm IS NOT NULL
  AND comm > 0;

/*Query 19*/
SELECT COUNT(DISTINCT job)
FROM emp
WHERE deptno = 30
GROUP BY deptno;

/*Query 20*/
SELECT COUNT(*)
FROM emp
WHERE deptno = 30;

/*Query 21*/
SELECT *
FROM emp
WHERE hiredate BETWEEN '04.01.1981' AND '15.04.1981';