
spool exam2.txt
create table t as select * from all_objects;
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