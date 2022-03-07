/*Query 05*/
SELECT *
FROM emp employee
WHERE sal >
      (SELECT AVG(sal)
       FROM emp employeeavg
       WHERE employeeAVG.deptno = employee.deptno);

/*Query 06*/
SELECT DISTINCT dept.deptno, Dname, loc
FROM dept
         INNER JOIN emp ON dept.deptno = emp.deptno
ORDER BY deptno;

/*Query 07*/
SELECT dept.deptno
FROM dept
         INNER JOIN
     (SELECT deptno, MAX(sal) MAX
      FROM emp
      GROUP BY deptno) D
     ON D.deptno = dept.deptno
         AND MAX > 1000;

/*Query 08*/
SELECT dept.deptno
FROM dept
         INNER JOIN
     (SELECT deptno, MIN(sal) MIN
      FROM emp
      GROUP BY deptno) D
     ON D.deptno = dept.deptno
         AND MIN > 1000;