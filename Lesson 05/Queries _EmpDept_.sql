/*Query 12*/
SELECT *
FROM emp
WHERE deptno = 30
ORDER BY sal DESC;

/*Query 13*/
SELECT *
FROM emp
ORDER BY job, sal DESC;

/*Query 14*/
SELECT *
FROM emp
ORDER BY EXTRACT(YEAR FROM TO_DATE(hiredate, 'DD-MM-YYYY')) DESC, ename;

/*Query 15*/
SELECT *
FROM emp
WHERE job = 'SALESMAN'
ORDER BY comm / sal DESC;

/*Query 16*/
SELECT ROUND(AVG(sal), 2), deptno
FROM emp
GROUP BY deptno;

/*Query 17*/
SELECT 12 * AVG(sal), job
FROM emp
GROUP BY job
HAVING COUNT(*) > 2;

/*Query 18*/
SELECT deptno
FROM emp
WHERE job = 'CLERK'
GROUP BY deptno
HAVING COUNT(*) >= 2;

/*Query 19*/
SELECT AVG(comm + sal)
FROM emp
WHERE deptno = 30;