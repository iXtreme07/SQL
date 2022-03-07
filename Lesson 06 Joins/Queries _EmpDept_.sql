/*Query 06*/
SELECT loc
FROM emp
         INNER JOIN dept d on d.deptno = emp.deptno
    AND ename = 'ALLEN';

/*Query 07*/
SELECT *
FROM emp employee
         INNER JOIN emp e ON e.empno = employee.mgr
    AND employee.sal > e.sal;

/*Query 08*/
SELECT COUNT(*), EXTRACT(YEAR FROM TO_DATE(hiredate, 'DD-MM-YYYY'))
FROM emp
GROUP BY EXTRACT(YEAR FROM TO_DATE(hiredate, 'DD-MM-YYYY'))
ORDER BY EXTRACT(YEAR FROM TO_DATE(hiredate, 'DD-MM-YYYY'));

/*Query 09*/
SELECT *
FROM emp
WHERE job IN
      (SELECT DISTINCT job
       FROM emp
                INNER JOIN (SELECT deptno FROM dept WHERE loc = 'CHICAGO') d ON d.deptno = emp.deptno)