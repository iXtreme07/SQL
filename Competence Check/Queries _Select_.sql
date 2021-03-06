/*Queries 01*/
SELECT EMPLOYEE_ID, LAST_NAME, JOB_ID, HIRE_DATE AS STARTDATE
FROM EMPLOYEES;

/*Queries 02*/
SELECT JOB_ID
FROM EMPLOYEES
GROUP BY JOB_ID;

/*Queries 03*/
SELECT LAST_NAME, SALARY
FROM EMPLOYEES
WHERE SALARY > 12000;

/*Queries 04*/
SELECT LAST_NAME, DEPARTMENT_ID
FROM EMPLOYEES
WHERE EMPLOYEE_ID = 176;

/*Queries 05*/
SELECT LAST_NAME, JOB_ID, HIRE_DATE
FROM EMPLOYEES
ORDER BY HIRE_DATE ASC;

/*Queries 06*/
SELECT LAST_NAME, DEPARTMENT_ID
FROM EMPLOYEES
WHERE DEPARTMENT_ID = 20
ORDER BY LAST_NAME ASC;

/*Queries 07*/
SELECT LAST_NAME AS "EMPLOYEE", SALARY AS "MONTHLY SALARY", COMMISSION_PCT AS "COMMISSION"
FROM EMPLOYEES
WHERE COMMISSION_PCT = 0.2;
