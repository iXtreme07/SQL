/*Query 05*/
SELECT *
FROM emp employee
WHERE sal >
      (SELECT AVG(sal)
       FROM emp employeeAVG
       WHERE employeeAVG.deptno = employee.deptno);

/*Query 06*/
SELECT *
FROM dept
WHERE deptno IN
      (SELECT DISTINCT deptno
       FROM emp);

/*Query 07*/
SELECT *
FROM dept
WHERE deptno IN
      (SELECT DISTINCT deptno
       FROM emp
       WHERE sal > 1000);

/*Query 08*/
SELECT *
FROM dept
WHERE deptno IN
      (SELECT deptno
       FROM emp
      GROUP BY deptno
       HAVING MIN(sal) > 1000);