
spool exam3.txt
conn scott/tiger
select * from emp;
select count(*) from emp;
select count(mgr) from emp;
select count(*) from emp where deptno=10;
select count(distict job) from emp;
select avg(sal) from emp;
select sum(sal+nvl(comm,0)) from emp;
select min(sal) from emp;
select max(sal) from emp;
select min(hiredate),max(hiredate) from emp;
select deptno,avg(sal) from emp group by deptno;
select job,avg(sal) from emp group by job having avg(sal)>2000;
select min(avg(sal)),max(avg(sal)) from emp where job NOT like 'PRE%' group by job;
select emp.ename,dept.dname,dept.loc from emp,dept where emp.deptno=dept.deptno;
select a.ename,b.ename,b.loc from emp a, dept b where a.deptno=b.deptno;
select emp.ename,dept.deptno,dept.loc from emp,dept where emp.deptno=dept.deptno and emp.sal>=1600;
select w.ename "雇员名",w.job "雇员工作",m.ename "经理姓名", m.job "经理工作"from emp w,emp m where w.mgr=m.empno and w.job='ANALYST'; 
select e.empno,e.ename,e.job,e.sal,s.grade from emp e,salgrade s where(e.sal between s.losal and s.hisal) and (s.grade>2 and s.grade<6);
select * from dept;
select a.*,b.* from emp a,dept b where a.deptno(+)=b.deptno;
select emp.empno,emp.ename,emp.sal,dept.deptno,loc from dept left outer join emp on (emp.deptno=dept.deptno);
select emp.empno,emp.ename,dept.deptno,dept.loc from emp right outer join dept on (emp.deptno=dept.deptno);

Select e.empno,e.ename,e.sal,d.loc from emp e join dept d using (deptno);
Select e.empno,e.ename,e.sal,e.deptno,d.loc from emp e join dept d on (e.deptno=d.deptno) order by d.loc; 
Select emp.empno,emp.ename,emp.sal,dept.deptno,loc from dept left outer join emp on (emp.deptno=dept.deptno);
Select emp.empno,emp.ename,dept.deptno,dept.loc from emp right outer join dept on (emp.deptno=dept.deptno);

select ename from emp where job=(select job from emp where ename='SMITH'); 
select ename, job, sal from emp where job=(select job from emp where ename='SMITH') and sal<= (select sal from emp where ename='ADAMS'); 

select * from emp where job in (select distinct job from emp where deptno=10);

select ename, job, sal from emp where sal <all (select sal from emp where deptno=10);

select ename, job, sal from emp where sal >any (select avg(sal) from emp group by job);
select ename,job,deptno from emp where (deptno,job)=(select deptno,job from emp where ename='SMITH');
create table mytable(id,name,sal) as (select empno,ename,sal from emp);
select * from mytable；
drop table mytable;
create table employee (name varchar2(10), sal number(7,2),job varchar2(10));
insert into employee select ename,sal,job from emp where deptno=10;
delete from employee where sal>(select sal from employee where job='CLERK');
update employee set sal=( select sal from employee where job='CLERK');
select ename,sal,job from emp where sal>1600 union select ename,sal,job from emp where job='MANAGER'; 
select ename,sal,job from emp where sal>1600 union all select ename,sal,job from emp where job='MANAGER';
select ename,sal,job from emp where sal>1600 intersect select ename,sal,job from emp where job='MANAGER';
select ename,sal,job from emp where sal>1600 minus select ename,sal,job from emp where job='MANAGER';

select e.EMPNO 雇员编号,e.ENAME 雇员姓名,e.JOB 工作,d.DNAME 部门名称
from emp e,dept d where e.deptno = d.DEPTNO;
select empno,ename,sal,sal+600 
from emp;
select ename || ' annual salary is ' || sal*12 雇员年收入
from emp;
select distinct deptno,job 
from emp 
order by deptno;

select ename,sal,job,e.deptno,dname
from emp e,dept d
where ename = 'SMITH' AND e.deptno = d.deptno;

select ename,hiredate
from emp
where hiredate > '01-1月-82';

select ename 雇员姓名,sal 薪水
from emp
where sal between 2000 and 3000;

select ename,sal
from emp
where ename like 'S%';

select ename,sal
from emp
where ename like '_O%';

select ename,comm
from emp
where comm IS NULL;

select ename,sal,NVL(comm,0),(nvl(sal,0))+nvl(comm,0))*12
from emp;

select empno,ename,job,hiredate,sal,nvl(comm,0),deptno
from emp
where job IN('SALSMAN','CLERK','MANAGER');

select empno,ename,job,hiredate,sal,nvl(comm,0)deptno
from emp
where job NOT IN('SALSMAN','CLERK','MAMAGER');

select empno,ename,job,hiredate,sal,nvl(comm,0),deptno
from emp order by sal ASC;

select empno,ename,job,hiredate,sal,nvl(comm,0),deptno
from emp order by sal DESC;

select empno,ename,job,hiredate,sal,nvl(comm,0),deptno
from emp order by sal DESC,ename DESC;
spool off;