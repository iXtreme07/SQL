/*Query 07*/
SELECT deptno
FROM dept
MINUS
SELECT deptno
FROM emp
GROUP BY deptno;

/*Query 08*/
SELECT *
FROM emp
WHERE job =
      (SELECT job
       FROM emp
       WHERE ename = 'JONES');

/*Query 09*/
SELECT *
FROM emp
WHERE sal >
      (SELECT MIN(sal)
       FROM emp
       WHERE deptno = 30);

/*Query 10*/
SELECT *
FROM emp
WHERE sal >
      (SELECT MAX(sal)
       FROM emp
       WHERE deptno = 30);

/*Query 11*/
SELECT *
FROM emp
WHERE deptno = 10
  AND job NOT IN
      (SELECT job
       FROM emp
       WHERE deptno = 30);

/*Query 12*/
SELECT empno, ename, job, sal
FROM emp
WHERE sal =
      (SELECT MAX(sal)
       FROM emp);