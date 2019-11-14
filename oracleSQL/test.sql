spool test.txt
-- show sga;

-- select name,value from v$parameter
-- where name IN('shared_pool_size','java_pool_size','large_pool_size');

-- show parameter sga_max_size;

-- alter system set shared_pool_size=50M scope=spfile;

-- show parameter pga;

-- alter system set pga_aggregate_target=100M scope=both;
-- alter system set workarea_size_policy=auto scope=both;

select p.program,p.spid,pm.category,pm.allocated,pm.max_all0cated
from v$process p,v$process_memory pm
where p.pid=pm.pid
and p.spid in(select spid from v$process where addr in(
select paddr from v$session where sid in(
select distinct sid from v$mystat)));

-- PROGRAM                                          SPID                           
-- ------------------------------------------------ ------------------------       
-- CATEGORY         ALLOCATED MAX_ALLOCATED                                        
-- --------------- ---------- -------------                                        
-- oracle@VM_0_9_centos (TNS V1-V3)                 1967                           
-- SQL                  51568       3509992                                        
                                                                                
-- oracle@VM_0_9_centos (TNS V1-V3)                 1967                           
-- PL/SQL              100312        143424                                        
                                                                                
-- oracle@VM_0_9_centos (TNS V1-V3)                 1967                           
-- Other              2583896       2583896                                        
                                                                                


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


-- SELECT SID,seria#,username from v$session
--            *
-- ERROR at line 1:
-- ORA-00904: "SERIA#": invalid identifier 

spool off;




show sga;
-- Total System Global Area  768294912 bytes                                       
-- Fixed Size                  2217304 bytes                                       
-- Variable Size             570428072 bytes                                       
-- Database Buffers          192937984 bytes                                       
-- Redo Buffers                2711552 bytes   

select name,value from v$parameter
where name IN('shared_pool_size','java_pool_size','large_pool_size');

-- NAME                                                                            
-- --------------------------------------------------------------------------------
-- VALUE                                                                           
-- --------------------------------------------------------------------------------
-- shared_pool_size                                                                
-- 0                                                                               
                                                                                
-- large_pool_size                                                                 
-- 0                                                                               
                                                                                
-- java_pool_size                                                                  
-- 0                                                                               
                                                                                
show parameter sga_max_size;

-- NAME                                 TYPE        VALUE                          
-- ------------------------------------ ----------- ------------------------------ 
-- sga_max_size                         big integer 736M  


alter system set shared_pool_size=50M scope=spfile;
-- System altered.

show parameter pga;


-- NAME                                 TYPE        VALUE                          
-- ------------------------------------ ----------- ------------------------------ 
-- pga_aggregate_target                 big integer 0            



alter system set pga_aggregate_target=100M scope=both;

-- System altered.

alter system set workarea_size_policy=auto scope=both;

-- System altered.
show parameter workarea;
-- NAME                                 TYPE        VALUE                          
-- ------------------------------------ ----------- ------------------------------ 
-- workarea_size_policy                 string      AUTO     
