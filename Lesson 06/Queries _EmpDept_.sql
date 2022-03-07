/*Query 06*/
SELECT LOC
FROM emp,
     dept
WHERE emp.deptno = dept.deptno
  AND ename = 'ALLEN';

/*Query 07*/
SELECT *
FROM emp employee   --self-join
WHERE sal >
      (SELECT sal
       FROM emp
       WHERE empno = employee.mgr);

/*Query 08*/
SELECT COUNT(*), EXTRACT(YEAR FROM TO_DATE(hiredate, 'DD-MM-YYYY'))
FROM emp
GROUP BY EXTRACT(YEAR FROM TO_DATE(hiredate, 'DD-MM-YYYY'))
ORDER BY EXTRACT(YEAR FROM TO_DATE(hiredate, 'DD-MM-YYYY'));

/*Query 09*/
SELECT *
FROM emp
WHERE job IN
      (SELECT job
       FROM emp
       WHERE deptno =
             (SELECT deptno
              FROM dept
              WHERE LOC = 'CHICAGO'));