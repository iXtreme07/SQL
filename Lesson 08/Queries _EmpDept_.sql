/*Queries 05*/
Select level, ename, lpad(mgr, 2 * level, '--') AS mgr, empno
FROM emp
CONNECT BY PRIOR empno = mgr
START WITH mgr =
           (SELECT empno
            FROM emp
            WHERE ename = 'JONES');

/*Queries 06*/
Select level, ename, lpad(mgr, 10 - level * 2, '--') AS mgr, empno
FROM emp
CONNECT BY PRIOR mgr = empno
START WITH empno =
           (SELECT empno
            FROM emp
            WHERE ename = 'SMITH');

/*Queries 07*/
Select level, ROUND(AVG(sal), 2)
FROM emp
CONNECT BY PRIOR empno = mgr
START WITH empno =
           (SELECT empno
            FROM emp
            WHERE ename = 'KING')
GROUP BY level
ORDER BY level;