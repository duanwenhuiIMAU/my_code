-- 实验一
spool examone.txt

select * from v$tablespace;
select tablespace_name,contents,status from dba_tablespaces;
select segment_name,segment_type,extents,tablespace_name
from dba_segments where tablespace_name="SYSTEM";
select * from v$rollname;
select * from v$rollstat;
select segment_name,tablespace_name,bytes,blocks,segment_type
from dba_segments where segment_type='ROLLBACK';
select * from dba_segments where user='scott';
select tablespace_name,file_id,bytes,blocks
from dba_free_space;

spool off;