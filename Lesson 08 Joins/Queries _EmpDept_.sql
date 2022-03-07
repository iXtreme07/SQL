/*Queries 05*/
SELECT emp.empno, emp.ename, emp.job, lpad(mgr, lvl * 5, '') AS mgr, lvl
FROM emp,
     (SELECT empno, level AS lvl
      FROM emp
      CONNECT BY PRIOR empno = mgr
      START WITH mgr = (SELECT empno FROM emp WHERE ename = 'JONES')) P
WHERE P.empno = emp.empno
ORDER BY mgr DESC;

/*Queries 06*/
SELECT emp.empno, ename, job, mgr, lvl
FROM emp,
     (SELECT level AS lvl, empno
      FROM emp
      CONNECT BY PRIOR mgr = empno
      START WITH empno =
                 (SELECT empno
                  FROM emp
                  WHERE ename = 'SMITH')) P
WHERE P.empno = emp.empno;

/*Queries 07*/
SELECT lvl, ROUND(AVG(sal), 2)
FROM emp,
     (SELECT level AS lvl, empno
         FROM emp
         CONNECT BY PRIOR empno = mgr
         START WITH empno = (SELECT empno FROM emp WHERE ename = 'KING')) P
WHERE P.empno = emp.empno
GROUP BY lvl;
