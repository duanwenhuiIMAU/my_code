
spool forpm.txt
select p.program,p.spid,pm.category,pm.allocated,pm.max_allocated
from v$process p,v$process_memory pm
where p.pid=pm.pid
and p.spid in(select spid from v$process where addr in(
select paddr from v$session where sid in(
select distinct sid from v$mystat)));
spool off;