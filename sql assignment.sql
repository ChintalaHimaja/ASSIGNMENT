SELECT e.ename, job, d.dname
FROM EMP e,DEPT d
WHERE ( job = 'clerk');

query 2:
select e.ename, job, d.dname
from emp e, dept d
WHERE job = 'Manager' OR Job = 'clerk';

query 3:
SELECT e.ename,empno,GETDATE() AS todaydate
FROM EMP e;

query 4:
select e.ename, sal 
FROM EMP e
WHERE sal Between 500 and 1000;

query 5:
select ename,hiredate
from emp
where month(hiredate)=12;

query 6:
select e.ename,e.sal
from emp e
where sal NOT BETWEEN 1000 AND 2000;

query 7:
SELECT EMPNO,ENAME,SAL
FROM EMP
WHERE SAL IN(800,950,3000,5000);

query 8:
SELECT ENAME
FROM EMP
WHERE ENAME LIKE '_L%';

query 9:
SELECT ENAME
FROM EMP
WHERE ENAME LIKE '_D%';

query 10:
SELECT ENAME
FROM EMP
WHERE LEN(ENAME)=5;

query 11:
SELECT ENAME
FROM EMP
WHERE ENAME LIKE'T%R';

query 12:
SELECT ENAME
FROM EMP
WHERE ENAME LIKE 'A%';

query 13:
SELECT ENAME,HIREDATE
FROM EMP
WHERE DAY(HIREDATE)<19;

query 14:
SELECT ENAME,EMPNO
FROM EMP
WHERE ENAME='JAMES';

query 15:
SELECT ENAME,SAL
FROM EMP
WHERE ENAME='KING';

query 16:
SELECT ENAME,DNAME,JOB
FROM EMP,DEPT
WHERE JOB='PRESIDENT';

query 17:
SELECT ENAME,DNAME,JOB
FROM EMP,DEPT
WHERE JOB='MANAGER';

query 18:
SELECT empno,ename
FROM emp
where comm is not null
union
select empno,'NA'
from jobhist
where enddate is not null;

query 19:
select ename,hiredate
from emp
where hiredate<('1-apr-1981');

query 20:
select ename,sal
from emp
where ENAME in('KING','BLAKE','FORD','SMITH');

query 21:
SELECT ENAME,SAL
FROM EMP
WHERE ENAME IN('KING','BLAKE','FORD','SMITH');

query 22:
SELECT ENAME,JOB,SAL
FROM EMP
WHERE SAL<3500;

query 23:
SELECT*
FROM EMP
WHERE JOB='CLERK';

query 24:
SELECT ENAME,SAL,SAL*12 AS ANUALSAL
FROM EMP;

query 25:
SELECT(SAL*12)*0.2 AS ANNUALSAL
FROM EMP
WHERE ENAME = 'FORD'

query 26:
SELECT DEPTNO,SUM(SAL)AS TOTAL
FROM EMP
GROUP BY DEPTNO;

query 27:
SELECT ENAME,SAL
FROM EMP
WHERE DEPTNO=10 AND SAL<1400;

query 28:
SELECT ENAME,EMPNO,JOB,AVG(SAL)AS AVERAGE
FROM EMP e
WHERE JOB='MANAGER'
GROUP BY ENAME,EMPNO,JOB;

query 29:
SELECT ENAME,EMPNO,JOB,SUM(SAL)AS TOTAL
FROM EMP e
WHERE JOB='SALESMAN'
GROUP BY ENAME,EMPNO,JOB;

query 30:
SELECT DEPTNO,AVG(SAL)AS 'LOW AVG SALARY'
FROM EMP e
GROUP BY deptno
HAVING avg(sal)<(select avg (sal) from emp);

query 31:
select job,count(job)as number
from emp
Group by job;

query 32:
select max(sal) as 'maxsal',job
from emp
where job='analyst'
group by job;

query 33:
select max(comm) as commission
from emp;

query 34:
select deptno,count(deptno) as count
from emp
group by deptno;

query 35:
select ename
from emp
where ename like'_L%'





