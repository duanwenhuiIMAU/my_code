-- oracle sql
/*

Oracle sql 数据库代码 
来自 oracle 数据库应用与开发

*/

show sga;

select name,value from v$parameter
where name IN('shared_pool_size','java_pool_size','large_pool_size');

show parameter sga_max_size;

alter system set shared_pool_size=50M scope=spfile;

show parameter pga;

alter system set pga_aggregate_target=100M scope=both;
alter system set workarea_size_policy=auto scope=both;
show parameter workarea;
select p.program,p.spid,pm.category,pm.allocated,pm.max_allcated
from v$process p,v$process_memory pm
where p.pid=pm.pid
and p.spid in(select spid from v$process where addr in(
select paddr from v$session where sid in(
select distinct sid from v$mystat)));
select paddr,name,description from v$bgprocess order by paddr desc;
select name from v$datafile;
select member from v$logfile;
select name from v$controlfile;

column table_name format a20;
column tablespace_name format a20;
column owner format a20;
select table_name,tablespace_name,owner
from dba_tables
where owner='ZCGL_OPER';
SELECT SID,seria#,username from v$session
where username IS NOT NULL;
-- 实验一
spool test.txt

select * from v$tablespace;
select tablespace_name,contents,status from dba_tablespaces;
select segment_name,segment_type,extents,tablespace_name
from dba_segments where tablespace_name="SYSTEM";
select * from v$rollname;
select * from v$rollstat;
select segment_name,tablespace_name,bytes,blocks,segment_type
from dba_segments where segment_type='ROLLBACK';
select * from dba_segments where user='scott';
select table_name,file_id,bytes,blocks
from dba_free_space;

spool off;
-- 实验2
spool exam2.txt
drop table t;
create table t as select * from all_objects;
create index object_id_idx on t(object_id);
set autotrace on;
set timing on;
select object_name from t where object_id=29;
select /*full（t）*/ object_name form t where object_id=29;
show parameter sga;
show parameter pga;
show parameter shared_pool_size;
show parameter db_cache_size;
show parameter log_buffer;
select name from v$controlfile;
select type,record_size,records_total,records_used from v$controlfile_record_section;
select member from v$logfile;
select name from v$datafile;
select group#,member from v$logfile;
select group#,archived,status from v$log;
spool off;
-- 实验3
spool exam3.txt
conn scott/tiger
select * from emp;
select count(*) from emp;
select count(mgr) emp;
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

spool off;
-- 实验4
spool exam4.txt
spool off;
-- 实验5
spool exam5.txt
spool off;
-- 实验6
spool exam6.txt
spool off;
-- 实验7
spool exam7.txt
spool off;
-- 实验8
spool exam8.txt
spool off;