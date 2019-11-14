SQL> edit
SP2-0107: Nothing to save.
SQL> select sql_text,last_load_time from v$sql order by last_load_time desc;

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
select inst_id,kglnaobj,kglfnobj,kglobt03, kglobhs0+kglobhs1+kglobhs2+kglobhs3+k
globhs4+kglobhs5+kglobhs6+kglobt16, kglobt08+kglobt11, kglobt10, kglobt01, decod
e(kglobhs6,0,0,1), decode(kglhdlmd,0,0,1), kglhdlkc, kglobt04, kglobt05, kglobt4
8, kglobt35, kglobpc6, kglhdldc, substr(to_char(kglnatim,'YYYY-MM-DD/HH24:MI:SS'
),1,19), kglhdivc, kglobt12, kglobt13, kglobwdw, kglobt14, kglobwap, kglobwcc, k
globwcl, kglobwui, kglobt42, kglobt43, kglobt15, kglobt02, decode(kglobt32,     
   0, 'NONE',        1, 'ALL_ROWS',        2, 'FIRST_ROWS',        3, 'RULE',   
     4, 'CHOOSE',           'UNKNOWN'), kglobtn0, kglobcce, kglobcceh, kglobt17,
 kglobt18, kglobts4, kglhdkmk, kglhdpar, kglobtp0, kglnahsh, kglobt46, kglobt30,

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
 kglobt09, kglobts5, kglobt48, kglobts0, kglobt19, kglobts1, kglobt20, kglobt21,
 kglobts2, kglobt06, kglobt07, decode(kglobt28, 0, to_number(NULL), kglobt28), k
glhdadr, kglobt29, decode(bitand(kglobt00,64),64, 'Y', 'N'), decode(kglobsta,   
     1, 'VALID',        2, 'VALID_AUTH_E                                        
2019-09-29/21:50:35                                                             
                                                                                
select  SQL_TEXT , SQL_FULLTEXT , SQL_ID,  SHARABLE_MEM , PERSISTENT_MEM , RUNTI
ME_MEM , SORTS , LOADED_VERSIONS , OPEN_VERSIONS , USERS_OPENING , FETCHES , EXE
CUTIONS , PX_SERVERS_EXECUTIONS , END_OF_FETCH_COUNT, USERS_EXECUTING , LOADS , 

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
FIRST_LOAD_TIME, INVALIDATIONS, PARSE_CALLS , DISK_READS , DIRECT_WRITES , BUFFE
R_GETS , APPLICATION_WAIT_TIME, CONCURRENCY_WAIT_TIME, CLUSTER_WAIT_TIME, USER_I
O_WAIT_TIME, PLSQL_EXEC_TIME, JAVA_EXEC_TIME, ROWS_PROCESSED , COMMAND_TYPE , OP
TIMIZER_MODE , OPTIMIZER_COST, OPTIMIZER_ENV, OPTIMIZER_ENV_HASH_VALUE, PARSING_
USER_ID , PARSING_SCHEMA_ID , PARSING_SCHEMA_NAME, KEPT_VERSIONS , ADDRESS , TYP
E_CHK_HEAP , HASH_VALUE, OLD_HASH_VALUE, PLAN_HASH_VALUE, CHILD_NUMBER, SERVICE,
 SERVICE_HASH, MODULE, MODULE_HASH , ACTION , ACTION_HASH ,  SERIALIZABLE_ABORTS
 , OUTLINE_CATEGORY, CPU_TIME, ELAPSED_TIME, OUTLINE_SID, CHILD_ADDRESS, SQLTYPE
, REMOTE, OBJECT_STATUS, LITERAL_HASH_VALUE, LAST_LOAD_TIME, IS_OBSOLETE, IS_BIN

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
D_SENSITIVE, IS_BIND_AWARE, IS_SHAREABLE                                        
2019-09-29/21:50:35                                                             
                                                                                
select sql_text,last_load_time from v$sql order by last_load_time desc          
2019-09-29/21:50:35                                                             
                                                                                
SELECT /*+rule*/ SYS_XMLGEN(VALUE(KU$), XMLFORMAT.createFormat2('SEQUENCE_T', '7
')), KU$.OBJ_NUM FROM SYS.KU$_SEQUENCE_VIEW KU$ WHERE KU$.SCHEMA_OBJ.NAME=:NAME1
 AND  KU$.SCHEMA_OBJ.OWNER_NAME=:SCHEMA2                                        

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
2019-09-29/21:49:46                                                             
                                                                                
select DBMS_METADATA.GET_DDL('SEQUENCE',:NAME,:OWNER,:VERSION) from dual        
2019-09-29/21:49:46                                                             
                                                                                
SELECT alias000$."STYLESHEET" AS STYLESHEET FROM "SYS"."METASTYLESHEET" alias000
$ WHERE 1 = 1 AND ((alias000$."NAME"='kuseq') AND (alias000$."MODEL"='ORACLE')) 
2019-09-29/21:49:46                                                             
                                                                                

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
insert into WRI$_ALERT_OUTSTANDING (reason_id, object_id, subobject_id, internal
_instance_number, owner, object_name, subobject_name, sequence_id, reason_argume
nt_1, reason_argument_2, reason_argument_3, reason_argument_4, reason_argument_5
, time_suggested, creation_time, action_argument_1, action_argument_2, action_ar
gument_3, action_argument_4, action_argument_5, message_level, hosting_client_id
, process_id, host_id, host_nw_addr, instance_name, instance_number, user_id, ex
ecution_context_id, error_instance_id, context, metric_value) values (:1, :2, :3
, :4, :5, :6, :7, :8, :9, :10, :11, :12, :13, :14, :15, :16, :17, :18, :19, :20,
 :21, :22, :23, :24, :25, :26, :27, :28, :29, :30, :31, :32)                    

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
2019-09-29/21:48:31                                                             
                                                                                
SELECT NVL(AVG((VALUE*1000.0)/DURATION),0), NVL((((SUM(DURATION)/(60*1000))/60)*
100),0) FROM MGMT_SYSTEM_PERFORMANCE_LOG A, MGMT_PERFORMANCE_NAMES B WHERE :B1 =
 B.DISPLAY_NAME AND A.JOB_NAME = B.JOB_NAME AND A.TIME > (SYSDATE-(1/24)) AND A.
IS_TOTAL='Y' AND A.DURATION > 0                                                 
2019-09-29/21:48:01                                                             
                                                                                
SELECT OWNER FROM DBA_PROCEDURES WHERE OBJECT_NAME = 'MGMT_USER' AND PROCEDURE_N

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
AME = 'DROP_USER'                                                               
2019-09-29/21:46:01                                                             
                                                                                
select local_tran_id, global_tran_fmt, global_oracle_id, global_foreign_id,     
   state, status, heuristic_dflt,        session_vector, reco_vector, 3600*24*(s
ysdate-reco_time),        3600*24*(sysdate-nvl(heuristic_time,fail_time)), globa
l_commit#,        type#   from pending_trans$  where session_vector != '00000000
'                                                                               
2019-09-29/21:44:37                                                             

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
                                                                                
select SYS_CONTEXT('USERENV', 'SERVER_HOST'), SYS_CONTEXT('USERENV', 'DB_UNIQUE_
NAME'), SYS_CONTEXT('USERENV', 'INSTANCE_NAME'), SYS_CONTEXT('USERENV', 'SERVICE
_NAME'), INSTANCE_NUMBER, STARTUP_TIME, SYS_CONTEXT('USERENV', 'DB_DOMAIN') from
 v$instance where INSTANCE_NAME=SYS_CONTEXT('USERENV', 'INSTANCE_NAME')         
2019-09-29/21:44:23                                                             
                                                                                
select value$ from props$ where name = 'GLOBAL_DB_NAME'                         
2019-09-29/21:44:22                                                             

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
                                                                                
delete from WRH$_LATCH_CHILDREN_BL tab where (:beg_snap <= tab.snap_id and      
   tab.snap_id <= :end_snap and         dbid = :dbid)    and not exists (select 
1 from WRM$_BASELINE b                    where (tab.dbid = b.dbid) and         
                 (tab.snap_id >= b.start_snap_id) and                          (
tab.snap_id <= b.end_snap_id))                                                  
2019-09-29/21:43:41                                                             
                                                                                
delete from WRH$_ENQUEUE_STAT tab where (:beg_snap <= tab.snap_id and         ta

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
b.snap_id <= :end_snap and         dbid = :dbid)    and not exists (select 1 fro
m WRM$_BASELINE b                    where (tab.dbid = b.dbid) and              
            (tab.snap_id >= b.start_snap_id) and                          (tab.s
nap_id <= b.end_snap_id))                                                       
2019-09-29/21:43:41                                                             
                                                                                
delete from WRH$_COMP_IOSTAT tab where (:beg_snap <= tab.snap_id and         tab
.snap_id <= :end_snap and         dbid = :dbid)    and not exists (select 1 from
 WRM$_BASELINE b                    where (tab.dbid = b.dbid) and               

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
           (tab.snap_id >= b.start_snap_id) and                          (tab.sn
ap_id <= b.end_snap_id))                                                        
2019-09-29/21:43:41                                                             
                                                                                
delete from WRH$_IC_DEVICE_STATS tab where (:beg_snap <= tab.snap_id and        
 tab.snap_id <= :end_snap and         dbid = :dbid)    and not exists (select 1 
from WRM$_BASELINE b                    where (tab.dbid = b.dbid) and           
               (tab.snap_id >= b.start_snap_id) and                          (ta
b.snap_id <= b.end_snap_id))                                                    

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
2019-09-29/21:43:41                                                             
                                                                                
delete from WRM$_SNAP_ERROR tab where (:beg_snap <= tab.snap_id and         tab.
snap_id <= :end_snap and         dbid = :dbid)    and not exists (select 1 from 
WRM$_BASELINE b                    where (tab.dbid = b.dbid) and                
          (tab.snap_id >= b.start_snap_id) and                          (tab.sna
p_id <= b.end_snap_id))                                                         
2019-09-29/21:43:41                                                             
                                                                                

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
delete from WRH$_MEMORY_RESIZE_OPS tab where (:beg_snap <= tab.snap_id and      
   tab.snap_id <= :end_snap and         dbid = :dbid)    and not exists (select 
1 from WRM$_BASELINE b                    where (tab.dbid = b.dbid) and         
                 (tab.snap_id >= b.start_snap_id) and                          (
tab.snap_id <= b.end_snap_id))                                                  
2019-09-29/21:43:41                                                             
                                                                                
delete from WRH$_SQL_WORKAREA_HISTOGRAM tab where (:beg_snap <= tab.snap_id and 
        tab.snap_id <= :end_snap and         dbid = :dbid)    and not exists (se

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
lect 1 from WRM$_BASELINE b                    where (tab.dbid = b.dbid) and    
                      (tab.snap_id >= b.start_snap_id) and                      
    (tab.snap_id <= b.end_snap_id))                                             
2019-09-29/21:43:41                                                             
                                                                                
delete from WRH$_RULE_SET tab where (:beg_snap <= tab.snap_id and         tab.sn
ap_id <= :end_snap and         dbid = :dbid)    and not exists (select 1 from WR
M$_BASELINE b                    where (tab.dbid = b.dbid) and                  
        (tab.snap_id >= b.start_snap_id) and                          (tab.snap_

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
id <= b.end_snap_id))                                                           
2019-09-29/21:43:41                                                             
                                                                                
delete from WRM$_SNAPSHOT   where :beg_snap <= snap_id and         snap_id <= :e
nd_snap and         status = 2 and         dbid = :dbid                         
2019-09-29/21:43:41                                                             
                                                                                
delete from WRH$_THREAD tab where (:beg_snap <= tab.snap_id and         tab.snap
_id <= :end_snap and         dbid = :dbid)    and not exists (select 1 from WRM$

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
_BASELINE b                    where (tab.dbid = b.dbid) and                    
      (tab.snap_id >= b.start_snap_id) and                          (tab.snap_id
 <= b.end_snap_id))                                                             
2019-09-29/21:43:41                                                             
                                                                                
delete from WRH$_STREAMS_POOL_ADVICE tab where (:beg_snap <= tab.snap_id and    
     tab.snap_id <= :end_snap and         dbid = :dbid)    and not exists (selec
t 1 from WRM$_BASELINE b                    where (tab.dbid = b.dbid) and       
                   (tab.snap_id >= b.start_snap_id) and                         

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
 (tab.snap_id <= b.end_snap_id))                                                
2019-09-29/21:43:41                                                             
                                                                                
update seq$ set increment$=:2,minvalue=:3,maxvalue=:4,cycle#=:5,order$=:6,cache=
:7,highwater=:8,audit$=:9,flags=:10 where obj#=:1                               
2019-09-29/21:43:41                                                             
                                                                                
delete from WRH$_RSRC_CONSUMER_GROUP tab where (:beg_snap <= tab.snap_id and    
     tab.snap_id <= :end_snap and         dbid = :dbid)    and not exists (selec

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
t 1 from WRM$_BASELINE b                    where (tab.dbid = b.dbid) and       
                   (tab.snap_id >= b.start_snap_id) and                         
 (tab.snap_id <= b.end_snap_id))                                                
2019-09-29/21:43:41                                                             
                                                                                
delete from WRH$_IOSTAT_DETAIL tab where (:beg_snap <= tab.snap_id and         t
ab.snap_id <= :end_snap and         dbid = :dbid)    and not exists (select 1 fr
om WRM$_BASELINE b                    where (tab.dbid = b.dbid) and             
             (tab.snap_id >= b.start_snap_id) and                          (tab.

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
snap_id <= b.end_snap_id))                                                      
2019-09-29/21:43:41                                                             
                                                                                
delete from WRH$_PERSISTENT_QUEUES tab where (:beg_snap <= tab.snap_id and      
   tab.snap_id <= :end_snap and         dbid = :dbid)    and not exists (select 
1 from WRM$_BASELINE b                    where (tab.dbid = b.dbid) and         
                 (tab.snap_id >= b.start_snap_id) and                          (
tab.snap_id <= b.end_snap_id))                                                  
2019-09-29/21:43:41                                                             

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
                                                                                
delete from WRH$_ACTIVE_SESSION_HISTORY_BL tab where (:beg_snap <= tab.snap_id a
nd         tab.snap_id <= :end_snap and         dbid = :dbid)    and not exists 
(select 1 from WRM$_BASELINE b                    where (tab.dbid = b.dbid) and 
                         (tab.snap_id >= b.start_snap_id) and                   
       (tab.snap_id <= b.end_snap_id))                                          
2019-09-29/21:43:41                                                             
                                                                                
delete from WRI$_SEGADV_CNTRLTAB where start_time < :1                          

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
2019-09-29/21:43:41                                                             
                                                                                
delete from WRH$_OSSTAT_BL tab where (:beg_snap <= tab.snap_id and         tab.s
nap_id <= :end_snap and         dbid = :dbid)    and not exists (select 1 from W
RM$_BASELINE b                    where (tab.dbid = b.dbid) and                 
         (tab.snap_id >= b.start_snap_id) and                          (tab.snap
_id <= b.end_snap_id))                                                          
2019-09-29/21:43:41                                                             
                                                                                

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
delete from WRH$_CURRENT_BLOCK_SERVER tab where (:beg_snap <= tab.snap_id and   
      tab.snap_id <= :end_snap and         dbid = :dbid)    and not exists (sele
ct 1 from WRM$_BASELINE b                    where (tab.dbid = b.dbid) and      
                    (tab.snap_id >= b.start_snap_id) and                        
  (tab.snap_id <= b.end_snap_id))                                               
2019-09-29/21:43:41                                                             
                                                                                
delete from WRH$_MUTEX_SLEEP tab where (:beg_snap <= tab.snap_id and         tab
.snap_id <= :end_snap and         dbid = :dbid)    and not exists (select 1 from

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
 WRM$_BASELINE b                    where (tab.dbid = b.dbid) and               
           (tab.snap_id >= b.start_snap_id) and                          (tab.sn
ap_id <= b.end_snap_id))                                                        
2019-09-29/21:43:41                                                             
                                                                                
delete from WRH$_SGA tab where (:beg_snap <= tab.snap_id and         tab.snap_id
 <= :end_snap and         dbid = :dbid)    and not exists (select 1 from WRM$_BA
SELINE b                    where (tab.dbid = b.dbid) and                       
   (tab.snap_id >= b.start_snap_id) and                          (tab.snap_id <=

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
 b.end_snap_id))                                                                
2019-09-29/21:43:41                                                             
                                                                                
delete from WRH$_FILESTATXS_BL tab where (:beg_snap <= tab.snap_id and         t
ab.snap_id <= :end_snap and         dbid = :dbid)    and not exists (select 1 fr
om WRM$_BASELINE b                    where (tab.dbid = b.dbid) and             
             (tab.snap_id >= b.start_snap_id) and                          (tab.
snap_id <= b.end_snap_id))                                                      
2019-09-29/21:43:41                                                             

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
                                                                                
delete from WRH$_CLUSTER_INTERCON tab where (:beg_snap <= tab.snap_id and       
  tab.snap_id <= :end_snap and         dbid = :dbid)    and not exists (select 1
 from WRM$_BASELINE b                    where (tab.dbid = b.dbid) and          
                (tab.snap_id >= b.start_snap_id) and                          (t
ab.snap_id <= b.end_snap_id))                                                   
2019-09-29/21:43:41                                                             
                                                                                
delete from WRH$_SYSTEM_EVENT_BL tab where (:beg_snap <= tab.snap_id and        

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
 tab.snap_id <= :end_snap and         dbid = :dbid)    and not exists (select 1 
from WRM$_BASELINE b                    where (tab.dbid = b.dbid) and           
               (tab.snap_id >= b.start_snap_id) and                          (ta
b.snap_id <= b.end_snap_id))                                                    
2019-09-29/21:43:41                                                             
                                                                                
delete from WRH$_SERVICE_WAIT_CLASS_BL tab where (:beg_snap <= tab.snap_id and  
       tab.snap_id <= :end_snap and         dbid = :dbid)    and not exists (sel
ect 1 from WRM$_BASELINE b                    where (tab.dbid = b.dbid) and     

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
                     (tab.snap_id >= b.start_snap_id) and                       
   (tab.snap_id <= b.end_snap_id))                                              
2019-09-29/21:43:41                                                             
                                                                                
delete from WRH$_SERVICE_STAT_BL tab where (:beg_snap <= tab.snap_id and        
 tab.snap_id <= :end_snap and         dbid = :dbid)    and not exists (select 1 
from WRM$_BASELINE b                    where (tab.dbid = b.dbid) and           
               (tab.snap_id >= b.start_snap_id) and                          (ta
b.snap_id <= b.end_snap_id))                                                    

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
2019-09-29/21:43:41                                                             
                                                                                
delete from WRH$_BUFFERED_SUBSCRIBERS tab where (:beg_snap <= tab.snap_id and   
      tab.snap_id <= :end_snap and         dbid = :dbid)    and not exists (sele
ct 1 from WRM$_BASELINE b                    where (tab.dbid = b.dbid) and      
                    (tab.snap_id >= b.start_snap_id) and                        
  (tab.snap_id <= b.end_snap_id))                                               
2019-09-29/21:43:41                                                             
                                                                                

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
delete from WRH$_SQL_PLAN tab where (:beg_snap <= tab.snap_id and         tab.sn
ap_id <= :end_snap and         dbid = :dbid)    and not exists (select 1 from WR
M$_BASELINE b                    where (tab.dbid = b.dbid) and                  
        (tab.snap_id >= b.start_snap_id) and                          (tab.snap_
id <= b.end_snap_id))                                                           
2019-09-29/21:43:41                                                             
                                                                                
delete from WRH$_BUFFER_POOL_STATISTICS tab where (:beg_snap <= tab.snap_id and 
        tab.snap_id <= :end_snap and         dbid = :dbid)    and not exists (se

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
lect 1 from WRM$_BASELINE b                    where (tab.dbid = b.dbid) and    
                      (tab.snap_id >= b.start_snap_id) and                      
    (tab.snap_id <= b.end_snap_id))                                             
2019-09-29/21:43:41                                                             
                                                                                
delete from WRH$_LIBRARYCACHE tab where (:beg_snap <= tab.snap_id and         ta
b.snap_id <= :end_snap and         dbid = :dbid)    and not exists (select 1 fro
m WRM$_BASELINE b                    where (tab.dbid = b.dbid) and              
            (tab.snap_id >= b.start_snap_id) and                          (tab.s

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
nap_id <= b.end_snap_id))                                                       
2019-09-29/21:43:41                                                             
                                                                                
delete from WRH$_SGASTAT_BL tab where (:beg_snap <= tab.snap_id and         tab.
snap_id <= :end_snap and         dbid = :dbid)    and not exists (select 1 from 
WRM$_BASELINE b                    where (tab.dbid = b.dbid) and                
          (tab.snap_id >= b.start_snap_id) and                          (tab.sna
p_id <= b.end_snap_id))                                                         
2019-09-29/21:43:41                                                             

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
                                                                                
delete from WRH$_DISPATCHER tab where (:beg_snap <= tab.snap_id and         tab.
snap_id <= :end_snap and         dbid = :dbid)    and not exists (select 1 from 
WRM$_BASELINE b                    where (tab.dbid = b.dbid) and                
          (tab.snap_id >= b.start_snap_id) and                          (tab.sna
p_id <= b.end_snap_id))                                                         
2019-09-29/21:43:41                                                             
                                                                                
delete from WRH$_MTTR_TARGET_ADVICE tab where (:beg_snap <= tab.snap_id and     

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
    tab.snap_id <= :end_snap and         dbid = :dbid)    and not exists (select
 1 from WRM$_BASELINE b                    where (tab.dbid = b.dbid) and        
                  (tab.snap_id >= b.start_snap_id) and                          
(tab.snap_id <= b.end_snap_id))                                                 
2019-09-29/21:43:41                                                             
                                                                                
delete from WRH$_WAITSTAT_BL tab where (:beg_snap <= tab.snap_id and         tab
.snap_id <= :end_snap and         dbid = :dbid)    and not exists (select 1 from
 WRM$_BASELINE b                    where (tab.dbid = b.dbid) and               

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
           (tab.snap_id >= b.start_snap_id) and                          (tab.sn
ap_id <= b.end_snap_id))                                                        
2019-09-29/21:43:41                                                             
                                                                                
delete from WRH$_SEG_STAT_BL tab where (:beg_snap <= tab.snap_id and         tab
.snap_id <= :end_snap and         dbid = :dbid)    and not exists (select 1 from
 WRM$_BASELINE b                    where (tab.dbid = b.dbid) and               
           (tab.snap_id >= b.start_snap_id) and                          (tab.sn
ap_id <= b.end_snap_id))                                                        

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
2019-09-29/21:43:41                                                             
                                                                                
delete from WRH$_DLM_MISC_BL tab where (:beg_snap <= tab.snap_id and         tab
.snap_id <= :end_snap and         dbid = :dbid)    and not exists (select 1 from
 WRM$_BASELINE b                    where (tab.dbid = b.dbid) and               
           (tab.snap_id >= b.start_snap_id) and                          (tab.sn
ap_id <= b.end_snap_id))                                                        
2019-09-29/21:43:41                                                             
                                                                                

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
delete from WRH$_LATCH_BL tab where (:beg_snap <= tab.snap_id and         tab.sn
ap_id <= :end_snap and         dbid = :dbid)    and not exists (select 1 from WR
M$_BASELINE b                    where (tab.dbid = b.dbid) and                  
        (tab.snap_id >= b.start_snap_id) and                          (tab.snap_
id <= b.end_snap_id))                                                           
2019-09-29/21:43:41                                                             
                                                                                
delete from WRH$_INST_CACHE_TRANSFER_BL tab where (:beg_snap <= tab.snap_id and 
        tab.snap_id <= :end_snap and         dbid = :dbid)    and not exists (se

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
lect 1 from WRM$_BASELINE b                    where (tab.dbid = b.dbid) and    
                      (tab.snap_id >= b.start_snap_id) and                      
    (tab.snap_id <= b.end_snap_id))                                             
2019-09-29/21:43:41                                                             
                                                                                
delete from WRH$_STREAMS_CAPTURE tab where (:beg_snap <= tab.snap_id and        
 tab.snap_id <= :end_snap and         dbid = :dbid)    and not exists (select 1 
from WRM$_BASELINE b                    where (tab.dbid = b.dbid) and           
               (tab.snap_id >= b.start_snap_id) and                          (ta

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
b.snap_id <= b.end_snap_id))                                                    
2019-09-29/21:43:41                                                             
                                                                                
delete from WRH$_OPTIMIZER_ENV tab where (:beg_snap <= tab.snap_id and         t
ab.snap_id <= :end_snap and         dbid = :dbid)    and not exists (select 1 fr
om WRM$_BASELINE b                    where (tab.dbid = b.dbid) and             
             (tab.snap_id >= b.start_snap_id) and                          (tab.
snap_id <= b.end_snap_id))                                                      
2019-09-29/21:43:41                                                             

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
                                                                                
BEGIN    prvt_advisor.delete_expired_tasks;  END;                               
2019-09-29/21:43:41                                                             
                                                                                
delete from WRH$_SHARED_POOL_ADVICE tab where (:beg_snap <= tab.snap_id and     
    tab.snap_id <= :end_snap and         dbid = :dbid)    and not exists (select
 1 from WRM$_BASELINE b                    where (tab.dbid = b.dbid) and        
                  (tab.snap_id >= b.start_snap_id) and                          
(tab.snap_id <= b.end_snap_id))                                                 

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
2019-09-29/21:43:41                                                             
                                                                                
delete from WRH$_FILEMETRIC_HISTORY tab where (:beg_snap <= tab.snap_id and     
    tab.snap_id <= :end_snap and         dbid = :dbid)    and not exists (select
 1 from WRM$_BASELINE b                    where (tab.dbid = b.dbid) and        
                  (tab.snap_id >= b.start_snap_id) and                          
(tab.snap_id <= b.end_snap_id))                                                 
2019-09-29/21:43:41                                                             
                                                                                

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
delete from WRH$_MEMORY_TARGET_ADVICE tab where (:beg_snap <= tab.snap_id and   
      tab.snap_id <= :end_snap and         dbid = :dbid)    and not exists (sele
ct 1 from WRM$_BASELINE b                    where (tab.dbid = b.dbid) and      
                    (tab.snap_id >= b.start_snap_id) and                        
  (tab.snap_id <= b.end_snap_id))                                               
2019-09-29/21:43:41                                                             
                                                                                
delete from WRH$_ROWCACHE_SUMMARY_BL tab where (:beg_snap <= tab.snap_id and    
     tab.snap_id <= :end_snap and         dbid = :dbid)    and not exists (selec

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
t 1 from WRM$_BASELINE b                    where (tab.dbid = b.dbid) and       
                   (tab.snap_id >= b.start_snap_id) and                         
 (tab.snap_id <= b.end_snap_id))                                                
2019-09-29/21:43:41                                                             
                                                                                
delete from WRH$_TEMPSTATXS tab where (:beg_snap <= tab.snap_id and         tab.
snap_id <= :end_snap and         dbid = :dbid)    and not exists (select 1 from 
WRM$_BASELINE b                    where (tab.dbid = b.dbid) and                
          (tab.snap_id >= b.start_snap_id) and                          (tab.sna

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
p_id <= b.end_snap_id))                                                         
2019-09-29/21:43:41                                                             
                                                                                
SELECT T.TASK_ID, E.EXECUTION_NAME FROM SYS.DBA_ADVISOR_TASKS T, SYS.DBA_ADVISOR
_EXECUTIONS E, WRI$_ADV_PARAMETERS P WHERE T.TASK_ID = P.TASK_ID AND T.TASK_ID =
 E.TASK_ID AND T.STATUS# <> :B2 AND T.READ_ONLY = 'FALSE' AND P.NAME = 'EXECUTIO
N_DAYS_TO_EXPIRE' AND PRVT_ADVISOR.CHECK_EXPIRATION_COMP(:B1 , E.EXECUTION_LAST_
MODIFIED, P.VALUE) = 1                                                          
2019-09-29/21:43:41                                                             

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
                                                                                
delete from WRH$_SQLSTAT_BL tab where (:beg_snap <= tab.snap_id and         tab.
snap_id <= :end_snap and         dbid = :dbid)    and not exists (select 1 from 
WRM$_BASELINE b                    where (tab.dbid = b.dbid) and                
          (tab.snap_id >= b.start_snap_id) and                          (tab.sna
p_id <= b.end_snap_id))                                                         
2019-09-29/21:43:41                                                             
                                                                                
delete from WRH$_INTERCONNECT_PINGS_BL tab where (:beg_snap <= tab.snap_id and  

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
       tab.snap_id <= :end_snap and         dbid = :dbid)    and not exists (sel
ect 1 from WRM$_BASELINE b                    where (tab.dbid = b.dbid) and     
                     (tab.snap_id >= b.start_snap_id) and                       
   (tab.snap_id <= b.end_snap_id))                                              
2019-09-29/21:43:41                                                             
                                                                                
delete from WRH$_RSRC_PLAN tab where (:beg_snap <= tab.snap_id and         tab.s
nap_id <= :end_snap and         dbid = :dbid)    and not exists (select 1 from W
RM$_BASELINE b                    where (tab.dbid = b.dbid) and                 

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
         (tab.snap_id >= b.start_snap_id) and                          (tab.snap
_id <= b.end_snap_id))                                                          
2019-09-29/21:43:41                                                             
                                                                                
delete from WRH$_SYSMETRIC_SUMMARY tab where (:beg_snap <= tab.snap_id and      
   tab.snap_id <= :end_snap and         dbid = :dbid)    and not exists (select 
1 from WRM$_BASELINE b                    where (tab.dbid = b.dbid) and         
                 (tab.snap_id >= b.start_snap_id) and                          (
tab.snap_id <= b.end_snap_id))                                                  

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
2019-09-29/21:43:41                                                             
                                                                                
delete from WRH$_SQL_SUMMARY tab where (:beg_snap <= tab.snap_id and         tab
.snap_id <= :end_snap and         dbid = :dbid)    and not exists (select 1 from
 WRM$_BASELINE b                    where (tab.dbid = b.dbid) and               
           (tab.snap_id >= b.start_snap_id) and                          (tab.sn
ap_id <= b.end_snap_id))                                                        
2019-09-29/21:43:41                                                             
                                                                                

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
delete from WRH$_PERSISTENT_SUBSCRIBERS tab where (:beg_snap <= tab.snap_id and 
        tab.snap_id <= :end_snap and         dbid = :dbid)    and not exists (se
lect 1 from WRM$_BASELINE b                    where (tab.dbid = b.dbid) and    
                      (tab.snap_id >= b.start_snap_id) and                      
    (tab.snap_id <= b.end_snap_id))                                             
2019-09-29/21:43:41                                                             
                                                                                
SELECT T.TASK_ID FROM SYS.DBA_ADVISOR_TASKS T, WRI$_ADV_PARAMETERS P WHERE T.TAS
K_ID = P.TASK_ID AND T.STATUS# <> :B2 AND T.READ_ONLY = 'FALSE' AND P.NAME = 'DA

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
YS_TO_EXPIRE' AND PRVT_ADVISOR.CHECK_EXPIRATION_COMP(:B1 , T.LAST_MODIFIED, P.VA
LUE) = 1                                                                        
2019-09-29/21:43:41                                                             
                                                                                
delete from WRH$_DATAFILE tab where (:beg_snap <= tab.snap_id and         tab.sn
ap_id <= :end_snap and         dbid = :dbid)    and not exists (select 1 from WR
M$_BASELINE b                    where (tab.dbid = b.dbid) and                  
        (tab.snap_id >= b.start_snap_id) and                          (tab.snap_
id <= b.end_snap_id))                                                           

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
2019-09-29/21:43:41                                                             
                                                                                
delete from WRH$_SESS_TIME_STATS tab where (:beg_snap <= tab.snap_id and        
 tab.snap_id <= :end_snap and         dbid = :dbid)    and not exists (select 1 
from WRM$_BASELINE b                    where (tab.dbid = b.dbid) and           
               (tab.snap_id >= b.start_snap_id) and                          (ta
b.snap_id <= b.end_snap_id))                                                    
2019-09-29/21:43:41                                                             
                                                                                

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
delete from WRH$_SERVICE_NAME tab where (:beg_snap <= tab.snap_id and         ta
b.snap_id <= :end_snap and         dbid = :dbid)    and not exists (select 1 fro
m WRM$_BASELINE b                    where (tab.dbid = b.dbid) and              
            (tab.snap_id >= b.start_snap_id) and                          (tab.s
nap_id <= b.end_snap_id))                                                       
2019-09-29/21:43:41                                                             
                                                                                
delete from WRH$_SQL_BIND_METADATA tab where (:beg_snap <= tab.snap_id and      
   tab.snap_id <= :end_snap and         dbid = :dbid)    and not exists (select 

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
1 from WRM$_BASELINE b                    where (tab.dbid = b.dbid) and         
                 (tab.snap_id >= b.start_snap_id) and                          (
tab.snap_id <= b.end_snap_id))                                                  
2019-09-29/21:43:41                                                             
                                                                                
delete from WRH$_SESSMETRIC_HISTORY tab where (:beg_snap <= tab.snap_id and     
    tab.snap_id <= :end_snap and         dbid = :dbid)    and not exists (select
 1 from WRM$_BASELINE b                    where (tab.dbid = b.dbid) and        
                  (tab.snap_id >= b.start_snap_id) and                          

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
(tab.snap_id <= b.end_snap_id))                                                 
2019-09-29/21:43:41                                                             
                                                                                
select procedure#,procedurename,properties,itypeobj# from procedureinfo$ where o
bj#=:1 order by procedurename desc, overload# desc                              
2019-09-29/21:43:41                                                             
                                                                                
delete from WRH$_LATCH_PARENT_BL tab where (:beg_snap <= tab.snap_id and        
 tab.snap_id <= :end_snap and         dbid = :dbid)    and not exists (select 1 

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
from WRM$_BASELINE b                    where (tab.dbid = b.dbid) and           
               (tab.snap_id >= b.start_snap_id) and                          (ta
b.snap_id <= b.end_snap_id))                                                    
2019-09-29/21:43:41                                                             
                                                                                
delete from WRH$_SYS_TIME_MODEL_BL tab where (:beg_snap <= tab.snap_id and      
   tab.snap_id <= :end_snap and         dbid = :dbid)    and not exists (select 
1 from WRM$_BASELINE b                    where (tab.dbid = b.dbid) and         
                 (tab.snap_id >= b.start_snap_id) and                          (

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
tab.snap_id <= b.end_snap_id))                                                  
2019-09-29/21:43:41                                                             
                                                                                
delete from WRH$_SYSMETRIC_HISTORY tab where (:beg_snap <= tab.snap_id and      
   tab.snap_id <= :end_snap and         dbid = :dbid)    and not exists (select 
1 from WRM$_BASELINE b                    where (tab.dbid = b.dbid) and         
                 (tab.snap_id >= b.start_snap_id) and                          (
tab.snap_id <= b.end_snap_id))                                                  
2019-09-29/21:43:41                                                             

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
                                                                                
delete from wrm$_wr_usage tab   where usage_time <=    (select nvl(max(last_samp
le_date), sysdate-7)       from wri$_dbu_usage_sample)                          
2019-09-29/21:43:41                                                             
                                                                                
delete from WRH$_BG_EVENT_SUMMARY tab where (:beg_snap <= tab.snap_id and       
  tab.snap_id <= :end_snap and         dbid = :dbid)    and not exists (select 1
 from WRM$_BASELINE b                    where (tab.dbid = b.dbid) and          
                (tab.snap_id >= b.start_snap_id) and                          (t

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
ab.snap_id <= b.end_snap_id))                                                   
2019-09-29/21:43:41                                                             
                                                                                
delete from WRH$_MEM_DYNAMIC_COMP tab where (:beg_snap <= tab.snap_id and       
  tab.snap_id <= :end_snap and         dbid = :dbid)    and not exists (select 1
 from WRM$_BASELINE b                    where (tab.dbid = b.dbid) and          
                (tab.snap_id >= b.start_snap_id) and                          (t
ab.snap_id <= b.end_snap_id))                                                   
2019-09-29/21:43:41                                                             

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
                                                                                
delete from WRH$_IOSTAT_FILETYPE tab where (:beg_snap <= tab.snap_id and        
 tab.snap_id <= :end_snap and         dbid = :dbid)    and not exists (select 1 
from WRM$_BASELINE b                    where (tab.dbid = b.dbid) and           
               (tab.snap_id >= b.start_snap_id) and                          (ta
b.snap_id <= b.end_snap_id))                                                    
2019-09-29/21:43:41                                                             
                                                                                
select a.default_selectivity                             from association$ a    

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
                                  where a.obj# = :1                             
             and a.property = :2                                                
2019-09-29/21:43:41                                                             
                                                                                
delete from WRH$_EVENT_HISTOGRAM_BL tab where (:beg_snap <= tab.snap_id and     
    tab.snap_id <= :end_snap and         dbid = :dbid)    and not exists (select
 1 from WRM$_BASELINE b                    where (tab.dbid = b.dbid) and        
                  (tab.snap_id >= b.start_snap_id) and                          
(tab.snap_id <= b.end_snap_id))                                                 

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
2019-09-29/21:43:41                                                             
                                                                                
delete from WRH$_LOG tab where (:beg_snap <= tab.snap_id and         tab.snap_id
 <= :end_snap and         dbid = :dbid)    and not exists (select 1 from WRM$_BA
SELINE b                    where (tab.dbid = b.dbid) and                       
   (tab.snap_id >= b.start_snap_id) and                          (tab.snap_id <=
 b.end_snap_id))                                                                
2019-09-29/21:43:41                                                             
                                                                                

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
delete from WRH$_LATCH_MISSES_SUMMARY_BL tab where (:beg_snap <= tab.snap_id and
         tab.snap_id <= :end_snap and         dbid = :dbid)    and not exists (s
elect 1 from WRM$_BASELINE b                    where (tab.dbid = b.dbid) and   
                       (tab.snap_id >= b.start_snap_id) and                     
     (tab.snap_id <= b.end_snap_id))                                            
2019-09-29/21:43:41                                                             
                                                                                
delete from WRH$_PGA_TARGET_ADVICE tab where (:beg_snap <= tab.snap_id and      
   tab.snap_id <= :end_snap and         dbid = :dbid)    and not exists (select 

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
1 from WRM$_BASELINE b                    where (tab.dbid = b.dbid) and         
                 (tab.snap_id >= b.start_snap_id) and                          (
tab.snap_id <= b.end_snap_id))                                                  
2019-09-29/21:43:41                                                             
                                                                                
delete from WRH$_BUFFERED_QUEUES tab where (:beg_snap <= tab.snap_id and        
 tab.snap_id <= :end_snap and         dbid = :dbid)    and not exists (select 1 
from WRM$_BASELINE b                    where (tab.dbid = b.dbid) and           
               (tab.snap_id >= b.start_snap_id) and                          (ta

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
b.snap_id <= b.end_snap_id))                                                    
2019-09-29/21:43:41                                                             
                                                                                
delete from WRH$_PGASTAT tab where (:beg_snap <= tab.snap_id and         tab.sna
p_id <= :end_snap and         dbid = :dbid)    and not exists (select 1 from WRM
$_BASELINE b                    where (tab.dbid = b.dbid) and                   
       (tab.snap_id >= b.start_snap_id) and                          (tab.snap_i
d <= b.end_snap_id))                                                            
2019-09-29/21:43:41                                                             

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
                                                                                
delete from WRH$_TABLESPACE_STAT_BL tab where (:beg_snap <= tab.snap_id and     
    tab.snap_id <= :end_snap and         dbid = :dbid)    and not exists (select
 1 from WRM$_BASELINE b                    where (tab.dbid = b.dbid) and        
                  (tab.snap_id >= b.start_snap_id) and                          
(tab.snap_id <= b.end_snap_id))                                                 
2019-09-29/21:43:41                                                             
                                                                                
delete from WRH$_SYSSTAT_BL tab where (:beg_snap <= tab.snap_id and         tab.

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
snap_id <= :end_snap and         dbid = :dbid)    and not exists (select 1 from 
WRM$_BASELINE b                    where (tab.dbid = b.dbid) and                
          (tab.snap_id >= b.start_snap_id) and                          (tab.sna
p_id <= b.end_snap_id))                                                         
2019-09-29/21:43:41                                                             
                                                                                
BEGIN    prvt_advisor.recover_stale_tasks;  END;                                
2019-09-29/21:43:41                                                             
                                                                                

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
delete from WRH$_WAITCLASSMETRIC_HISTORY tab where (:beg_snap <= tab.snap_id and
         tab.snap_id <= :end_snap and         dbid = :dbid)    and not exists (s
elect 1 from WRM$_BASELINE b                    where (tab.dbid = b.dbid) and   
                       (tab.snap_id >= b.start_snap_id) and                     
     (tab.snap_id <= b.end_snap_id))                                            
2019-09-29/21:43:41                                                             
                                                                                
select WRM$_DEEP_PURGE_INTERVAL.nextval into :bind1 from dual                   
2019-09-29/21:43:41                                                             

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
                                                                                
delete from WRH$_SGA_TARGET_ADVICE tab where (:beg_snap <= tab.snap_id and      
   tab.snap_id <= :end_snap and         dbid = :dbid)    and not exists (select 
1 from WRM$_BASELINE b                    where (tab.dbid = b.dbid) and         
                 (tab.snap_id >= b.start_snap_id) and                          (
tab.snap_id <= b.end_snap_id))                                                  
2019-09-29/21:43:41                                                             
                                                                                
delete from WRH$_CR_BLOCK_SERVER tab where (:beg_snap <= tab.snap_id and        

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
 tab.snap_id <= :end_snap and         dbid = :dbid)    and not exists (select 1 
from WRM$_BASELINE b                    where (tab.dbid = b.dbid) and           
               (tab.snap_id >= b.start_snap_id) and                          (ta
b.snap_id <= b.end_snap_id))                                                    
2019-09-29/21:43:41                                                             
                                                                                
delete from WRH$_INSTANCE_RECOVERY tab where (:beg_snap <= tab.snap_id and      
   tab.snap_id <= :end_snap and         dbid = :dbid)    and not exists (select 
1 from WRM$_BASELINE b                    where (tab.dbid = b.dbid) and         

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
                 (tab.snap_id >= b.start_snap_id) and                          (
tab.snap_id <= b.end_snap_id))                                                  
2019-09-29/21:43:41                                                             
                                                                                
delete from WRH$_DYN_REMASTER_STATS tab where (:beg_snap <= tab.snap_id and     
    tab.snap_id <= :end_snap and         dbid = :dbid)    and not exists (select
 1 from WRM$_BASELINE b                    where (tab.dbid = b.dbid) and        
                  (tab.snap_id >= b.start_snap_id) and                          
(tab.snap_id <= b.end_snap_id))                                                 

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
2019-09-29/21:43:41                                                             
                                                                                
delete from WRH$_PARAMETER_BL tab where (:beg_snap <= tab.snap_id and         ta
b.snap_id <= :end_snap and         dbid = :dbid)    and not exists (select 1 fro
m WRM$_BASELINE b                    where (tab.dbid = b.dbid) and              
            (tab.snap_id >= b.start_snap_id) and                          (tab.s
nap_id <= b.end_snap_id))                                                       
2019-09-29/21:43:41                                                             
                                                                                

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
delete from WRH$_DB_CACHE_ADVICE_BL tab where (:beg_snap <= tab.snap_id and     
    tab.snap_id <= :end_snap and         dbid = :dbid)    and not exists (select
 1 from WRM$_BASELINE b                    where (tab.dbid = b.dbid) and        
                  (tab.snap_id >= b.start_snap_id) and                          
(tab.snap_id <= b.end_snap_id))                                                 
2019-09-29/21:43:41                                                             
                                                                                
delete from WRH$_UNDOSTAT tab where (:beg_snap <= tab.snap_id and         tab.sn
ap_id <= :end_snap and         dbid = :dbid)    and not exists (select 1 from WR

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
M$_BASELINE b                    where (tab.dbid = b.dbid) and                  
        (tab.snap_id >= b.start_snap_id) and                          (tab.snap_
id <= b.end_snap_id))                                                           
2019-09-29/21:43:41                                                             
                                                                                
delete from WRH$_PROCESS_MEMORY_SUMMARY tab where (:beg_snap <= tab.snap_id and 
        tab.snap_id <= :end_snap and         dbid = :dbid)    and not exists (se
lect 1 from WRM$_BASELINE b                    where (tab.dbid = b.dbid) and    
                      (tab.snap_id >= b.start_snap_id) and                      

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
    (tab.snap_id <= b.end_snap_id))                                             
2019-09-29/21:43:41                                                             
                                                                                
SELECT TASK_ID FROM SYS.DBA_ADVISOR_TASKS WHERE STATUS# = :B1                   
2019-09-29/21:43:41                                                             
                                                                                
delete from WRH$_RESOURCE_LIMIT tab where (:beg_snap <= tab.snap_id and         
tab.snap_id <= :end_snap and         dbid = :dbid)    and not exists (select 1 f
rom WRM$_BASELINE b                    where (tab.dbid = b.dbid) and            

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
              (tab.snap_id >= b.start_snap_id) and                          (tab
.snap_id <= b.end_snap_id))                                                     
2019-09-29/21:43:41                                                             
                                                                                
delete from WRH$_TABLESPACE_SPACE_USAGE tab where (:beg_snap <= tab.snap_id and 
        tab.snap_id <= :end_snap and         dbid = :dbid)    and not exists (se
lect 1 from WRM$_BASELINE b                    where (tab.dbid = b.dbid) and    
                      (tab.snap_id >= b.start_snap_id) and                      
    (tab.snap_id <= b.end_snap_id))                                             

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
2019-09-29/21:43:41                                                             
                                                                                
delete from WRH$_IC_CLIENT_STATS tab where (:beg_snap <= tab.snap_id and        
 tab.snap_id <= :end_snap and         dbid = :dbid)    and not exists (select 1 
from WRM$_BASELINE b                    where (tab.dbid = b.dbid) and           
               (tab.snap_id >= b.start_snap_id) and                          (ta
b.snap_id <= b.end_snap_id))                                                    
2019-09-29/21:43:41                                                             
                                                                                

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
delete from WRH$_SHARED_SERVER_SUMMARY tab where (:beg_snap <= tab.snap_id and  
       tab.snap_id <= :end_snap and         dbid = :dbid)    and not exists (sel
ect 1 from WRM$_BASELINE b                    where (tab.dbid = b.dbid) and     
                     (tab.snap_id >= b.start_snap_id) and                       
   (tab.snap_id <= b.end_snap_id))                                              
2019-09-29/21:43:41                                                             
                                                                                
delete from WRH$_TEMPFILE tab where (:beg_snap <= tab.snap_id and         tab.sn
ap_id <= :end_snap and         dbid = :dbid)    and not exists (select 1 from WR

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
M$_BASELINE b                    where (tab.dbid = b.dbid) and                  
        (tab.snap_id >= b.start_snap_id) and                          (tab.snap_
id <= b.end_snap_id))                                                           
2019-09-29/21:43:41                                                             
                                                                                
delete from WRH$_STREAMS_APPLY_SUM tab where (:beg_snap <= tab.snap_id and      
   tab.snap_id <= :end_snap and         dbid = :dbid)    and not exists (select 
1 from WRM$_BASELINE b                    where (tab.dbid = b.dbid) and         
                 (tab.snap_id >= b.start_snap_id) and                          (

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
tab.snap_id <= b.end_snap_id))                                                  
2019-09-29/21:43:41                                                             
                                                                                
select max(last_number) into :bind1 from dba_sequences where sequence_owner='SYS
' and sequence_name='WRM$_DEEP_PURGE_INTERVAL'                                  
2019-09-29/21:43:41                                                             
                                                                                
delete from WRH$_JAVA_POOL_ADVICE tab where (:beg_snap <= tab.snap_id and       
  tab.snap_id <= :end_snap and         dbid = :dbid)    and not exists (select 1

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
 from WRM$_BASELINE b                    where (tab.dbid = b.dbid) and          
                (tab.snap_id >= b.start_snap_id) and                          (t
ab.snap_id <= b.end_snap_id))                                                   
2019-09-29/21:43:41                                                             
                                                                                
delete from WRH$_SEG_STAT_OBJ tab where (:beg_snap <= tab.snap_id and         ta
b.snap_id <= :end_snap and         dbid = :dbid)    and not exists (select 1 fro
m WRM$_BASELINE b                    where (tab.dbid = b.dbid) and              
            (tab.snap_id >= b.start_snap_id) and                          (tab.s

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
nap_id <= b.end_snap_id))                                                       
2019-09-29/21:43:41                                                             
                                                                                
delete from WRH$_IOSTAT_FUNCTION tab where (:beg_snap <= tab.snap_id and        
 tab.snap_id <= :end_snap and         dbid = :dbid)    and not exists (select 1 
from WRM$_BASELINE b                    where (tab.dbid = b.dbid) and           
               (tab.snap_id >= b.start_snap_id) and                          (ta
b.snap_id <= b.end_snap_id))                                                    
2019-09-29/21:43:41                                                             

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
                                                                                
delete from sys.mon_mods$                                                       
2019-09-29/21:43:40                                                             
                                                                                
SELECT /* OPT_DYN_SAMP */ /*+ ALL_ROWS IGNORE_WHERE_CLAUSE NO_PARALLEL(SAMPLESUB
) opt_param('parallel_execution_enabled', 'false') NO_PARALLEL_INDEX(SAMPLESUB) 
NO_SQL_TUNE */ NVL(SUM(C1),0), NVL(SUM(C2),0), COUNT(DISTINCT C3), NVL(SUM(CASE 
WHEN C3 IS NULL THEN 1 ELSE 0 END),0) FROM (SELECT /*+ NO_PARALLEL("MM") FULL("M
M") NO_PARALLEL_INDEX("MM") */ 1 AS C1, 1 AS C2, "MM"."OBJ#" AS C3 FROM "SYS"."M

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
ON_MODS_ALL$" "MM") SAMPLESUB                                                   
2019-09-29/21:43:40                                                             
                                                                                
select snap_id - 1, min(begin_interval_time) from wrm$_snapshot    where dbid = 
:dbid and          snap_id = (select min(snap_id)                     from wrm$_
snapshot tab where                      dbid = :dbid2 and status = 0)    group b
y snap_id                                                                       
2019-09-29/21:43:40                                                             
                                                                                

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
select INST_ID, RMRNO, RMNAM, RMVAL from X$KCCRM where RMNAM is not null        
2019-09-29/21:43:40                                                             
                                                                                
SELECT INCARNATION#, INCARNATION#, RESETLOGS_CHANGE#, RESETLOGS_TIME FROM V$DATA
BASE_INCARNATION WHERE STATUS = 'CURRENT'                                       
2019-09-29/21:43:40                                                             
                                                                                
lock table sys.mon_mods$ in exclusive mode                                      
2019-09-29/21:43:40                                                             

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
                                                                                
SELECT RM.CONF#, RM.NAME, RM.VALUE FROM V$RMAN_CONFIGURATION RM WHERE ((:B2 IS N
ULL OR UPPER(:B2 ) = UPPER(RM.NAME)) AND (:B1 IS NULL OR UPPER(:B1 ) = UPPER(RM.
VALUE)))                                                                        
2019-09-29/21:43:40                                                             
                                                                                
delete from sys.wri$_optstat_aux_history                                     whe
re nvl(:1, savtime) <= savtime and savtime < nvl(:2, savtime+1)                 
2019-09-29/21:43:40                                                             

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
                                                                                
                                    merge /*+ dynamic_sampling(mm 4) dynamic_sam
pling_est_cdn(mm)                           dynamic_sampling(m 4) dynamic_sampli
ng_est_cdn(m) */                    into sys.mon_mods_all$ mm                   
                                using                                           
                              (select                                           
                               decode(grouping_id(tp.bo#,tsp.pobj#,m.obj#),3,tp.
bo#,1,tsp.pobj#,m.obj#)        obj#,                                            
                           sum(m.inserts) inserts, sum(m.updates) updates, sum(m

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
.deletes) deletes,       case when grouping_id(tp.bo#,tsp.pobj#,m.obj#) = 0 then
                       (/* IF THIS IS A SUBPARTITION AGGREGATE THE TRUNCATE BIT 
*/                    decode(sum(bitand(m.flags,1)),0,0,1)                      
                    +decode(sum(bitand(m.flags,2)),0,0,2)                       
                  +decode(sum(bitand(m.f                                        
2019-09-29/21:43:40                                                             
                                                                                
lock table sys.mon_mods_all$ in exclusive mode nowait                           
2019-09-29/21:43:40                                                             

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
                                                                                
select CONF#, NAME, VALUE from GV$RMAN_CONFIGURATION where inst_id = USERENV('In
stance')                                                                        
2019-09-29/21:43:40                                                             
                                                                                
      begin          dbms_rcvman.setDatabase(upper(:dbname:dbname_i),           
                       :rlgscn,                                  :rlgtime,      
                            :fhdbi:fhdbi_i);       end;                         
2019-09-29/21:43:40                                                             

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
                                                                                
delete from sys.col_usage$ c where not exists   (select /*+ unnest */ 1 from sys
.obj$ o where o.obj# = c.obj# )                                                 
2019-09-29/21:43:40                                                             
                                                                                
select  RECID , STAMP ,SET_STAMP , SET_COUNT , PIECE# , COPY#, DEVICE_TYPE , HAN
DLE , COMMENTS , MEDIA , MEDIA_POOL , CONCUR , TAG , STATUS , START_TIME , COMPL
ETION_TIME , ELAPSED_SECONDS, DELETED, BYTES, IS_RECOVERY_DEST_FILE, RMAN_STATUS
_RECID, RMAN_STATUS_STAMP, COMPRESSED, BACKED_BY_VSS, ENCRYPTED, BACKED_BY_OSB f

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
rom GV$BACKUP_PIECE where inst_id = USERENV('Instance')                         
2019-09-29/21:43:40                                                             
                                                                                
delete from WRM$_BASELINE  where dbid = :dbid    and expiration is not NULL    a
nd creation_time + expiration < :bind1                                          
2019-09-29/21:43:40                                                             
                                                                                
select   schedule_mode, start_calibrate, num_votes,   synced_time, last_vote, st
atus from   WRI$_SCH_CONTROL where   schedule_id = :id                          

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
2019-09-29/21:43:40                                                             
                                                                                
SELECT COUNT(*) FROM X$KSPPI A, X$KSPPCV2 B WHERE A.INDX + 1 = KSPFTCTXPN AND KS
PPINM = '_deferred_log_dest_is_valid' AND UPPER(KSPFTCTXVL)='TRUE'              
2019-09-29/21:43:40                                                             
                                                                                
SELECT INCARNATION#, RESETLOGS_CHANGE#, RESETLOGS_TIME, PRIOR_RESETLOGS_CHANGE#,
 PRIOR_RESETLOGS_TIME, STATUS, RESETLOGS_ID, PRIOR_INCARNATION# FROM V$DATABASE_
INCARNATION WHERE STATUS <> 'ORPHAN' ORDER BY RESETLOGS_CHANGE# DESC            

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
2019-09-29/21:43:40                                                             
                                                                                
                                       merge /*+ dynamic_sampling(mm 4) dynamic_
sampling_est_cdn(mm)                           dynamic_sampling(m 4) dynamic_sam
pling_est_cdn(m) */                    into mon_mods_all$ mm                    
                                   using                                        
                                 (select                                        
                                  decode(grouping_id(tp.bo#,m.obj#),1,tp.bo#,m.o
bj#) obj#,                      sum(m.inserts) inserts, sum(m.updates) updates, 

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
sum(m.deletes) deletes,       case when grouping_id(tp.bo#, m.obj#) = 0 then    
                            (/* IF THIS IS A PARTITION AGGREGATE THE TRUNCATE BI
T */                       decode(sum(bitand(m.flags,1)),0,0,1)                 
                         +decode(sum(bitand(m.flags,2)),0,0,2)                  
                       +decode(sum(bitand(m.flags,4)),0,0,4)                    
                     /* ADD NEW KSXM BIT                                        
2019-09-29/21:43:40                                                             
                                                                                
select null from sys.optstat_hist_control$ where sval2 >= :1  and sname = 'SKIP_

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
TIME'                                                                           
2019-09-29/21:43:40                                                             
                                                                                
                                        merge /*+ dynamic_sampling(mm 4) dynamic
_sampling_est_cdn(mm)                           dynamic_sampling(m 4) dynamic_sa
mpling_est_cdn(m) */                    into sys.mon_mods_all$ mm               
                                    using                                       
                                  (select                                       
                                  m.obj# obj#,                                  

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
                                m.inserts inserts, m.updates updates, m.deletes 
deletes,                      m.flags flags, m.timestamp timestamp, m.drop_segme
nts drop_segments         from sys.mon_mods$ m, tab$ t                          
                        where m.obj# = t.obj#                                   
                      ) v on (mm.obj# = v.obj#)                                 
                    when matched then                                           
                    update                                                      
2019-09-29/21:43:40                                                             
                                                                                

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
delete from wrh$_sqltext tab  where (tab.dbid = :dbid and         :beg_snap <= t
ab.snap_id and tab.snap_id <= :end_snap         and tab.ref_count = 0)        an
d not exists (select 1 from WRM$_BASELINE b                          where (b.db
id = :dbid2 and                                 tab.snap_id >= b.start_snap_id a
nd                                 tab.snap_id <= b.end_snap_id))               
2019-09-29/21:43:40                                                             
                                                                                
                                     delete /*+ dynamic_sampling(m 4) dynamic_sa
mpling_est_cdn(m) */                 from sys.mon_mods$ m                       

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
                                   where exists                                 
                                 (select /*+ unnest */ * from sys.tabcompart$ t 
where t.obj# = m.obj#)                                                          
2019-09-29/21:43:40                                                             
                                                                                
select obj#,type#,ctime,mtime,stime, status, dataobj#, flags, oid$, spare1, spar
e2 from obj$ where owner#=:1 and name=:2 and namespace=:3 and remoteowner is nul
l and linkname is null and subname = :4                                         
2019-09-29/21:43:40                                                             

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
                                                                                
SELECT /* OPT_DYN_SAMP */ /*+ ALL_ROWS IGNORE_WHERE_CLAUSE NO_PARALLEL(SAMPLESUB
) opt_param('parallel_execution_enabled', 'false') NO_PARALLEL_INDEX(SAMPLESUB) 
NO_SQL_TUNE */ NVL(SUM(C1),0), NVL(SUM(C2),0), COUNT(DISTINCT C3), NVL(SUM(CASE 
WHEN C3 IS NULL THEN 1 ELSE 0 END),0) FROM (SELECT /*+ NO_PARALLEL("MM") FULL("M
M") NO_PARALLEL_INDEX("MM") */ 1 AS C1, 1 AS C2, "MM"."OBJ#" AS C3 FROM "MON_MOD
S_ALL$" "MM") SAMPLESUB                                                         
2019-09-29/21:43:40                                                             
                                                                                

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
delete from sys.wri$_optstat_opr                                             whe
re nvl(:1, start_time) <= start_time                                        and 
start_time < nvl(:2, start_time+1)                                              
2019-09-29/21:43:40                                                             
                                                                                
select snap_id + 1, max(end_interval_time) from wrm$_snapshot where dbid = :dbid
 and snap_id = (select max(snap_id) from wrm$_snapshot tab where dbid = :dbid2 a
nd snap_id < :snap_id and (status = 0 or status = 1) and not exists (select 1 fr
om WRM$_BASELINE b where (b.dbid = tab.dbid) and (tab.snap_id >= b.start_snap_id

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
) and (tab.snap_id <= b.end_snap_id))) group by snap_id                         
2019-09-29/21:43:40                                                             
                                                                                
       begin          :cmp_min := dbms_backup_restore.protocol_component_number_
min;           :cmp_max := dbms_backup_restore.protocol_component_number_max;   
        :pkg_vsn := to_char(:vsn_max, 'fm00')||'.'||                      to_cha
r(:rel_max, 'fm00')||'.'||                      to_char(:upd_max, 'fm00')||'.'||
                      to_char(:cmp_max, 'fm00');             end;               
2019-09-29/21:43:40                                                             

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
                                                                                
select template_id, template_type, baseline_name_prefix,        start_time, end_
time, day_of_week,        hour_in_day, duration, expiration,        repeat_inter
val, last_generated,        template_name   from WRM$_BASELINE_TEMPLATE  where d
bid = :dbid                                                                     
2019-09-29/21:43:40                                                             
                                                                                
delete from sys.wri$_optstat_ind_history h                                   whe
re nvl(:1, savtime) <= savtime and savtime < nvl(:2, savtime+1)             and 

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
(:3 is null or                                                                ex
ists (select 1 from ind$ i                                                      
   where (i.bo# = :3 and i.obj#=h.obj#)))                                       
2019-09-29/21:43:40                                                             
                                                                                
select a.next_start_date, a.objid, a.w_open from  (select b.obj# objid,         
 decode(bitand(b.flags, 64), 0, b.next_start_date,                 b.manual_open
_time) next_start_date,          decode(bitand(b.flags, 66), 0, 0, 2, 1, 2) w_op
en  from sys.scheduler$_window b   where bitand(b.flags, 1) <> 0   order by 2) a

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
  where rownum = 1                                                              
2019-09-29/21:43:40                                                             
                                                                                
SELECT /* OPT_DYN_SAMP */ /*+ ALL_ROWS IGNORE_WHERE_CLAUSE NO_PARALLEL(SAMPLESUB
) opt_param('parallel_execution_enabled', 'false') NO_PARALLEL_INDEX(SAMPLESUB) 
NO_SQL_TUNE */ NVL(SUM(C1),0), NVL(SUM(C2),0) FROM (SELECT /*+ NO_PARALLEL("MM")
 FULL("MM") NO_PARALLEL_INDEX("MM") */ 1 AS C1, 1 AS C2 FROM "SYS"."MON_MODS_ALL
$" "MM") SAMPLESUB                                                              
2019-09-29/21:43:40                                                             

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
                                                                                
      begin          dbms_rcvman.resetAll;       end;                           
2019-09-29/21:43:40                                                             
                                                                                
select dbid from wrm$_database_instance group by dbid                           
2019-09-29/21:43:40                                                             
                                                                                
      declare          policy        varchar2(512);          alldest       numbe
r  := dbms_rcvman.FALSE#;          rlgscn        number;        begin          i

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
f (:alldest > 0) then             alldest := dbms_rcvman.TRUE#;          end if;
          dbms_rcvman.getRedoLogDeletionPolicy(policy  => policy);          dbms
_rcvman.setRedoLogDeletionPolicy(policy  =>  policy,                            
                   alldest =>  alldest);          if ((policy like '%APPLIED%' O
R                policy like '%SHIPPED%') AND               policy not like '%BA
CKED UP%') then             dbms_rcvman.getSCNForAppliedPolicy(                m
inscn     => :applied_scn               ,rlgscn     => rlgscn);          else   
          :applied_scn := 0;          end if;       end;                        
2019-09-29/21:43:40                                                             

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
                                                                                
SELECT TO_NUMBER(1) FROM DUAL                                                   
2019-09-29/21:43:40                                                             
                                                                                
      select decode(open_mode, 'MOUNTED', 0,                                'REA
D WRITE', 1,                                'READ ONLY', 1,                     
           'READ ONLY WITH APPLY', 1,                                2) dbstate 
      into :dbstate       from v$database                                       
2019-09-29/21:43:40                                                             

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
                                                                                
delete from WRI$_SEGADV_OBJLIST where creation_time < :1                        
2019-09-29/21:43:40                                                             
                                                                                
select inst_id,bprid,bpstm,bpbss,bpbsc,bpnum,bitand(bpflg, 12)/4 + (bitand(bpext
, 64-1) * 4) + 1,bpdev,bphdl,bpcmt,bpmdh,bitand(bpflg, 4080) / 16,decode(bitand(
bpflg,2),1,'YES','NO'),bptag,decode(bitand(bpflg, 1+4096+8192),0,'A',1,'D',4096,
'X',8192,'U','?'),decode(bitand(bpflg,1),1,'YES','NO'),to_date(bptsm,'MM/DD/RR H
H24:MI:SS','NLS_CALENDAR=Gregorian'),to_date(bptim,'MM/DD/RR HH24:MI:SS','NLS_CA

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
LENDAR=Gregorian'),abs((to_date(bptim,'MM/DD/RR HH24:MI:SS','NLS_CALENDAR=Gregor
ian')- to_date(bptsm,'MM/DD/RR HH24:MI:SS','NLS_CALENDAR=Gregorian'))*86400),((f
loor(bpext/512) * 4294967296) + bpsz1) * 512, decode(bitand(bpflg, 16384),0,'NO'
,'YES'), bprsi,bprst,decode(bitand(bpext, 64),64,'YES','NO'), decode(bitand(bpfl
g, 16384),0,'NO',decode(bitand(bpext, 256),0,'NO','YES')), decode(bitand(bpext, 
128),128,'YES','NO'), decode(bitand(bpflg, 16384),16384,'NO',decode(bitand(bpext
,256),0,'NO','YES')) from x$kccbp                                               
2019-09-29/21:43:40                                                             
                                                                                

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
update sys.optstat_hist_control$ set sval2 = :1 where  sname = 'SKIP_TIME'      
2019-09-29/21:43:40                                                             
                                                                                
delete from sys.wri$_optstat_histgrm_history                                 whe
re nvl(:1, savtime) <= savtime and savtime < nvl(:2, savtime+1)             and 
obj# = nvl(:3, obj#) and intcol# = nvl(:4, intcol#)                             
2019-09-29/21:43:40                                                             
                                                                                
select userenv('Instance'),  icrid, to_number(icrls),         to_date(icrlc,'MM/

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
DD/RR HH24:MI:SS','NLS_CALENDAR=Gregorian'),         to_number(icprs),         t
o_date(icprc,'MM/DD/RR HH24:MI:SS','NLS_CALENDAR=Gregorian'),         decode(bit
and(icflg,3), 1,'ORPHAN', 2, 'CURRENT', 0, 'PARENT',                'ORPHAN'),  
       icrlc_i, icpinc, icalw  from x$kccic                                     
2019-09-29/21:43:40                                                             
                                                                                
                                        delete /*+ dynamic_sampling(m 4) dynamic
_sampling_est_cdn(m) */                 from sys.mon_mods$ m                    
                                      where exists                              

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
                                    (select /*+ unnest */ * from sys.tabpart$ t 
where t.obj# = m.obj#)                                                          
2019-09-29/21:43:40                                                             
                                                                                
                                         delete /*+ dynamic_sampling(m 4) dynami
c_sampling_est_cdn(m) */                 from sys.mon_mods$ m                   
                                       where exists                             
                                     (select /*+ unnest */ * from sys.tab$ t whe
re t.obj# = m.obj#)                                                             

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
2019-09-29/21:43:40                                                             
                                                                                
SELECT COUNT(DISTINCT SET_COUNT) FROM V$BACKUP_PIECE WHERE STATUS != 'D'        
2019-09-29/21:43:40                                                             
                                                                                
delete from WRI$_ALERT_HISTORY where time_suggested < :1                        
2019-09-29/21:43:40                                                             
                                                                                
delete from sys.mon_mods_all$ m where not exists   (select /*+ unnest */ 1 from 

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
sys.obj$ o where o.obj# = m.obj# )                                              
2019-09-29/21:43:40                                                             
                                                                                
delete from WRM$_BASELINE_DETAILS   where dbid = :dbid     and baseline_id in   
   (select baseline_id from WRM$_BASELINE        where expiration is not NULL   
       and creation_time + expiration < :bind1)                                 
2019-09-29/21:43:40                                                             
                                                                                
select snap_id - 1, min(begin_interval_time) from wrm$_snapshot where dbid = :db

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
id and snap_id = (select min(snap_id) from wrm$_snapshot tab where dbid = :dbid2
 and snap_id > :snap_id and (status = 0 or status = 1) and not exists (select 1 
from WRM$_BASELINE b where (b.dbid = tab.dbid) and (tab.snap_id >= b.start_snap_
id) and (tab.snap_id <= b.end_snap_id))) group by snap_id                       
2019-09-29/21:43:40                                                             
                                                                                
SELECT CONTROLFILE_TYPE FROM V$DATABASE                                         
2019-09-29/21:43:40                                                             
                                                                                

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
lock table sys.mon_mods_all$ in exclusive mode                                  
2019-09-29/21:43:40                                                             
                                                                                
      select name, resetlogs_time,              resetlogs_change#,              
dbid       into :dbname:dbname_i,            :rlgtime,            :rlgscn,      
      :fhdbi:fhdbi_i       from v$database                                      
2019-09-29/21:43:40                                                             
                                                                                
delete from sys.wri$_optstat_tab_history                                     whe

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
re nvl(:1, savtime) <= savtime and savtime < nvl(:2, savtime+1)             and 
obj# = nvl(:3, obj#)                                                            
2019-09-29/21:43:40                                                             
                                                                                
      declare          vsn  varchar2(20);             begin               vsn :=
 dbms_rcvman.getPackageVersion;               :pkg_vsn:pkg_vsn_i := vsn;        
       if vsn is not null then                  :pkg_vsnub4 :=                  
  to_number(substr(vsn,1,2) || substr(vsn,4,2) ||                              s
ubstr(vsn,7,2) || nvl(substr(vsn,10,2),'00'));               end if;            

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
 end;                                                                           
2019-09-29/21:43:40                                                             
                                                                                
       begin          :vsn_min := dbms_backup_restore.protocol_version_number_mi
n;             :rel_min := dbms_backup_restore.protocol_release_number_min;     
        :upd_min := dbms_backup_restore.protocol_update_number_min;             
 :cmp_min := 0;                                                                 
    :vsn_max := dbms_backup_restore.protocol_version_number_max;             :re
l_max := dbms_backup_restore.protocol_release_number_max;             :upd_max :

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
= dbms_backup_restore.protocol_update_number_max;              :cmp_max := 0;   
                                                        :pkg_vsn := to_char(:vsn
_max, 'fm00')||'.'||                      to_char(:rel_max, 'fm00')||'.'||      
                to_char(:upd_max, 'fm00')||'.'||                      to_char(:c
mp_max, 'fm00');             end;                                               
2019-09-29/21:43:40                                                             
                                                                                
select     from_tz(      cast ((max(analyzetime) - 1) as timestamp),      to_cha
r(systimestamp, 'TZH:TZM'))  from sys.tab$ where analyzetime is not null        

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
2019-09-29/21:43:40                                                             
                                                                                
select incarnation#, resetlogs_change#, resetlogs_time,         prior_resetlogs_
change#, prior_resetlogs_time, status,         resetlogs_id, prior_incarnation#,
 flashback_database_allowed  from GV$DATABASE_INCARNATION  where inst_id = USERE
NV('Instance')                                                                  
2019-09-29/21:43:40                                                             
                                                                                
SELECT /* OPT_DYN_SAMP */ /*+ ALL_ROWS IGNORE_WHERE_CLAUSE NO_PARALLEL(SAMPLESUB

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
) opt_param('parallel_execution_enabled', 'false') NO_PARALLEL_INDEX(SAMPLESUB) 
NO_SQL_TUNE */ NVL(SUM(C1),0), NVL(SUM(C2),0) FROM (SELECT /*+ NO_PARALLEL("SYS_
ALIAS_1") FULL("SYS_ALIAS_1") NO_PARALLEL_INDEX("SYS_ALIAS_1") */ 1 AS C1, 1 AS 
C2 FROM "SYS"."MON_MODS$" "SYS_ALIAS_1") SAMPLESUB                              
2019-09-29/21:43:40                                                             
                                                                                
select reason_id, object_id, subobject_id, internal_instance_number, time_sugges
ted, context, reason_argument_1, reason_argument_2, reason_argument_3, reason_ar
gument_4, reason_argument_5, action_argument_1, action_argument_2, action_argume

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
nt_3, action_argument_4, action_argument_5, sequence_id, metric_value, instance_
name from wri$_alert_outstanding where internal_instance_number > -2            
2019-09-29/21:43:40                                                             
                                                                                
SELECT /* OPT_DYN_SAMP */ /*+ ALL_ROWS IGNORE_WHERE_CLAUSE NO_PARALLEL(SAMPLESUB
) opt_param('parallel_execution_enabled', 'false') NO_PARALLEL_INDEX(SAMPLESUB) 
NO_SQL_TUNE */ NVL(SUM(C1),0), NVL(SUM(C2),0) FROM (SELECT /*+ NO_PARALLEL("MM")
 FULL("MM") NO_PARALLEL_INDEX("MM") */ 1 AS C1, 1 AS C2 FROM "MON_MODS_ALL$" "MM
") SAMPLESUB                                                                    

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
2019-09-29/21:43:40                                                             
                                                                                
select max(snap_id) from wrm$_snapshot  where dbid = :dbid and     (cast(SYSTIME
STAMP as TIMESTAMP) - end_interval_time) > :retention and     snap_id < :max_sna
p                                                                               
2019-09-29/21:43:40                                                             
                                                                                
select bl.baseline_id, bl.start_snap_id, min(s1.begin_interval_time), bl.end_sna
p_id, max(s2.end_interval_time) from wrm$_baseline bl, wrm$_snapshot s1, wrm$_sn

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
apshot s2 where (bl.start_snap_id = s1.snap_id) and (bl.end_snap_id = s2.snap_id
) and (bl.dbid = :dbid) and (bl.dbid = s1.dbid) and (bl.dbid = s2.dbid) and (bl.
baseline_id != 0) group by bl.baseline_id, bl.start_snap_id, bl.end_snap_id     
2019-09-29/21:43:40                                                             
                                                                                
update wrm$_snapshot tab set status = 2  where (:beg_snap <= tab.snap_id and tab
.snap_id <= :end_snap         and tab.dbid = :dbid)    and not exists (select 1 
from WRM$_BASELINE b                    where (tab.snap_id >= b.start_snap_id)  
                        and (tab.snap_id <= b.end_snap_id)                      

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
    and (b.dbid = :dbid2))                                                      
2019-09-29/21:43:40                                                             
                                                                                
delete from sys.wri$_optstat_histhead_history                                whe
re nvl(:1, savtime) <= savtime and savtime < nvl(:2, savtime+1)             and 
obj# = nvl(:3, obj#) and intcol# = nvl(:4, intcol#)                             
2019-09-29/21:43:40                                                             
                                                                                
select lobtsn, lobrdba, lobobjid from x$lobstat   where lobspcalloc > 0 and lobc

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
urrtime >= :1   order by lobspcalloc desc                                       
2019-09-29/21:38:50                                                             
                                                                                
select lobtsn, lobrdba, lobobjid from x$lobstat   where lobspcdealloc > 0 and lo
bcurrtime >= :1   order by lobspcdealloc desc                                   
2019-09-29/21:38:50                                                             
                                                                                
select max(RETENTION) from SYS_FBA_FA                                           
2019-09-29/21:38:47                                                             

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
                                                                                
insert into smon_scn_time (thread, time_mp, time_dp, scn, scn_wrp, scn_bas, num_
mappings, tim_scn_map) values (0, :1, :2, :3, :4, :5, :6, :7)                   
2019-09-29/21:38:47                                                             
                                                                                
select host,userid,password,flag,authusr,authpwd, passwordx, authpwdx from link$
 where owner#=:1 and name=:2                                                    
2019-09-29/21:38:23                                                             
                                                                                

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
SELECT NVL(AVG((VALUE*1000.0)/DURATION),0), NVL((((SUM(DURATION)/(60*1000))/60)*
100),0) FROM MGMT_SYSTEM_PERFORMANCE_LOG A, MGMT_PERFORMANCE_NAMES B WHERE :B1 =
 B.DISPLAY_NAME AND A.JOB_NAME = B.JOB_NAME AND A.TIME > (SYSDATE-(1/24)) AND A.
IS_TOTAL='Y' AND A.DURATION > 0                                                 
2019-09-29/21:38:01                                                             
                                                                                
select parttype, partcnt, partkeycols, flags, defts#, defpctfree, defpctused, de
finitrans, defmaxtrans, deftiniexts, defextsize, defminexts, defmaxexts, defextp
ct, deflists, defgroups, deflogging, spare1, mod(spare2, 256) subparttype, mod(t

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
runc(spare2/256), 256) subpartkeycols, mod(trunc(spare2/65536), 65536) defsubpar
tcnt, mod(trunc(spare2/4294967296), 256) defhscflags, mod(spare3, 256) interval_
dty, rowid, defmaxsize from partobj$ where obj# = :1                            
2019-09-29/21:38:01                                                             
                                                                                
SELECT /*OracleDictionaryQueries.ALL_PL_SQL_SOURCE_QUERY*/        TEXT FROM SYS.
ALL_SOURCE WHERE TYPE = :1  AND OWNER = :2  AND NAME = :3  ORDER BY LINE        
2019-09-29/21:37:58                                                             
                                                                                

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
delete from sdo_geor_ddl__table$$                                               
2019-09-29/21:37:58                                                             
                                                                                
SELECT /*OracleDictionaryQueries.ALL_OBJECT_TYPE_ORACLE8_QUERY*/        T.TYPECO
DE ,      (SELECT CT.COLL_TYPE         FROM SYS.ALL_COLL_TYPES CT         WHERE 
CT.OWNER = T.OWNER         AND CT.TYPE_NAME = T.TYPE_NAME) COLLTYPE FROM   SYS.A
LL_TYPES T WHERE  T.OWNER = :1  AND T.TYPE_NAME = :2                            
2019-09-29/21:37:58                                                             
                                                                                

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
SELECT /*OracleDictionaryQueries.ALL_ORACLE_SINGLE_OBJECT_QUERY*/        O.OBJEC
T_NAME, O.OBJECT_TYPE, O.OBJECT_ID, O.LAST_DDL_TIME  FROM   SYS.ALL_OBJECTS O WH
ERE  O.OWNER = :1  AND    O.OBJECT_NAME = :2  AND    O.OBJECT_TYPE = :3         
2019-09-29/21:37:58                                                             
                                                                                
declare   m_stmt  varchar2(512); begin    m_stmt:='delete from sdo_geor_ddl__tab
le$$';    EXECUTE IMMEDIATE m_stmt;    EXCEPTION      WHEN OTHERS THEN        NU
LL; end;                                                                        
2019-09-29/21:37:58                                                             

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
                                                                                
select case when (bitand(u.spare1, 16) = 0) then         0        when (u.type# 
= 2) then         (u.spare2)        else         1        end from obj$ o, user$
 u where o.obj# = :1 and o.owner# = u.user#                                     
2019-09-29/21:37:58                                                             
                                                                                
select action# from trigger$ where obj# = :1                                    
2019-09-29/21:37:58                                                             
                                                                                

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
select tc.type#,tc.intcol#,tc.position#,c.type#, c.length,c.scale,c.precision#,c
.charsetid,c.charsetform, decode(bitand(c.property,8388608),8388608, c.spare3, 0
) from triggercol$ tc,col$ c, trigger$ tr where tc.obj#=:1 and tc.intcol#=c.intc
ol# and tr.obj# = tc.obj# and (bitand(tr.property,32) != 32 or bitand(tc.type#,2
0) = 20) and (   c.obj#=:2 and (bitand(tc.type#, 1024) = :3 or tc.type# = 0)    
  or c.obj#=:4 and bitand(tc.type#, 1024) = :5) union select type#,intcol#,posit
ion#,69,0,0,0,0,0,0 from triggercol$ where obj#=:6 and intcol#=1001 union select
 tc.type#,tc.intcol#,tc.position#,121,0,0,0,0,0,0 from triggercol$ tc,trigger$ t
r where tr.obj# = tc.obj# and bitand(tr.property,32) = 32 and tc.obj# = :7 and b

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
itand(tc.type#,20) != 20                                                        
2019-09-29/21:37:58                                                             
                                                                                
select actionsize from trigger$ where obj# = :1                                 
2019-09-29/21:37:58                                                             
                                                                                
select baseobject,type#,update$,insert$,delete$,refnewname,refoldname,whenclause
,definition,enabled,property,sys_evts,nttrigcol,nttrigatt,refprtname,rowid,actio
nlineno,trignameline,trignamecol,trignamecolofs, actioncolno from trigger$ where

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
 obj# =:1                                                                       
2019-09-29/21:37:58                                                             
                                                                                
SELECT /*OracleDictionaryQueries.ALL_TIMESTAMP_BY_NAME_QUERY*/        LAST_DDL_T
IME FROM SYS.ALL_OBJECTS WHERE OWNER = :1  AND OBJECT_NAME = :2  AND OBJECT_TYPE
 = :3                                                                           
2019-09-29/21:37:58                                                             
                                                                                
SELECT alias000$."STYLESHEET" AS STYLESHEET FROM "SYS"."METASTYLESHEET" alias000

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
$ WHERE 1 = 1 AND ((alias000$."NAME"='kuproc') AND (alias000$."MODEL"='ORACLE'))
2019-09-29/21:37:24                                                             
                                                                                
SELECT alias000$."STYLESHEET" AS STYLESHEET FROM "SYS"."METASTYLESHEET" alias000
$ WHERE 1 = 1 AND ((alias000$."NAME"='kubody') AND (alias000$."MODEL"='ORACLE'))
2019-09-29/21:37:24                                                             
                                                                                
SELECT alias000$."STYLESHEET" AS STYLESHEET FROM "SYS"."METASTYLESHEET" alias000
$ WHERE 1 = 1 AND ((alias000$."NAME"='kusource') AND (alias000$."MODEL"='ORACLE'

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
))                                                                              
2019-09-29/21:37:24                                                             
                                                                                
select cast(multiset(select obj#, line, 0, 0, 0, 0, NULL, REPLACE(source,CHR(0))
 from sys.source$ where obj# = :1  order by obj#, line) as sys.ku$_source_list_t
) from dual                                                                     
2019-09-29/21:37:24                                                             
                                                                                
SELECT alias000$."STYLESHEET" AS STYLESHEET FROM "SYS"."METASTYLESHEET" alias000

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
$ WHERE 1 = 1 AND ((alias000$."NAME"='kufull') AND (alias000$."MODEL"='ORACLE'))
2019-09-29/21:37:24                                                             
                                                                                
SELECT alias000$."STYLESHEET" AS STYLESHEET FROM "SYS"."METASTYLESHEET" alias000
$ WHERE 1 = 1 AND ((alias000$."NAME"='kutypspc') AND (alias000$."MODEL"='ORACLE'
))                                                                              
2019-09-29/21:37:24                                                             
                                                                                
SELECT /*+rule*/ SYS_XMLGEN(VALUE(KU$), XMLFORMAT.createFormat2('FULL_TYPE_T', '

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
7')), KU$.OBJ_NUM FROM SYS.KU$_FULL_TYPE_VIEW KU$ WHERE KU$.SCHEMA_OBJ.NAME=:NAM
E1 AND  KU$.SCHEMA_OBJ.OWNER_NAME=:SCHEMA2                                      
2019-09-29/21:37:23                                                             
                                                                                
select DBMS_METADATA.GET_DDL('TYPE',:NAME,:OWNER,:VERSION) from dual            
2019-09-29/21:37:23                                                             
                                                                                
select object_name from all_objects o where o.object_type = :TYPE and o.owner = 
:OWNER     AND O.GENERATED = 'N'      AND O.OBJECT_ID NOT IN ( SELECT PURGE_OBJE

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
CT FROM RECYCLEBIN )     AND NOT EXISTS (SELECT 1 FROM SYS.ALL_MVIEWS WHERE MVIE
W_NAME = O.OBJECT_NAME AND OWNER = O.OWNER)     AND NOT EXISTS (SELECT 1 from al
l_queue_tables WHERE QUEUE_TABLE = O.OBJECT_NAME AND OWNER = O.OWNER)          A
ND NOT ( object_name like 'AQ%'  and (               object_name != 'AQ$_'|| obj
ect_name||'_G'               or  object_name != 'AQ$_'|| object_name||'_H'      
         or  object_name != 'AQ$_'|| object_name||'_I'              or  object_n
ame != 'AQ$_'|| object_name||'_S'              or  object_name != 'AQ$_'|| objec
t_name||'_T' ))    order by object_name                                         
2019-09-29/21:37:17                                                             

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
                                                                                
select QUEUE_TABLE from all_queue_tables where owner = :OWNER and :TYPE = :TYPE 
2019-09-29/21:37:15                                                             
                                                                                
select object_name from all_objects o where o.object_type = :TYPE and o.owner = 
:OWNER     AND O.OBJECT_ID NOT IN ( SELECT PURGE_OBJECT FROM RECYCLEBIN )     AN
D O.GENERATED = 'N'      AND NOT EXISTS (SELECT 1 FROM SYS.ALL_MVIEWS WHERE MVIE
W_NAME = O.OBJECT_NAME AND OWNER = O.OWNER)     AND NOT EXISTS (SELECT 1 from al
l_queue_tables WHERE QUEUE_TABLE = O.OBJECT_NAME AND OWNER = O.OWNER)          A

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
ND NOT ( object_name like 'AQ%'  and (               object_name != 'AQ$_'|| obj
ect_name||'_G'               or  object_name != 'AQ$_'|| object_name||'_H'      
         or  object_name != 'AQ$_'|| object_name||'_I'              or  object_n
ame != 'AQ$_'|| object_name||'_S'              or  object_name != 'AQ$_'|| objec
t_name||'_T' ))                                                                 
2019-09-29/21:37:15                                                             
                                                                                
select name from all_queues where owner = :OWNER AND QUEUE_TYPE != 'EXCEPTION_QU
EUE' and :TYPE = :TYPE                                                          

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
2019-09-29/21:37:15                                                             
                                                                                
select object_name from all_objects o where o.object_type = :TYPE and o.owner = 
:OWNER    AND O.GENERATED = 'N' AND O.SECONDARY = 'N'      AND O.OBJECT_ID NOT I
N ( SELECT PURGE_OBJECT FROM RECYCLEBIN )     AND NOT EXISTS (SELECT 1 FROM SYS.
ALL_MVIEWS WHERE MVIEW_NAME = O.OBJECT_NAME AND OWNER = O.OWNER)     AND NOT EXI
STS (SELECT 1 from all_queue_tables WHERE QUEUE_TABLE = O.OBJECT_NAME AND OWNER 
= O.OWNER)          AND NOT ( object_name like 'AQ%'  and (               object
_name = 'AQ$_'||substr(object_name,5,length(object_name)-6)||'_G'               

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
or  object_name = 'AQ$_'||substr(object_name,5,length(object_name)-6)||'_H'     
          or  object_name = 'AQ$_'||substr(object_name,5,length(object_name)-6)|
|'_I'              or  object_name = 'AQ$_'||substr(object_name,5,length(object_
name)-6)||'_L'              or  object_name = 'AQ$_'||substr(object_name,5,lengt
h(object_name)-6)||'_S'              or  object_name = 'AQ$_'||substr(object_nam
e,5,length(object_name)-6)||'_T' ))    o                                        
2019-09-29/21:37:10                                                             
                                                                                
select ts#,file#,block#,cols,nvl(size$,-1),pctfree$,pctused$,initrans,maxtrans,h

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
ashkeys,func,extind,avgchn,nvl(degree,1),nvl(instances,1),nvl(flags,0),nvl(spare
1,0)from clu$ where obj#=:1                                                     
2019-09-29/21:37:09                                                             
                                                                                
SELECT master FROM all_snapshot_logs where log_owner = :OWNER and :TYPE = :TYPE 
order by master                                                                 
2019-09-29/21:37:09                                                             
                                                                                
select object_name from all_objects o where o.object_type = :TYPE and o.owner = 

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
:OWNER    AND O.GENERATED = 'N' AND O.SECONDARY = 'N'      AND O.OBJECT_ID NOT I
N ( SELECT PURGE_OBJECT FROM RECYCLEBIN )     AND NOT EXISTS (SELECT 1 FROM SYS.
ALL_MVIEWS WHERE MVIEW_NAME = O.OBJECT_NAME AND OWNER = O.OWNER)     AND NOT EXI
STS (SELECT 1 from all_queue_tables WHERE QUEUE_TABLE = O.OBJECT_NAME AND OWNER 
= O.OWNER)          AND NOT ( object_name like 'AQ%'  and (               object
_name = 'AQ$_'||substr(object_name,5,length(object_name)-6)||'_G'               
or  object_name = 'AQ$_'||substr(object_name,5,length(object_name)-6)||'_H'     
          or  object_name = 'AQ$_'||substr(object_name,5,length(object_name)-6)|
|'_I'              or  object_name = 'AQ$_'||substr(object_name,5,length(object_

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
name)-6)||'_L'              or  object_name = 'AQ$_'||substr(object_name,5,lengt
h(object_name)-6)||'_S'              or  object_name = 'AQ$_'||substr(object_nam
e,5,length(object_name)-6)||'_T' ))    o                                        
2019-09-29/21:37:08                                                             
                                                                                
select object_name from all_objects where object_type = :TYPE and owner = :OWNER
 order by object_name                                                           
2019-09-29/21:37:03                                                             
                                                                                

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
select i.index_name from all_indexes i ,all_objects o,all_constraints c     wher
e i.owner = o.owner    and   i.owner = c.owner(+)    and   i.index_name = c.INDE
X_NAME(+)    and   i.index_name = o.object_name    and   i.owner = :OWNER    AND
 O.GENERATED = 'N'      and O.OBJECT_ID NOT IN ( SELECT PURGE_OBJECT FROM RECYCL
EBIN)     AND NOT EXISTS (SELECT 1 from all_queue_tables WHERE QUEUE_TABLE = O.O
BJECT_NAME AND OWNER = O.OWNER)          AND NOT ( object_name like 'AQ%'  and (
               object_name != 'AQ$_'|| object_name||'_G'               or  objec
t_name != 'AQ$_'|| object_name||'_H'               or  object_name != 'AQ$_'|| o
bject_name||'_I'              or  object_name != 'AQ$_'|| object_name||'_S'     

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
         or  object_name != 'AQ$_'|| object_name||'_T' ))                       
2019-09-29/21:37:03                                                             
                                                                                
select object_name from all_objects o where o.object_type = :TYPE and o.owner = 
:OWNER    AND O.GENERATED = 'N' AND O.SECONDARY = 'N'      AND O.OBJECT_ID NOT I
N ( SELECT PURGE_OBJECT FROM RECYCLEBIN )     AND NOT EXISTS (SELECT 1 FROM SYS.
ALL_MVIEWS WHERE MVIEW_NAME = O.OBJECT_NAME AND OWNER = O.OWNER)     AND NOT EXI
STS (SELECT 1 from all_queue_tables WHERE QUEUE_TABLE = O.OBJECT_NAME AND OWNER 
= O.OWNER)          AND NOT ( object_name like 'AQ%'  and (               object

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
_name = 'AQ$_'||substr(object_name,5,length(object_name)-6)||'_G'               
or  object_name = 'AQ$_'||substr(object_name,5,length(object_name)-6)||'_H'     
          or  object_name = 'AQ$_'||substr(object_name,5,length(object_name)-6)|
|'_I'              or  object_name = 'AQ$_'||substr(object_name,5,length(object_
name)-6)||'_L'              or  object_name = 'AQ$_'||substr(object_name,5,lengt
h(object_name)-6)||'_S'              or  object_name = 'AQ$_'||substr(object_nam
e,5,length(object_name)-6)||'_T' ))    o                                        
2019-09-29/21:36:58                                                             
                                                                                

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
select object_name from all_objects o where o.object_type = :TYPE and o.owner = 
:OWNER    AND O.GENERATED = 'N' AND O.SECONDARY = 'N'      AND O.OBJECT_ID NOT I
N ( SELECT PURGE_OBJECT FROM RECYCLEBIN )     AND NOT EXISTS (SELECT 1 FROM SYS.
ALL_MVIEWS WHERE MVIEW_NAME = O.OBJECT_NAME AND OWNER = O.OWNER)     AND NOT EXI
STS (SELECT 1 from all_queue_tables WHERE QUEUE_TABLE = O.OBJECT_NAME AND OWNER 
= O.OWNER)          AND NOT ( object_name like 'AQ%'  and (               object
_name = 'AQ$_'||substr(object_name,5,length(object_name)-6)||'_G'               
or  object_name = 'AQ$_'||substr(object_name,5,length(object_name)-6)||'_H'     
          or  object_name = 'AQ$_'||substr(object_name,5,length(object_name)-6)|

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
|'_I'              or  object_name = 'AQ$_'||substr(object_name,5,length(object_
name)-6)||'_L'              or  object_name = 'AQ$_'||substr(object_name,5,lengt
h(object_name)-6)||'_S'              or  object_name = 'AQ$_'||substr(object_nam
e,5,length(object_name)-6)||'_T' ))    o                                        
2019-09-29/21:36:55                                                             
                                                                                
select  INSTANCE_NUMBER , INSTANCE_NAME , HOST_NAME , VERSION , STARTUP_TIME , S
TATUS , PARALLEL , THREAD# , ARCHIVER , LOG_SWITCH_WAIT , LOGINS , SHUTDOWN_PEND
ING, DATABASE_STATUS, INSTANCE_ROLE, ACTIVE_STATE, BLOCKED from GV$INSTANCE wher

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
e inst_id = USERENV('Instance')                                                 
2019-09-29/21:36:54                                                             
                                                                                
select OBJOID,  CLSOID, RUNTIME, PRI, JOBTYPE,  SCHLIM,  WT, INST,  RUNNOW, ENQ_
SCHLIM from ( select a.obj# OBJOID, a.class_oid CLSOID,    decode(bitand(a.flags
, 16384), 0, a.next_run_date,           a.last_enabled_time) RUNTIME,    (2*a.pr
iority +     decode(bitand(a.job_status, 4), 0, 0,            decode(a.running_i
nstance, :1, -1, 1))) PRI,    1 JOBTYPE,    decode(a.schedule_limit, NULL,      
     decode(bitand(a.flags, 4194304), 4194304, p.schedule_limit, NULL),         

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
  a.schedule_limit) SCHLIM,    a.job_weight WT,    decode(a.running_instance, NU
LL, 0, a.running_instance) INST,    decode(bitand(a.flags, 16384), 0, 0, 1) RUNN
OW,    decode(bitand(a.job_status, 8388608), 0, 0, 1) ENQ_SCHLIM  from sys.sched
uler$_job a, sys.scheduler$_program p, v$database v,                      v$inst
ance i  where a.program_oid = p.obj#(+)    and bitand(a.job_status, 515) = 1    
and bitand(a.flags, 1048576) = 0    and ((bitand(a.flags, 134217728 + 268435456)
 = 0) or         (bitand(a.job_status, 1                                        
2019-09-29/21:36:54                                                             
                                                                                

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
select object_name from all_objects o where o.object_type = :TYPE and o.owner = 
:OWNER    AND O.GENERATED = 'N' AND O.SECONDARY = 'N'      AND O.OBJECT_ID NOT I
N ( SELECT PURGE_OBJECT FROM RECYCLEBIN )     AND NOT EXISTS (SELECT 1 FROM SYS.
ALL_MVIEWS WHERE MVIEW_NAME = O.OBJECT_NAME AND OWNER = O.OWNER)     AND NOT EXI
STS (SELECT 1 from all_queue_tables WHERE QUEUE_TABLE = O.OBJECT_NAME AND OWNER 
= O.OWNER)          AND NOT ( object_name like 'AQ%'  and (               object
_name = 'AQ$_'||substr(object_name,5,length(object_name)-6)||'_G'               
or  object_name = 'AQ$_'||substr(object_name,5,length(object_name)-6)||'_H'     
          or  object_name = 'AQ$_'||substr(object_name,5,length(object_name)-6)|

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
|'_I'              or  object_name = 'AQ$_'||substr(object_name,5,length(object_
name)-6)||'_L'              or  object_name = 'AQ$_'||substr(object_name,5,lengt
h(object_name)-6)||'_S'              or  object_name = 'AQ$_'||substr(object_nam
e,5,length(object_name)-6)||'_T' ))    o                                        
2019-09-29/21:36:54                                                             
                                                                                
select ks.inst_id,ksuxsins,ksuxssid,ksuxshst,ksuxsver,ksuxstim,decode(ksuxssts,0
,'STARTED',1,'MOUNTED',2,'OPEN',3,'OPEN MIGRATE','UNKNOWN'),decode(ksuxsshr,0,'N
O',1,'YES',2,NULL),ksuxsthr,decode(ksuxsarc,0,'STOPPED',1,'STARTED','FAILED'),de

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
code(ksuxslsw,0,NULL,2,'ARCHIVE LOG',3,'CLEAR LOG',4,'CHECKPOINT',       5,'REDO
 GENERATION'),decode(ksuxsdba,0,'ALLOWED','RESTRICTED'),decode(ksuxsshp,0,'NO','
YES'),decode(kvitval,0,'ACTIVE',2147483647,'SUSPENDED','INSTANCE RECOVERY'),deco
de(ksuxsrol,1,'PRIMARY_INSTANCE',2,'SECONDARY_INSTANCE','UNKNOWN'), decode(qui_s
tate,0,'NORMAL',1,'QUIESCING',2,'QUIESCED','UNKNOWN'), decode(bitand(ksuxsdst, 1
), 0, 'NO', 1, 'YES', 'NO') from x$ksuxsinst ks, x$kvit kv, x$quiesce qu where k
vittag = 'kcbwst'                                                               
2019-09-29/21:36:54                                                             
                                                                                

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
select object_name from all_objects o where o.object_type = :TYPE and o.owner = 
:OWNER    AND O.GENERATED = 'N' AND O.SECONDARY = 'N'      AND O.OBJECT_ID NOT I
N ( SELECT PURGE_OBJECT FROM RECYCLEBIN )     AND NOT EXISTS (SELECT 1 FROM SYS.
ALL_MVIEWS WHERE MVIEW_NAME = O.OBJECT_NAME AND OWNER = O.OWNER)     AND NOT EXI
STS (SELECT 1 from all_queue_tables WHERE QUEUE_TABLE = O.OBJECT_NAME AND OWNER 
= O.OWNER)          AND NOT ( object_name like 'AQ%'  and (               object
_name = 'AQ$_'||substr(object_name,5,length(object_name)-6)||'_G'               
or  object_name = 'AQ$_'||substr(object_name,5,length(object_name)-6)||'_H'     
          or  object_name = 'AQ$_'||substr(object_name,5,length(object_name)-6)|

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
|'_I'              or  object_name = 'AQ$_'||substr(object_name,5,length(object_
name)-6)||'_L'              or  object_name = 'AQ$_'||substr(object_name,5,lengt
h(object_name)-6)||'_S'              or  object_name = 'AQ$_'||substr(object_nam
e,5,length(object_name)-6)||'_T' ))    o                                        
2019-09-29/21:36:51                                                             
                                                                                
select db_link from all_db_links where owner = :OWNER and :TYPE = :TYPE order by
 db_link                                                                        
2019-09-29/21:36:51                                                             

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
                                                                                
SELECT OWNER FROM DBA_PROCEDURES WHERE OBJECT_NAME = 'MGMT_USER' AND PROCEDURE_N
AME = 'DROP_USER'                                                               
2019-09-29/21:36:00                                                             
                                                                                
select 1 from sys.aq$_subscriber_table where rownum < 2 and subscriber_id <> 0 a
nd table_objno <> 0                                                             
2019-09-29/21:34:00                                                             
                                                                                

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
DECLARE job BINARY_INTEGER := :job; next_date DATE := :mydate;  broken BOOLEAN :
= FALSE; BEGIN wwv_flow_mail.push_queue(wwv_flow_platform.get_preference('SMTP_H
OST_ADDRESS'),wwv_flow_platform.get_preference('SMTP_HOST_PORT')); :mydate := ne
xt_date; IF broken THEN :b := 1; ELSE :b := 0; END IF; END;                     
2019-09-29/21:34:00                                                             
                                                                                
select /*+ ordered use_nl(hc) */ hc.inst_id, ts.name, hc.ktfthctfno, (hc.ktfthcs
z - hc.ktfthcfree)*ts.blocksize, (hc.ktfthcsz - hc.ktfthcfree), hc.ktfthcfree*ts
.blocksize, hc.ktfthcfree, hc.ktfthcfno from ts$ ts, x$ktfthc hc where ts.conten

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
ts$ = 1 and ts.bitmapped <> 0 and ts.online$ = 1 and ts.ts# = hc.ktfthctsn and h
c.ktfthccval = 0                                                                
2019-09-29/21:32:17                                                             
                                                                                
select value/(1024*1024) pga_tar from v$parameter where name = 'pga_aggregate_ta
rget'                                                                           
2019-09-29/21:32:17                                                             
                                                                                
select   NAME,           VALUE,           UNIT     from   GV$PGASTAT    where  I

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
NST_ID = USERENV('Instance')                                                    
2019-09-29/21:32:17                                                             
                                                                                
select                  a.tablespace_name as tablespace_name,                'SQ
LDEV:GAUGE:0:100:0:0:'||(100 - round((nvl(b.bytes_free, 0) / a.bytes_alloc) * 10
0)) percent_used,                (100 - round((nvl(b.bytes_free, 0) / a.bytes_al
loc) * 100, 2)) pct_used,                round(a.bytes_alloc / 1024 / 1024,2) al
located,                round((a.bytes_alloc - nvl(b.bytes_free, 0)) / 1024 / 10
24,2) used,                round(nvl(b.bytes_free, 0) / 1024 / 1024,2) free,    

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
            a.datafiles         from  ( select  f.tablespace_name,              
          sum(f.bytes) bytes_alloc,                        sum(decode(f.autoexte
nsible, 'YES',f.maxbytes,'NO', f.bytes)) maxbytes,                        count(
1) datafiles                 from dba_data_files f                 group by tabl
espace_name) a,               ( select  f.tablespace_name,                      
  sum(f.bytes)  bytes_free                 from dba_free_space f                
 group by tablespace_name) b         whe                                        
2019-09-29/21:32:17                                                             
                                                                                

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
select inst_id,fnfno,fnnam from x$kccfn where fnnam is not null and bitand(fnflg
, 4) != 4 and fntyp=4                                                           
2019-09-29/21:32:17                                                             
                                                                                
select to_char(value/1024/1024,'999G999G990') pga_cur from v$pgastat where name 
in ('total PGA allocated')                                                      
2019-09-29/21:32:17                                                             
                                                                                
select /*+ ordered use_nl(fc) */ fc.inst_id, ts.name, fc.ktstfctfno, fc.ktstfcec

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
, fc.ktstfceu, fc.ktstfcbc, fc.ktstfcbu, fc.ktstfcbc*ts.blocksize, fc.ktstfcbu*t
s.blocksize, fc.ktstfcfno from ts$ ts, x$ktstfc fc where ts.contents$ = 1 and ts
.bitmapped <> 0 and ts.online$ = 1 and ts.ts# = fc.ktstfctsn                    
2019-09-29/21:32:17                                                             
                                                                                
select  FILE# , NAME from GV$DBFILE where inst_id = USERENV('Instance')         
2019-09-29/21:32:17                                                             
                                                                                
select INST_ID,           QESMMSGANM,           decode( QESMMSGAUN, 3, (QESMMSGA

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
VL*QESMMSGAMU)/100,                   QESMMSGAVL*QESMMSGAMU),            decode(
 QESMMSGAUN, 0, 'bytes', 1, 'microseconds', 3, 'percent', '')    from   X$QESMMS
GA    where  QESMMSGAVS = 1                                                     
2019-09-29/21:32:17                                                             
                                                                                
select  NAME , VALUE from GV$SGA where inst_id = USERENV('Instance')            
2019-09-29/21:32:16                                                             
                                                                                
select 'YES' from dual                                                          

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
2019-09-29/21:32:16                                                             
                                                                                
select to_char(sum(value)/1024/1024,'999G999G990') sga_cur from v$sga           
2019-09-29/21:32:16                                                             
                                                                                
select 'YES' from dba_tables where rownum = 1                                   
2019-09-29/21:32:16                                                             
                                                                                
select inst_id,ksmsdnam,ksmsdval from x$ksmsd                                   

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
2019-09-29/21:32:16                                                             
                                                                                
select value/(1024*1024) pga_tar from v$parameter where name = 'sga_target'     
2019-09-29/21:32:16                                                             
                                                                                
SELECT USERNAME FROM SYS.ALL_USERS ORDER BY USERNAME                            
2019-09-29/21:31:48                                                             
                                                                                
SELECT USER FROM DUAL                                                           

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
2019-09-29/21:31:48                                                             
                                                                                
DECLARE job BINARY_INTEGER := :job;  next_date TIMESTAMP WITH TIME ZONE := :myda
te;  broken BOOLEAN := FALSE;  job_name VARCHAR2(30) := :job_name;  job_subname 
VARCHAR2(30) := :job_subname;  job_owner VARCHAR2(30) := :job_owner;  job_start 
TIMESTAMP WITH TIME ZONE := :job_start;  job_scheduled_start TIMESTAMP WITH TIME
 ZONE := :job_scheduled_start;  window_start TIMESTAMP WITH TIME ZONE := :window
_start;  window_end TIMESTAMP WITH TIME ZONE := :window_end;  chain_id VARCHAR2(
14) :=  :chainid;  credential_owner varchar2(30) := :credown;  credential_name  

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
varchar2(30) := :crednam;  destination_owner varchar2(30) := :destown;  destinat
ion_name varchar2(30) := :destnam;  job_dest_id varchar2(14) := :jdestid;  BEGIN
  begin dbms_rlmgr_dr.cleanup_events; end;  :mydate := next_date; IF broken THEN
 :b := 1; ELSE :b := 0; END IF; END;                                            
2019-09-29/21:31:37                                                             
                                                                                
SELECT * FROM RLM$JOBQUEUE WHERE SCHED_AT < SYSTIMESTAMP AND ROWNUM < 2 FOR UPDA
TE                                                                              
2019-09-29/21:31:37                                                             

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
                                                                                
SELECT MIN(SCHED_AT) FROM RLM$JOBQUEUE                                          
2019-09-29/21:31:37                                                             
                                                                                
select res_grp_name, affinity, flags, comments, default_priority,  log_history  
from sys.scheduler$_class  where obj# = :1                                      
2019-09-29/21:31:36                                                             
                                                                                
select a.owner,a.table_name, a.constraint_name, a.delete_rule,a.r_constraint_nam

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
e, a.deferred, a.deferrable from sys.all_constraints a, (select owner,constraint
_name from sys.all_constraints where owner = :1  and table_name = :2  and constr
aint_type in ('P','U')) b where a.constraint_type = 'R' and a.r_constraint_name 
= b.constraint_name and a.r_owner = b.owner                                     
2019-09-29/21:31:34                                                             
                                                                                
SELECT OWNER,TABLE_NAME,COLUMN_NAME,WITH_ROWID,SCOPE_TABLE_OWNER,SCOPE_TABLE_NAM
E FROM all_refs WHERE TABLE_NAME IN (:1 ,:2 ,:3 )                               
2019-09-29/21:31:33                                                             

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
                                                                                
SELECT OWNER,TABLE_NAME,COLUMN_NAME,SUBSTITUTABLE FROM ALL_OBJ_COLATTRS WHERE TA
BLE_NAME IN (:1 ,:2 ,:3 )                                                       
2019-09-29/21:31:33                                                             
                                                                                
SELECT OWNER,PARENT_TABLE_NAME,PARENT_TABLE_COLUMN,ELEMENT_SUBSTITUTABLE,TABLE_N
AME,RETURN_TYPE FROM ALL_NESTED_TABLES WHERE PARENT_TABLE_NAME IN (:1 ,:2 ,:3 ) 
2019-09-29/21:31:33                                                             
                                                                                

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
SELECT CONSTRAINT_NAME, CONSTRAINT_TYPE, DEFERRED, STATUS, DEFERRABLE, VALIDATED
, SEARCH_CONDITION, R_OWNER, R_CONSTRAINT_NAME, DELETE_RULE, INDEX_NAME, GENERAT
ED, RELY FROM all_constraints WHERE OWNER=:1  AND TABLE_NAME=:2  AND CONSTRAINT_
TYPE IN ('P','U','C','R') ORDER BY CONSTRAINT_NAME                              
2019-09-29/21:31:33                                                             
                                                                                
select table_name,  comments from all_tab_comments where owner = :1  and table_n
ame in ( :2  ) and comments is not null                                         
2019-09-29/21:31:32                                                             

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
                                                                                
select table_name, column_name, comments from all_col_comments where owner = :1 
 and table_name in ( :2  ) and comments is not null                             
2019-09-29/21:31:32                                                             
                                                                                
select a.owner,a.table_name from sys.all_constraints a, (select r_owner,r_constr
aint_name from sys.all_constraints where r_owner = :1  and table_name = :2  and 
constraint_type = 'R') b where a.constraint_type in ('P','U') and a.constraint_n
ame = b.r_constraint_name and a.owner = b.r_owner                               

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
2019-09-29/21:31:32                                                             
                                                                                
select a.owner,a.table_name from sys.all_constraints a, (select owner,constraint
_name from sys.all_constraints where owner = :1  and table_name = :2  and constr
aint_type in ('P','U')) b where a.constraint_type = 'R' and a.r_constraint_name 
= b.constraint_name and a.r_owner = b.owner                                     
2019-09-29/21:31:31                                                             
                                                                                
SELECT COLUMN_NAME       FROM SYS.Dba_TAB_COLUMNS       WHERE OWNER = :SCHEMA   

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
    AND TABLE_NAME = :PARENT_NAME       ORDER BY COLUMN_ID                      
2019-09-29/21:31:13                                                             
                                                                                
SELECT PARTITION_NAME       FROM SYS.Dba_TAB_PARTITIONS       WHERE TABLE_OWNER 
= :SCHEMA       AND TABLE_NAME = :PARENT_NAME       ORDER BY PARTITION_NAME     
2019-09-29/21:31:13                                                             
                                                                                
select * from ( SELECT ao.OBJECT_NAME, ao.OBJECT_ID, '' short_name,             
  DECODE(ao.STATUS, 'INVALID', 'TRUE', 'FALSE') INVALID, ao.OWNER OBJECT_OWNER, 

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
ao.CREATED, ao.LAST_DDL_TIME, av.editioning_view editioning_view   FROM SYS.Dba_
OBJECTS ao, sys.Dba_views av   WHERE ao.OWNER = :SCHEMA   and   av.OWNER = :SCHE
MA   AND   ao.OBJECT_TYPE = :TYPE   AND   ao.SUBOBJECT_NAME IS NULL   and   ao.o
bject_name = av.view_name  union all   SELECT OBJECT_NAME, OBJECT_ID , syn.SYNON
YM_NAME short_NAME,               DECODE(STATUS, 'INVALID', 'TRUE', 'FALSE') INV
ALID, SYN.TABLE_OWNER OBJECT_OWNER, O.CREATED, O.LAST_DDL_TIME, av.editioning_vi
ew editioning_view                 FROM SYS.Dba_OBJECTS O, sys.user_synonyms syn
, sys.Dba_views av                 WHERE  syn.table_owner = o.owner             
    and    syn.TABLE_NAME = o.object_NAME                 and    o.object_type =

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
 :TYPE        and    o.object_name = av.view_name        and    o.owner       = 
av.owner                 and    :INCLUDE                                        
2019-09-29/21:31:02                                                             
                                                                                
 select * from (   SELECT o.OBJECT_NAME, o.OBJECT_ID ,'' short_name, decode(bita
nd(t.property, 32), 32, 'YES', 'NO') partitioned,                 decode(bitand(
t.property, 64), 64, 'IOT',                decode(bitand(t.property, 512), 512, 
'IOT_OVERFLOW',                decode(bitand(t.flags, 536870912), 536870912, 'IO
T_MAPPING', null))) iot_type,           o.OWNER OBJECT_OWNER, o.CREATED, o.LAST_

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
DDL_TIME, O.GENERATED, O.TEMPORARY, case when xt.obj# is null then 'N' else 'Y' 
end EXTERNAL     FROM SYS.Dba_OBJECTS O ,sys.tab$ t, sys.external_tab$ xt     WH
ERE O.OWNER = :SCHEMA     and   o.object_id = t.obj#(+)     and   o.object_id = 
xt.obj#(+)     AND O.OBJECT_TYPE = 'TABLE'  union all SELECT OBJECT_NAME, OBJECT
_ID , syn.SYNONYM_NAME short_NAME, decode(bitand(t.property, 32), 32, 'YES', 'NO
') partitioned,                 decode(bitand(t.property, 64), 64, 'IOT',       
         decode(bitand(t.property, 512), 512, 'IOT_OVERFLOW',                dec
ode(bitand(t.flags, 536870912), 53687091                                        
2019-09-29/21:31:01                                                             

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
                                                                                
 select * from (   SELECT o.OBJECT_NAME, o.OBJECT_ID ,'' short_name, decode(bita
nd(t.property, 32), 32, 'YES', 'NO') partitioned,                 decode(bitand(
t.property, 64), 64, 'IOT',                decode(bitand(t.property, 512), 512, 
'IOT_OVERFLOW',                decode(bitand(t.flags, 536870912), 536870912, 'IO
T_MAPPING', null))) iot_type,           o.OWNER OBJECT_OWNER, o.CREATED, o.LAST_
DDL_TIME, O.GENERATED, O.TEMPORARY, case when xt.obj# is null then 'N' else 'Y' 
end EXTERNAL     FROM SYS.Dba_OBJECTS O ,sys.tab$ t, sys.external_tab$ xt     WH
ERE O.OWNER = :SCHEMA     and   o.object_id = t.obj#(+)     and   o.object_id = 

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
xt.obj#(+)     AND O.OBJECT_TYPE = 'TABLE'  union all SELECT OBJECT_NAME, OBJECT
_ID , syn.SYNONYM_NAME short_NAME, decode(bitand(t.property, 32), 32, 'YES', 'NO
') partitioned,                 decode(bitand(t.property, 64), 64, 'IOT',       
         decode(bitand(t.property, 512), 512, 'IOT_OVERFLOW',                dec
ode(bitand(t.flags, 536870912), 53687091                                        
2019-09-29/21:30:54                                                             
                                                                                
select DBMS_METADATA.get_dependent_ddl('CONSTRAINT',:NAME,:OWNER,:VERSION) sql f
rom all_constraints where table_name = :NAME and owner = :OWNER and constraint_t

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
ype in ('C','U','P') and rownum = 1                                             
2019-09-29/21:30:33                                                             
                                                                                
SELECT /*+rule*/ SYS_XMLGEN(VALUE(KU$), XMLFORMAT.createFormat2('REF_CONSTRAINT_
T', '7')), 0 FROM SYS.KU$_REF_CONSTRAINT_VIEW KU$ WHERE NOT BITAND(KU$.BASE_OBJ.
FLAGS,128)!=0 AND   KU$.BASE_OBJ.NAME='DEF$_CALLDEST' AND   KU$.BASE_OBJ.OWNER_N
AME='SYSTEM' AND  KU$.OWNER_NAME=:SCHEMA1                                       
2019-09-29/21:30:33                                                             
                                                                                

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
SELECT alias000$."STYLESHEET" AS STYLESHEET FROM "SYS"."METASTYLESHEET" alias000
$ WHERE 1 = 1 AND ((alias000$."NAME"='kualter') AND (alias000$."MODEL"='ORACLE')
)                                                                               
2019-09-29/21:30:33                                                             
                                                                                
select DBMS_METADATA.get_dependent_ddl('REF_CONSTRAINT',:NAME,:OWNER,:VERSION) s
ql from all_constraints where table_name = :NAME and owner = :OWNER and constrai
nt_type = 'R' and rownum = 1                                                    
2019-09-29/21:30:33                                                             

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
                                                                                
SELECT /*+rule*/ SYS_XMLGEN(VALUE(KU$), XMLFORMAT.createFormat2('CONSTRAINT_T', 
'7')), 0 FROM SYS.KU$_CONSTRAINT_VIEW KU$ WHERE NOT BITAND(KU$.BASE_OBJ.FLAGS,12
8)!=0 AND   KU$.BASE_OBJ.NAME='DEF$_CALLDEST' AND   KU$.BASE_OBJ.OWNER_NAME='SYS
TEM' AND  KU$.OWNER_NAME=:SCHEMA1                                               
2019-09-29/21:30:33                                                             
                                                                                
select DBMS_METADATA.GET_DDL('INDEX',:NAME,:OWNER,:VERSION) from dual           
2019-09-29/21:30:32                                                             

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
                                                                                
select ENQ_TID ENQ_TID, STEP_NO STEP_NO, DBLINK DBLINK, SCHEMA_NAME SCHEMA_NAME,
 PACKAGE_NAME PACKAGE_NAME, CATCHUP CATCHUP from (select * from "SYSTEM"."DEF$_C
ALLDEST")                                                                       
2019-09-29/21:30:32                                                             
                                                                                
select DBMS_METADATA.GET_DDL('TABLE',:NAME,:OWNER,:VERSION) from dual       unio
n all       select dbms_metadata.GET_DEPENDENT_DDL ('COMMENT', TABLE_NAME, OWNER
,:VERSION ) FROM        (select table_name,owner from all_col_comments where own

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
er = :OWNER and table_name = :NAME and comments is not null        union        
 select table_name,owner from sys.all_TAB_comments where owner = :OWNER and tabl
e_name = :NAME and comments is not null)                                        
2019-09-29/21:30:31                                                             
                                                                                
declare  FUNCTION ifelse (bool_in IN number)    RETURN boolean  IS  BEGIN    IF 
bool_in = 0    THEN      RETURN false;   ELSE      RETURN true;   END IF;  END; 
 begin   DBMS_METADATA.SET_TRANSFORM_PARAM(dbms_metadata.SESSION_TRANSFORM, 'SEG
MENT_ATTRIBUTES', ifelse(:SEGMENTS));   dbms_metadata.set_transform_param(dbms_m

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
etadata.SESSION_TRANSFORM,'SQLTERMINATOR',  ifelse(:TERMINATOR));  dbms_metadata
.set_transform_param(dbms_metadata.SESSION_TRANSFORM,'PRETTY',  ifelse(:PRETTY))
;  DBMS_METADATA.SET_TRANSFORM_PARAM( dbms_metadata.SESSION_TRANSFORM, 'SIZE_BYT
E_KEYWORD',  ifelse(:BYTE));  DBMS_METADATA.SET_TRANSFORM_PARAM( dbms_metadata.S
ESSION_TRANSFORM, 'FORCE',  ifelse(:FORCE));  DBMS_METADATA.SET_TRANSFORM_PARAM(
 dbms_metadata.SESSION_TRANSFORM, 'EMIT_SCHEMA',  ifelse(:SHOWSCHEMA));  DBMS_ME
TADATA.SET_TRANSFORM_PARAM( dbms_metadata.SESSION_TRANSFORM, 'CONSTRAINTS', ifel
se(:CONSTRAINT));   DBMS_METADATA.SET_TRANSFORM_PARAM( dbms_metadata.SESSION_TRA
NSFORM, 'REF_CONSTRAINTS', ifelse(:REF_C                                        

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
2019-09-29/21:30:31                                                             
                                                                                
Select trigger_name from all_triggers where table_owner = :OWNER and table_name 
= :NAME                                                                         
2019-09-29/21:30:30                                                             
                                                                                
Select index_name from all_indexes where table_owner = :OWNER and table_name = :
NAME                                                                            
2019-09-29/21:30:30                                                             

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
                                                                                
insert into WRI$_ALERT_HISTORY (sequence_id, reason_id, owner, object_name, subo
bject_name, reason_argument_1, reason_argument_2, reason_argument_3, reason_argu
ment_4, reason_argument_5, time_suggested, creation_time, action_argument_1, act
ion_argument_2, action_argument_3, action_argument_4, action_argument_5, message
_level, hosting_client_id, process_id, host_id, host_nw_addr, instance_name, ins
tance_number, user_id, execution_context_id, error_instance_id, resolution, metr
ic_value) values (:1, :2, :3, :4, :5, :6, :7, :8, :9, :10, :11, :12, :13, :14, :
15, :16, :17, :18, :19, :20, :21, :22, :23, :24, :25, :26, :27, :28, :29)       

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
2019-09-29/21:30:00                                                             
                                                                                
insert into "SYS"."ALERT_QT"  (q_name, msgid, corrid, priority, state, delay, ex
piration,   time_manager_info, local_order_no, chain_no, enq_time, step_no, enq_
uid,   enq_tid, retry_count, exception_qschema, exception_queue, recipient_key, 
  dequeue_msgid, user_data, sender_name, sender_address, sender_protocol,   user
_prop, cscn, dscn)   values (:1, :2, :3, :4, :5, :6, :7, :8, :9, :10, :11, :12, 
:13, :14, 0, :15,         :16, :17, :18, :19, :20, :21, :22, :23, :24, :25)     
2019-09-29/21:30:00                                                             

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
                                                                                
delete from WRI$_ALERT_OUTSTANDING where reason_id = :1 and object_id = :2 and s
ubobject_id = :3 and internal_instance_number = :4 returning owner, object_name,
 subobject_name, sequence_id, error_instance_id, creation_time into :5, :6, :7, 
:8, :9, :10                                                                     
2019-09-29/21:30:00                                                             
                                                                                
begin SYS.DBMS_UTILITY.NAME_RESOLVE(:1 ,:2 ,:3 ,:4 , :5 ,:6 ,:7 ,:8 ); end;     
2019-09-29/21:30:00                                                             

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
                                                                                
SELECT 'COLUMN' type, owner, table_name object_name, column_name, column_id, dat
a_type  FROM sys.all_tab_cols  WHERE hidden_column = 'NO' and rownum <=999 and o
wner = :1  and table_name = :2   and virtual_column='NO'                        
2019-09-29/21:30:00                                                             
                                                                                
select c.constraint_name,decode(c.constraint_type,'P','Primary_Key','U','Unique'
,'R','Foreign_Key','C','Check',c.constraint_type) constraint_type,c.search_condi
tion,c.r_owner,(select r.table_name from Dba_constraints r where c.r_owner = r.o

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
wner and c.r_constraint_name = r.constraint_name) r_table_name,c.r_constraint_na
me,c.delete_rule,c.status,c.deferrable,c.validated,c.generated,c.bad,c.rely,c.la
st_change,c.index_owner,c.index_name,c.invalid,c.view_related from Dba_constrain
ts c where c.owner = :OBJECT_OWNER and c.table_name = :OBJECT_NAME order by c.co
nstraint_name                                                                   
2019-09-29/21:29:19                                                             
                                                                                
SELECT cols.column_name column_name, cols.position column_position        FROM D
ba_constraints cons, Dba_cons_columns cols        WHERE --cons.constraint_type i

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
n ('U','P') AND         cons.constraint_name = cols.constraint_name        AND c
ons.owner = cols.owner        and cols.table_name = :OBJECT_NAME        and cons
.owner = :OBJECT_OWNER        and cols.constraint_name = :CONSTRAINT_NAME       
 ORDER BY cols.position                                                         
2019-09-29/21:29:18                                                             
                                                                                
Select PRIVILEGE, GRANTEE, GRANTABLE, GRANTOR, COLUMN_NAME object_name      from
 dba_col_privs where owner = :OBJECT_OWNER and TABLE_NAME =  :OBJECT_NAME      u
nion all      Select PRIVILEGE, GRANTEE, GRANTABLE, GRANTOR, table_NAME object_n

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
ame      from dba_tab_privs where owner = :OBJECT_OWNER and TABLE_NAME = :OBJECT
_NAME                                                                           
2019-09-29/21:29:12                                                             
                                                                                
select num_rows, blocks, avg_row_len, sample_size,      last_analyzed, last_anal
yzed last_analyzed_since      from sys.Dba_all_tables where owner = :OBJECT_OWNE
R and table_name = :OBJECT_NAME                                                 
2019-09-29/21:29:08                                                             
                                                                                

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
select * from sys.Dba_TAB_COL_STATISTICS       where  owner = :OBJECT_OWNER and 
table_name = :OBJECT_NAME                                                       
2019-09-29/21:29:08                                                             
                                                                                
Select dt.trigger_NAME, dt.trigger_type, owner trigger_owner, dt.triggering_Even
t, dt.status, :OBJECT_OWNER sdev_link_owner,             dt.trigger_NAME sdev_li
nk_name,'TRIGGER' sdev_link_type,             dt.table_name  -- 17581373        
     from   sys.Dba_triggers dt              where dt.table_owner = :OBJECT_OWNE
R     and   dt.table_name    = :OBJECT_NAME                                     

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
2019-09-29/21:29:06                                                             
                                                                                
SELECT  DECODE( versions_operation          , 'I', 'Insert'          , 'U', 'Upd
ate'          , 'D', 'Delete'               , 'Original'              ) "Operati
on" ,             versions_xid ,      versions_startscn ,      versions_endscn  
    ,rowid row_id        ,TIMESTAMP_TO_SCN(systimestamp) now_scn , 'SYSTEM' OBJE
CT_OWNER , 'DEF$_CALLDEST' OBJECT_NAME FROM   "SYSTEM"."DEF$_CALLDEST" /*ignore 
ORA-30051*/ VERSIONS BETWEEN SCN MINVALUE AND MAXVALUE                          
2019-09-29/21:29:05                                                             

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
                                                                                
select * from "SYSTEM"."DEF$_CALLDEST"       as of scn nvl(:VERSIONS_STARTSCN,TI
MESTAMP_TO_SCN(systimestamp)) /*ignore ORA-29913*/      where rowid = :ROW_ID   
2019-09-29/21:29:04                                                             
                                                                                
select owner, name, type, referenced_owner, referenced_name, referenced_type ,ow
ner sdev_link_owner, name sdev_link_name, type sdev_link_type from Dba_DEPENDENC
IES where referenced_owner = :OBJECT_OWNER and referenced_name = :OBJECT_NAME   
2019-09-29/21:29:02                                                             

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
                                                                                
select owner, name, type, referenced_owner, referenced_name, referenced_type ,re
ferenced_owner sdev_link_owner, referenced_name sdev_link_name, referenced_type 
sdev_link_type from Dba_DEPENDENCIES where owner = :OBJECT_OWNER and name = :OBJ
ECT_NAME                                                                        
2019-09-29/21:29:02                                                             
                                                                                
select o.created,o.last_ddl_time,t.*,c.comments from         (select OWNER,TABLE
_NAME,TABLESPACE_NAME,CLUSTER_NAME,IOT_NAME,STATUS,PCT_FREE,PCT_USED,INI_TRANS, 

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
MAX_TRANS,INITIAL_EXTENT,NEXT_EXTENT,MIN_EXTENTS,MAX_EXTENTS,PCT_INCREASE,FREELI
STS,FREELIST_GROUPS,LOGGING,BACKED_UP,NUM_ROWS, BLOCKS,EMPTY_BLOCKS,AVG_SPACE,CH
AIN_CNT,AVG_ROW_LEN,AVG_SPACE_FREELIST_BLOCKS,NUM_FREELIST_BLOCKS,ltrim(DEGREE) 
degree,ltrim(INSTANCES) instances, ltrim(CACHE) cache,TABLE_LOCK,SAMPLE_SIZE,LAS
T_ANALYZED,PARTITIONED,IOT_TYPE,OBJECT_ID_TYPE,TABLE_TYPE_OWNER,TABLE_TYPE,TEMPO
RARY, SECONDARY,NESTED,BUFFER_POOL,ROW_MOVEMENT,GLOBAL_STATS,USER_STATS,DURATION
,SKIP_CORRUPT,MONITORING,CLUSTER_OWNER,DEPENDENCIES,COMPRESSION,COMPRESS_FOR, DR
OPPED from Dba_all_tables a where owner = :OBJECT_OWNER and table_name = :OBJECT
_NAME ) t,        (select owner,object_name,created,last_ddl_time from sys.Dba_o

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
bjects where object_name = :OBJECT_NAME and owner = :OBJECT_OWNER and object_typ
e='TABLE') o,        (select owner,table                                        
2019-09-29/21:28:56                                                             
                                                                                
select PARTITION_NAME,LAST_ANALYZED, NUM_ROWS,BLOCKS, SAMPLE_SIZE, high_value   
       from Dba_tab_partitions where table_owner = :OBJECT_OWNER and table_name 
= :OBJECT_NAME                                                                  
2019-09-29/21:28:54                                                             
                                                                                

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
SELECT SUBPARTITION_NAME,LAST_ANALYZED, NUM_ROWS,BLOCKS, SAMPLE_SIZE, high_value
 FROM Dba_tab_subpartitions        where table_owner = :OBJECT_OWNER and table_n
ame = :OBJECT_NAME and partition_name = :PARTITION_NAME                         
2019-09-29/21:28:54                                                             
                                                                                
SELECT /*OracleDictionaryQueries.ALL_TIMESTAMP_BY_ID_10g_QUERY*/        AO.LAST_
DDL_TIME FROM SYS.ALL_OBJECTS AO WHERE AO.OBJECT_ID = :1  AND NOT EXISTS ( SELEC
T 1 FROM RECYCLEBIN RB WHERE RB.PURGE_OBJECT = AO.OBJECT_ID)                    
2019-09-29/21:28:51                                                             

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
                                                                                
select ind.*, ie.column_expression                               from Dba_ind_co
lumns ind,                                   Dba_ind_expressions ie             
                 where ind.index_name = :INDEX_NAME                             
   and ind.table_name = :OBJECT_NAME                                and ind.inde
x_owner = :OBJECT_OWNER                                and ind.index_name = ie.i
ndex_name(+)                                and ind.table_owner = ie.table_owner
(+)                                and ind.index_owner = ie.index_owner(+)      
                          and ind.column_position = ie.column_position(+)       

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
2019-09-29/21:28:51                                                             
                                                                                
select ind.index_owner,ind.index_name,ind.uniqueness,                ind.status,
ind.index_type,ind.temporary, ind.partitioned,ind.funcidx_status,               
 ind.join_index,ind.columns               ,ind.index_name sdev_link_name,'INDEX'
 sdev_link_type, ind.index_owner sdev_link_owner             from (select index_
owner,table_owner,index_name,uniqueness, status,index_type,temporary, partitione
d,funcidx_status, join_index,               max(decode(position,1 ,column_name))
||                   max(decode(position,2 ,', '||column_name))||               

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
    max(decode(position,3 ,', '||column_name))||        max(decode(position,4 ,'
, '||column_name))||        max(decode(position,5 ,', '||column_name))||        
max(decode(position,6 ,', '||column_name))||        max(decode(position,7 ,', '|
|column_name))||        max(decode(position,8 ,', '||column_name))||        max(
decode(position,9 ,', '||column_name))||        max(decode(position,10 ,', '||co
lumn_name))||        max(decode(position                                        
2019-09-29/21:28:51                                                             
                                                                                
select lobtsn, lobrdba, lobobjid from x$lobstat   where lobspcalloc > 0 and lobc

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
urrtime >= :1   order by lobspcalloc desc                                       
2019-09-29/21:28:49                                                             
                                                                                
insert into sys.mon_mods$ (obj#, inserts, updates, deletes, timestamp, flags, dr
op_segments) values (:1, :2, :3, :4, :5, :6, :7)                                
2019-09-29/21:28:47                                                             
                                                                                
lock table sys.mon_mods$ in exclusive mode nowait                               
2019-09-29/21:28:47                                                             

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
                                                                                
update sys.col_usage$ set   equality_preds    = equality_preds    + decode(bitan
d(:flag,1),0,0,1),   equijoin_preds    = equijoin_preds    + decode(bitand(:flag
,2),0,0,1),   nonequijoin_preds = nonequijoin_preds + decode(bitand(:flag,4),0,0
,1),   range_preds       = range_preds       + decode(bitand(:flag,8),0,0,1),   
like_preds        = like_preds        + decode(bitand(:flag,16),0,0,1),   null_p
reds        = null_preds        + decode(bitand(:flag,32),0,0,1),  timestamp = :
time where obj# = :objn and intcol# = :coln                                     
2019-09-29/21:28:47                                                             

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
                                                                                
insert into sys.col_usage$ (obj#, intcol#, equality_preds, equijoin_preds, noneq
uijoin_preds, range_preds, like_preds, null_preds, timestamp) values (   :objn, 
:coln,   decode(bitand(:flag,1),0,0,1),   decode(bitand(:flag,2),0,0,1),   decod
e(bitand(:flag,4),0,0,1),   decode(bitand(:flag,8),0,0,1),   decode(bitand(:flag
,16),0,0,1),   decode(bitand(:flag,32),0,0,1),   :time)                         
2019-09-29/21:28:47                                                             
                                                                                
update sys.mon_mods$ set inserts = inserts + :ins, updates = updates + :upd, del

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
etes = deletes + :del, flags = (decode(bitand(flags, :flag), :flag, flags, flags
 + :flag)), drop_segments = drop_segments + :dropseg, timestamp = :time where ob
j# = :objn                                                                      
2019-09-29/21:28:47                                                             
                                                                                
lock table sys.col_usage$ in exclusive mode nowait                              
2019-09-29/21:28:47                                                             
                                                                                
SELECT /*+all_rows*/ SYS_XMLGEN(VALUE(KU$), XMLFORMAT.createFormat2('INDEX_T', '

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
7')), KU$.OBJ_NUM FROM SYS.KU$_INDEX_VIEW KU$ WHERE NOT BITAND(KU$.BASE_OBJ.FLAG
S,128)!=0 AND  KU$.SCHEMA_OBJ.NAME=:NAME1 AND  KU$.SCHEMA_OBJ.OWNER_NAME=:SCHEMA
2                                                                               
2019-09-29/21:28:45                                                             
                                                                                
SELECT alias000$."STYLESHEET" AS STYLESHEET FROM "SYS"."METASTYLESHEET" alias000
$ WHERE 1 = 1 AND ((alias000$."NAME"='kucoment') AND (alias000$."MODEL"='ORACLE'
))                                                                              
2019-09-29/21:28:45                                                             

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
                                                                                
SELECT alias000$."STYLESHEET" AS STYLESHEET FROM "SYS"."METASTYLESHEET" alias000
$ WHERE 1 = 1 AND ((alias000$."NAME"='kuindex') AND (alias000$."MODEL"='ORACLE')
)                                                                               
2019-09-29/21:28:45                                                             
                                                                                
SELECT /*+rule*/ SYS_XMLGEN(VALUE(KU$), XMLFORMAT.createFormat2('COMMENT_T', '7'
)), 0 FROM SYS.KU$_COMMENT_VIEW KU$ WHERE NOT BITAND(KU$.BASE_OBJ.FLAGS,128)!=0 
AND   KU$.BASE_OBJ.NAME='DEF$_CALLDEST' AND   KU$.BASE_OBJ.OWNER_NAME='SYSTEM'  

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
2019-09-29/21:28:44                                                             
                                                                                
SELECT alias000$."STYLESHEET" AS STYLESHEET FROM "SYS"."METASTYLESHEET" alias000
$ WHERE 1 = 1 AND ((alias000$."NAME"='kuntab') AND (alias000$."MODEL"='ORACLE'))
2019-09-29/21:28:44                                                             
                                                                                
SELECT alias000$."STYLESHEET" AS STYLESHEET FROM "SYS"."METASTYLESHEET" alias000
$ WHERE 1 = 1 AND ((alias000$."NAME"='kuexttbl') AND (alias000$."MODEL"='ORACLE'
))                                                                              

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
2019-09-29/21:28:44                                                             
                                                                                
SELECT alias000$."STYLESHEET" AS STYLESHEET FROM "SYS"."METASTYLESHEET" alias000
$ WHERE 1 = 1 AND ((alias000$."NAME"='kuprtobj') AND (alias000$."MODEL"='ORACLE'
))                                                                              
2019-09-29/21:28:44                                                             
                                                                                
SELECT alias000$."STYLESHEET" AS STYLESHEET FROM "SYS"."METASTYLESHEET" alias000
$ WHERE 1 = 1 AND ((alias000$."NAME"='kucommon') AND (alias000$."MODEL"='ORACLE'

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
))                                                                              
2019-09-29/21:28:44                                                             
                                                                                
SELECT alias000$."STYLESHEET" AS STYLESHEET FROM "SYS"."METASTYLESHEET" alias000
$ WHERE 1 = 1 AND ((alias000$."NAME"='kustorag') AND (alias000$."MODEL"='ORACLE'
))                                                                              
2019-09-29/21:28:44                                                             
                                                                                
SELECT alias000$."STYLESHEET" AS STYLESHEET FROM "SYS"."METASTYLESHEET" alias000

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
$ WHERE 1 = 1 AND ((alias000$."NAME"='kutabcon') AND (alias000$."MODEL"='ORACLE'
))                                                                              
2019-09-29/21:28:44                                                             
                                                                                
SELECT alias000$."STYLESHEET" AS STYLESHEET FROM "SYS"."METASTYLESHEET" alias000
$ WHERE 1 = 1 AND ((alias000$."NAME"='kuconstr') AND (alias000$."MODEL"='ORACLE'
))                                                                              
2019-09-29/21:28:44                                                             
                                                                                

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
SELECT alias000$."STYLESHEET" AS STYLESHEET FROM "SYS"."METASTYLESHEET" alias000
$ WHERE 1 = 1 AND ((alias000$."NAME"='kuiot') AND (alias000$."MODEL"='ORACLE')) 
2019-09-29/21:28:44                                                             
                                                                                
SELECT alias000$."STYLESHEET" AS STYLESHEET FROM "SYS"."METASTYLESHEET" alias000
$ WHERE 1 = 1 AND ((alias000$."NAME"='kucot') AND (alias000$."MODEL"='ORACLE')) 
2019-09-29/21:28:44                                                             
                                                                                
SELECT alias000$."STYLESHEET" AS STYLESHEET FROM "SYS"."METASTYLESHEET" alias000

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
$ WHERE 1 = 1 AND ((alias000$."NAME"='kucolumn') AND (alias000$."MODEL"='ORACLE'
))                                                                              
2019-09-29/21:28:44                                                             
                                                                                
SELECT alias000$."STYLESHEET" AS STYLESHEET FROM "SYS"."METASTYLESHEET" alias000
$ WHERE 1 = 1 AND ((alias000$."NAME"='kulob') AND (alias000$."MODEL"='ORACLE')) 
2019-09-29/21:28:44                                                             
                                                                                
SELECT alias000$."STYLESHEET" AS STYLESHEET FROM "SYS"."METASTYLESHEET" alias000

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
$ WHERE 1 = 1 AND ((alias000$."NAME"='kuidxwrk') AND (alias000$."MODEL"='ORACLE'
))                                                                              
2019-09-29/21:28:44                                                             
                                                                                
SELECT alias000$."STYLESHEET" AS STYLESHEET FROM "SYS"."METASTYLESHEET" alias000
$ WHERE 1 = 1 AND ((alias000$."NAME"='kuobjtbl') AND (alias000$."MODEL"='ORACLE'
))                                                                              
2019-09-29/21:28:44                                                             
                                                                                

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
SELECT count(*) FROM SYS.KU$_TABPROP_VIEW WHERE schema = :1 and name = :2 AND bi
tand(property,1607983103) in (0,1024,8192) and rownum < 2                       
2019-09-29/21:28:43                                                             
                                                                                
SELECT count(*) FROM SYS.KU$_PFHTABPROP_VIEW  WHERE schema = :1 and name = :2 AN
D bitand(property,32+64+128+256+512)=32 and bitand(property,1607983103) not in (
32,32+8192) and rownum < 2                                                      
2019-09-29/21:28:43                                                             
                                                                                

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
select oidtext, oidtextlength from typed_view$ where obj# = :1                  
2019-09-29/21:28:43                                                             
                                                                                
SELECT binarydefval from ecol$ where tabobj#=:1 and  colnum=:2                  
2019-09-29/21:28:43                                                             
                                                                                
select text from view$ where obj#=:1                                            
2019-09-29/21:28:43                                                             
                                                                                

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
SELECT NT.OBJ#, NT.INTCOL# FROM SYS.NTAB$ NT WHERE NT.NTAB#=:B1                 
2019-09-29/21:28:43                                                             
                                                                                
SELECT count(*) FROM SYS.KU$_TABPROP_VIEW WHERE schema = :1 and name = :2 AND bi
tand(property,32+64+512)=32+64 and rownum < 2                                   
2019-09-29/21:28:43                                                             
                                                                                
SELECT count(*) FROM SYS.KU$_TABPROP_VIEW WHERE schema = :1 and name = :2 AND bi
tand(property,1607983103) in (32,32+8192) and rownum < 2                        

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
2019-09-29/21:28:43                                                             
                                                                                
SELECT A.NAME FROM ATTRCOL$ A WHERE A.OBJ#=:B2 AND A.INTCOL#=:B1                
2019-09-29/21:28:43                                                             
                                                                                
SELECT /*+rule*/ SYS_XMLGEN(VALUE(KU$), XMLFORMAT.createFormat2('TABLE_T', '7'))
, KU$.OBJ_NUM FROM SYS.KU$_HTABLE_VIEW KU$ WHERE NOT (BITAND (KU$.PROPERTY,8192)
=8192) AND  NOT BITAND(KU$.SCHEMA_OBJ.FLAGS,128)!=0 AND  KU$.SCHEMA_OBJ.NAME=:NA
ME1 AND  KU$.SCHEMA_OBJ.OWNER_NAME=:SCHEMA2                                     

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
2019-09-29/21:28:43                                                             
                                                                                
SELECT count(*) FROM SYS.KU$_TABPROP_VIEW WHERE schema = :1 and name = :2 AND bi
tand(property,32+64+512)=64 and rownum < 2                                      
2019-09-29/21:28:43                                                             
                                                                                
select transtextlength,rowid from typed_view$ where obj#=:1                     
2019-09-29/21:28:43                                                             
                                                                                

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
SELECT alias000$."STYLESHEET" AS STYLESHEET FROM "SYS"."METASTYLESHEET" alias000
$ WHERE 1 = 1 AND ((alias000$."NAME"='kutable') AND (alias000$."MODEL"='ORACLE')
)                                                                               
2019-09-29/21:28:43                                                             
                                                                                
SELECT count(*) FROM SYS.KU$_REFPARTTABPROP_VIEW  WHERE schema = :1 and name = :
2 AND  rownum < 2                                                               
2019-09-29/21:28:43                                                             
                                                                                

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
SELECT C.DEFAULT$,C.PROPERTY FROM SYS.COL$ C WHERE C.OBJ#=:B2 AND C.INTCOL#=:B1 
2019-09-29/21:28:43                                                             
                                                                                
SELECT DEFAULT$ FROM SYS.COL$ WHERE rowid=:1                                    
2019-09-29/21:28:43                                                             
                                                                                
SELECT count(*) FROM SYS.KU$_TABPROP_VIEW WHERE schema = :1 and name = :2 AND bi
tand(property,32+64+128+256+512)=0 and bitand(property,1607983103) not in (0,102
4,8192) and rownum < 2                                                          

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
2019-09-29/21:28:43                                                             
                                                                                
select DBMS_METADATA.GET_DDL('TABLE',OBJECT_NAME,OWNER) FROM Dba_objects where o
wner = :OWNER and object_name = :NAME and object_type = 'TABLE'      union all  
     select dbms_metadata.GET_DEPENDENT_DDL ('COMMENT', TABLE_NAME, OWNER ) FROM
        (select table_name,owner from Dba_col_comments where owner = :OWNER and 
table_name = :NAME and comments is not null        union         select table_na
me,owner from sys.Dba_TAB_comments where owner = :OWNER and table_name = :NAME a
nd comments is not null)       union all        select DBMS_METADATA.GET_DDL('IN

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
DEX',INDEX_NAME, OWNER) FROM        (select index_name, owner from sys.Dba_index
es where table_owner = :OWNER and table_name = :NAME and generated = 'N'        
minus select index_name, owner from sys.Dba_constraints where owner = :OWNER and
 table_name = :NAME)      union all        select dbms_metadata.GET_DDL ('TRIGGE
R', trigger_name ,owner ) from Dba_triggers where table_owner = :OWNER and table
_name = :NAME                                                                   
2019-09-29/21:28:42                                                             
                                                                                
SELECT script FROM sys.metaxsl$ WHERE xmltag=:1 AND transform=:2  AND model=:3  

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
2019-09-29/21:28:42                                                             
                                                                                
SELECT decode(bitand(properties,1), 0, 0, 1), decode(bitand(properties,2), 0, 0,
 1), decode(bitand(properties,4), 0, 0, 1), decode(bitand(properties,32), 0, 0, 
1), decode(bitand(properties,256), 0, 0, 1), decode(bitand(properties,512), 0, 0
, 1), decode(bitand(properties,1024), 0, 0, 1), version, xmltag, udt, schema, vi
ewname, flags, decode(bitand(flags,1), 0, 0, 1), decode(bitand(flags,2), 0, 0, 1
), decode(bitand(flags,4), 0, 0, 1), decode(bitand(flags,8), 0, 0, 1), decode(bi
tand(flags,16), 0, 0, 1), decode(bitand(flags,32), 0, 0, 1), decode(bitand(flags

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
,64), 0, 0, 1), decode(bitand(flags,128), 0, 0, 1), decode(bitand(flags,256), 0,
 0, 1), decode(bitand(flags,512), 0, 0, 1), decode(bitand(flags,1024), 0, 0, 1),
 decode(bitand(flags,2048), 0, 0, 1), decode(bitand(flags,4096), 0, 0, 1), decod
e(bitand(flags,8192), 0, 0, 1), decode(bitand(flags,16384), 0, 0, 1), decode(bit
and(flags,32768), 0, 0, 1), decode(bitand(flags,65536), 0, 0, 1), decode(bitand(
flags,131072), 0, 0, 1), decode(bitand(f                                        
2019-09-29/21:28:42                                                             
                                                                                
SELECT count(*) FROM SYS.KU$_TABPROP_VIEW WHERE schema = :1 and name = :2 AND ro

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
wnum < 2                                                                        
2019-09-29/21:28:42                                                             
                                                                                
UPDATE SYS.KU_UTLUSE   SET USECNT      = USECNT + 1,       ENCRYPTCNT  = ENCRYPT
CNT  + :1,       COMPRESSCNT = COMPRESSCNT + :2,       LAST_USED = CURRENT_TIMES
TAMP WHERE UTLNAME   = :3                                                       
2019-09-29/21:28:42                                                             
                                                                                
SELECT VALUE FROM V$PARAMETER WHERE NAME = 'compatible'                         

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
2019-09-29/21:28:42                                                             
                                                                                
declare  FUNCTION ifelse (bool_in IN number)    RETURN boolean  IS  BEGIN    IF 
bool_in = 0    THEN      RETURN false;   ELSE      RETURN true;   END IF;  END; 
 begin   DBMS_METADATA.SET_TRANSFORM_PARAM(dbms_metadata.SESSION_TRANSFORM, 'SEG
MENT_ATTRIBUTES', ifelse(:SEGMENTS));   dbms_metadata.set_transform_param(dbms_m
etadata.SESSION_TRANSFORM,'SQLTERMINATOR', ifelse(:TERMINATOR));  dbms_metadata.
set_transform_param(dbms_metadata.SESSION_TRANSFORM,'PRETTY', ifelse(:PRETTY)); 
 DBMS_METADATA.SET_TRANSFORM_PARAM( dbms_metadata.SESSION_TRANSFORM, 'SIZE_BYTE_

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
KEYWORD', ifelse(:BYTE));  DBMS_METADATA.SET_TRANSFORM_PARAM( dbms_metadata.SESS
ION_TRANSFORM, 'FORCE', ifelse(:FORCE));  DBMS_METADATA.SET_TRANSFORM_PARAM( dbm
s_metadata.SESSION_TRANSFORM, 'CONSTRAINTS_AS_ALTER', ifelse(:ALTER));  DBMS_MET
ADATA.SET_TRANSFORM_PARAM( dbms_metadata.SESSION_TRANSFORM, 'EMIT_SCHEMA', ifels
e(:SHOWSCHEMA));  DBMS_METADATA.SET_TRANSFORM_PARAM( dbms_metadata.SESSION_TRANS
FORM, 'CONSTRAINTS', ifelse(:CONSTRAINT)                                        
2019-09-29/21:28:42                                                             
                                                                                
SELECT SYS_CONTEXT('USERENV','CURRENT_USER') FROM DUAL                          

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
2019-09-29/21:28:42                                                             
                                                                                
LOCK TABLE SYS.KU_UTLUSE IN EXCLUSIVE MODE                                      
2019-09-29/21:28:42                                                             
                                                                                
      declare          policy        varchar2(512);          alldest       numbe
r  := dbms_rcvman.FALSE#;          rlgscn        number;        begin          i
f (:alldest > 0) then             alldest := dbms_rcvman.TRUE#;          end if;
          dbms_rcvman.getRedoLogDeletionPolicy(policy  => policy);          dbms

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
_rcvman.setRedoLogDeletionPolicy(policy  =>  policy,                            
                   alldest =>  alldest);          if ((policy like '%APPLIED%' O
R                policy like '%SHIPPED%') AND               policy not like '%BA
CKED UP%') then             dbms_rcvman.getSCNForAppliedPolicy(                m
inscn     => :applied_scn               ,rlgscn     => rlgscn);          else   
          :applied_scn := 0;          end if;       end;                        
2019-09-29/21:28:39                                                             
                                                                                
      begin          dbms_rcvman.setDatabase(upper(:dbname:dbname_i),           

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
                       :rlgscn,                                  :rlgtime,      
                            :fhdbi:fhdbi_i);       end;                         
2019-09-29/21:28:39                                                             
                                                                                
       begin          :vsn_min := dbms_backup_restore.protocol_version_number_mi
n;             :rel_min := dbms_backup_restore.protocol_release_number_min;     
        :upd_min := dbms_backup_restore.protocol_update_number_min;             
 :cmp_min := 0;                                                                 
    :vsn_max := dbms_backup_restore.protocol_version_number_max;             :re

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
l_max := dbms_backup_restore.protocol_release_number_max;             :upd_max :
= dbms_backup_restore.protocol_update_number_max;              :cmp_max := 0;   
                                                        :pkg_vsn := to_char(:vsn
_max, 'fm00')||'.'||                      to_char(:rel_max, 'fm00')||'.'||      
                to_char(:upd_max, 'fm00')||'.'||                      to_char(:c
mp_max, 'fm00');             end;                                               
2019-09-29/21:28:39                                                             
                                                                                
       begin          :cmp_min := dbms_backup_restore.protocol_component_number_

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
min;           :cmp_max := dbms_backup_restore.protocol_component_number_max;   
        :pkg_vsn := to_char(:vsn_max, 'fm00')||'.'||                      to_cha
r(:rel_max, 'fm00')||'.'||                      to_char(:upd_max, 'fm00')||'.'||
                      to_char(:cmp_max, 'fm00');             end;               
2019-09-29/21:28:39                                                             
                                                                                
select a.owner,a.table_name, a.constraint_name, a.delete_rule,a.r_constraint_nam
e, a.deferred, a.deferrable from sys.all_constraints a, (select owner,constraint
_name from sys.all_constraints where owner = :1  and table_name = :2  and constr

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
aint_type in ('P','U')) b where a.constraint_type = 'R' and a.r_constraint_name 
= b.constraint_name and a.r_owner = b.owner                                     
2019-09-29/21:28:36                                                             
                                                                                
SELECT GRANTEE,PRIVILEGE,GRANTABLE,HIERARCHY FROM all_tab_privs WHERE TABLE_SCHE
MA=:1  AND TABLE_NAME=:2                                                        
2019-09-29/21:28:36                                                             
                                                                                
SELECT GRANTEE,COLUMN_NAME,PRIVILEGE,GRANTABLE FROM all_col_privs WHERE TABLE_SC

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
HEMA=:1  AND TABLE_NAME=:2                                                      
2019-09-29/21:28:36                                                             
                                                                                
SELECT OWNER,TRIGGER_NAME,TRIGGER_TYPE,TRIGGERING_EVENT,REFERENCING_NAMES,WHEN_C
LAUSE,CROSSEDITION,TRIGGER_BODY FROM all_triggers WHERE TABLE_OWNER=:1  AND TABL
E_NAME=:2                                                                       
2019-09-29/21:28:35                                                             
                                                                                
SELECT CONSTRAINT_NAME, CONSTRAINT_TYPE, DEFERRED, STATUS, DEFERRABLE, VALIDATED

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
, SEARCH_CONDITION, R_OWNER, R_CONSTRAINT_NAME, DELETE_RULE, INDEX_NAME, GENERAT
ED, RELY FROM all_constraints WHERE OWNER=:1  AND TABLE_NAME=:2  AND CONSTRAINT_
TYPE IN ('P','U','C','R') ORDER BY CONSTRAINT_NAME                              
2019-09-29/21:28:35                                                             
                                                                                
select log_group_name,log_group_type,always from ALL_LOG_GROUPS where owner = :1
  and table_name = :2                                                           
2019-09-29/21:28:35                                                             
                                                                                

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
SELECT a.COLUMN_NAME,DATA_TYPE,DATA_TYPE_MOD,DATA_TYPE_OWNER,DATA_LENGTH,DATA_PR
ECISION,DATA_SCALE,CHAR_USED,CHAR_LENGTH,NULLABLE,COLUMN_ID,VIRTUAL_COLUMN,ENCRY
PTION_ALG,SALT,DATA_DEFAULT FROM all_tab_cols a ,all_encrypted_columns c WHERE a
.OWNER=:1  AND a.TABLE_NAME=:2  AND a.OWNER=c.OWNER (+) AND a.TABLE_NAME=c.TABLE
_NAME (+) AND a.COLUMN_NAME=c.COLUMN_NAME (+) AND HIDDEN_COLUMN='NO' ORDER BY CO
LUMN_ID                                                                         
2019-09-29/21:28:34                                                             
                                                                                
SELECT OWNER,a.INDEX_NAME,INDEX_TYPE,JOIN_INDEX,UNIQUENESS,PREFIX_LENGTH,TABLESP

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
ACE_NAME,INI_TRANS,MAX_TRANS,INITIAL_EXTENT,NEXT_EXTENT,MIN_EXTENTS,MAX_EXTENTS,
PCT_INCREASE,PCT_THRESHOLD,INCLUDE_COLUMN,FREELISTS,FREELIST_GROUPS,PCT_FREE,LOG
GING,DEGREE,PARTITIONED,BUFFER_POOL,ITYP_OWNER,ITYP_NAME,PARAMETERS,VISIBILITY,b
.TABLE_OWNER,b.TABLE_NAME,COLUMN_NAME,DESCEND FROM all_indexes a,all_ind_columns
 b WHERE a.TABLE_OWNER=:1  AND a.TABLE_NAME=:2  AND OWNER=INDEX_OWNER (+) AND a.
INDEX_NAME=b.INDEX_NAME (+) ORDER BY OWNER,a.INDEX_NAME,COLUMN_POSITION         
2019-09-29/21:28:34                                                             
                                                                                
SELECT a.OWNER,a.TABLE_NAME,TABLESPACE_NAME,CLUSTER_NAME,PCT_FREE,PCT_USED,INI_T

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
RANS,MAX_TRANS,INITIAL_EXTENT,NEXT_EXTENT,MIN_EXTENTS,MAX_EXTENTS,PCT_INCREASE,F
REELISTS,FREELIST_GROUPS,LOGGING,DEGREE,CACHE,PARTITIONED,IOT_TYPE,OBJECT_ID_TYP
E,TABLE_TYPE_OWNER,a.TABLE_TYPE,TEMPORARY,DURATION,BUFFER_POOL,ROW_MOVEMENT,DEPE
NDENCIES,COMPRESSION,COMPRESS_FOR,QUERY,UPDATABLE,MASTER_ROLLBACK_SEG,REWRITE_EN
ABLED,REFRESH_MODE,REFRESH_METHOD,BUILD_MODE,USE_NO_INDEX FROM all_all_tables a,
all_mviews b WHERE a.OWNER=:1  AND a.TABLE_NAME=:2  AND a.OWNER=b.OWNER (+) AND 
a.TABLE_NAME=b.MVIEW_NAME (+)                                                   
2019-09-29/21:28:33                                                             
                                                                                

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
select a.owner,a.table_name from sys.all_constraints a, (select r_owner,r_constr
aint_name from sys.all_constraints where r_owner = :1  and table_name = :2  and 
constraint_type = 'R') b where a.constraint_type in ('P','U') and a.constraint_n
ame = b.r_constraint_name and a.owner = b.r_owner                               
2019-09-29/21:28:33                                                             
                                                                                
select a.owner,a.table_name from sys.all_constraints a, (select owner,constraint
_name from sys.all_constraints where owner = :1  and table_name = :2  and constr
aint_type in ('P','U')) b where a.constraint_type = 'R' and a.r_constraint_name 

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
= b.constraint_name and a.r_owner = b.owner                                     
2019-09-29/21:28:32                                                             
                                                                                
SELECT /*OracleDictionaryQueries.ALL_USERS_QUERY*/ USERNAME, 'SCHEMA', NULL OBJE
CT_ID, NULL LAST_DDL_TIME FROM SYS.ALL_USERS WHERE USERNAME LIKE :1             
2019-09-29/21:28:07                                                             
                                                                                
select c.column_name,  case when data_type = 'CHAR'     then      data_type||'('
||c.char_length||decode(char_used,'B',' BYTE','C',' CHAR',null)||')'            

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
    when data_type = 'VARCHAR'  then      data_type||'('||c.char_length||decode(
char_used,'B',' BYTE','C',' CHAR',null)||')'                when data_type = 'VA
RCHAR2' then      data_type||'('||c.char_length||decode(char_used,'B',' BYTE','C
',' CHAR',null)||')'                when data_type = 'NCHAR'    then      data_t
ype||'('||c.char_length||decode(char_used,'B',' BYTE','C',' CHAR',null)||')'    
            when data_type = 'NUMBER' then                    case when c.data_p
recision is null and c.data_scale is null then          'NUMBER'               w
hen c.data_precision is null and c.data_scale is not null then          'NUMBER(
38,'||c.data_scale||')'               else           data_type||'('||c.data_prec

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
ision||','||c.data_SCALE||')'      end                when data_type = 'NVARCHAR
' then      data_type||'('||c.char_lengt                                        
2019-09-29/21:28:06                                                             
                                                                                
 select * from (   SELECT o.OBJECT_NAME, o.OBJECT_ID ,'' short_name, decode(bita
nd(t.property, 32), 32, 'YES', 'NO') partitioned,                 decode(bitand(
t.property, 64), 64, 'IOT',                decode(bitand(t.property, 512), 512, 
'IOT_OVERFLOW',                decode(bitand(t.flags, 536870912), 536870912, 'IO
T_MAPPING', null))) iot_type,           o.OWNER OBJECT_OWNER, o.CREATED, o.LAST_

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
DDL_TIME, O.GENERATED, O.TEMPORARY, case when xt.obj# is null then 'N' else 'Y' 
end EXTERNAL     FROM SYS.Dba_OBJECTS O ,sys.tab$ t, sys.external_tab$ xt     WH
ERE O.OWNER = :SCHEMA     and   o.object_id = t.obj#(+)     and   o.object_id = 
xt.obj#(+)     AND O.OBJECT_TYPE = 'TABLE'  union all SELECT OBJECT_NAME, OBJECT
_ID , syn.SYNONYM_NAME short_NAME, decode(bitand(t.property, 32), 32, 'YES', 'NO
') partitioned,                 decode(bitand(t.property, 64), 64, 'IOT',       
         decode(bitand(t.property, 512), 512, 'IOT_OVERFLOW',                dec
ode(bitand(t.flags, 536870912), 53687091                                        
2019-09-29/21:28:05                                                             

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
                                                                                
select * from ( SELECT ao.OBJECT_NAME, ao.OBJECT_ID, '' short_name,             
  DECODE(ao.STATUS, 'INVALID', 'TRUE', 'FALSE') INVALID, ao.OWNER OBJECT_OWNER, 
ao.CREATED, ao.LAST_DDL_TIME, av.editioning_view editioning_view   FROM SYS.Dba_
OBJECTS ao, sys.Dba_views av   WHERE ao.OWNER = :SCHEMA   and   av.OWNER = :SCHE
MA   AND   ao.OBJECT_TYPE = :TYPE   AND   ao.SUBOBJECT_NAME IS NULL   and   ao.o
bject_name = av.view_name  union all   SELECT OBJECT_NAME, OBJECT_ID , syn.SYNON
YM_NAME short_NAME,               DECODE(STATUS, 'INVALID', 'TRUE', 'FALSE') INV
ALID, SYN.TABLE_OWNER OBJECT_OWNER, O.CREATED, O.LAST_DDL_TIME, av.editioning_vi

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
ew editioning_view                 FROM SYS.Dba_OBJECTS O, sys.user_synonyms syn
, sys.Dba_views av                 WHERE  syn.table_owner = o.owner             
    and    syn.TABLE_NAME = o.object_NAME                 and    o.object_type =
 :TYPE        and    o.object_name = av.view_name        and    o.owner       = 
av.owner                 and    :INCLUDE                                        
2019-09-29/21:26:19                                                             
                                                                                
 declare    l_schema      varchar2(128);    l_part1       varchar2(128);    l_pa
rt2       varchar2(128);    l_dblink      varchar2(128);    l_part1_type  number

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
;    l_objid       number; begin  DBMS_UTILITY.NAME_RESOLVE (     name          
=> :obj_name,     context       => 0,    schema        => l_schema,      part1  
       => l_part1,     part2         => l_part2,    dblink        => l_dblink,  
   part1_type    => l_part1_type,     object_number => l_objid ); end;          
2019-09-29/21:26:03                                                             
                                                                                
select procedure#,procedurename,properties,itypeobj# from procedureinfo$ where o
bj#=:1 order by procedurename desc, overload# desc                              
2019-09-29/21:26:02                                                             

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
                                                                                
select parameter,value from nls_session_parameters   union all SELECT 'DB_TIMEZO
NE' name, DBTIMEZONE  value FROM DUAL   union all SELECT 'SESSION_TIMEZONE' name
, SESSIONTIMEZONE value FROM DUAL  union all SELECT 'SESSION_TIMEZONE_OFFSET' na
me, TZ_OFFSET(SESSIONTIMEZONE) value from DUAL  union all SELECT parameter, valu
e FROM nls_database_parameters WHERE parameter='NLS_CHARACTERSET'               
2019-09-29/21:26:02                                                             
                                                                                
select USER from dual                                                           

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
2019-09-29/21:26:02                                                             
                                                                                
select username from user_role_privs where username = (select user from dual) an
d granted_role = 'DBA'                                                          
2019-09-29/21:26:01                                                             
                                                                                
declare   m_stmt  varchar2(512); begin    m_stmt:='delete from sdo_geor_ddl__tab
le$$';    EXECUTE IMMEDIATE m_stmt;    EXCEPTION      WHEN OTHERS THEN        NU
LL; end;                                                                        

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
2019-09-29/21:26:00                                                             
                                                                                
 declare    l_schema      varchar2(128);    l_part1       varchar2(128);    l_pa
rt2       varchar2(128);    l_dblink      varchar2(128);    l_part1_type  number
;    l_objid       number; begin  DBMS_UTILITY.NAME_RESOLVE (     name          
=> :obj_name,     context       => 0,    schema        => l_schema,      part1  
       => l_part1,     part2         => l_part2,    dblink        => l_dblink,  
   part1_type    => l_part1_type,     object_number => l_objid ); end;          
2019-09-29/21:26:00                                                             

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
                                                                                
begin prvt_hdm.auto_execute( :dbid, :inst_num , :end_snap_id ); end;            
2019-09-29/21:24:05                                                             
                                                                                
select bo#, intcol# from icoldep$ where obj#=:1                                 
2019-09-29/21:24:03                                                             
                                                                                
select type#,blocks,extents,minexts,maxexts,extsize,extpct,user#,iniexts,NVL(lis
ts,65535),NVL(groups,65535),cachehint,hwmincr, NVL(spare1,0),NVL(scanhint,0),NVL

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
(bitmapranges,0) from seg$ where ts#=:1 and file#=:2 and block#=:3              
2019-09-29/21:24:03                                                             
                                                                                
select obj#,type#,ctime,mtime,stime, status, dataobj#, flags, oid$, spare1, spar
e2 from obj$ where owner#=:1 and name=:2 and namespace=:3 and remoteowner is nul
l and linkname is null and subname is null                                      
2019-09-29/21:23:58                                                             
                                                                                
WITH UNQIDX AS (SELECT /*+ index(cc) */ CD.CON#,CC.INTCOL# FROM SYS.CCOL$ CC, SY

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
S.CDEF$ CD WHERE CC.OBJ# = :B2 AND CD.CON# = CC.CON# AND CD.OBJ# = CC.OBJ# AND C
D.ENABLED IS NOT NULL AND CD.INTCOLS <= :B1 AND CD.TYPE# IN (2,3) UNION ALL SELE
CT /*+ index(i) index(ic) */ I.OBJ#,IC.INTCOL# FROM SYS.IND$ I, SYS.ICOL$ IC WHE
RE I.BO# = :B2 AND I.OBJ# = IC.OBJ# AND I.INTCOLS <= :B1 AND BITAND(PROPERTY,1) 
= 1 AND BITAND(FLAGS,1025) = 0) SELECT CON# FROM UNQIDX WHERE CON# NOT IN (SELEC
T /*+ no_unnest */ CON# FROM UNQIDX WHERE INTCOL# NOT IN (SELECT /*+ no_unnest i
ndex(ic) */ INTCOL# FROM ICOL$ IC WHERE OBJ#=:B3 )) AND ROWNUM <= 1             
2019-09-29/21:23:57                                                             
                                                                                

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
SELECT (SUM(LENGTH)+COUNT(*))*2 FROM USER$ U, OBJ$ O, IND$ I, ICOL$ IC, COL$ C W
HERE U.NAME = :B2 AND O.NAME = :B1 AND U.USER# = O.OWNER# AND O.OBJ# = I.OBJ# AN
D O.OBJ# = IC.OBJ# AND IC.BO# = C.OBJ# AND IC.INTCOL# = C.INTCOL#               
2019-09-29/21:23:57                                                             
                                                                                
SELECT EXTRACTVALUE(VALUE(T), '/select_list_item/pos') + 1 POS, EXTRACTVALUE(VAL
UE(T), '/select_list_item/value') RES, EXTRACTVALUE(VALUE(T), '/select_list_item
/nonnulls') NONNULLS, EXTRACTVALUE(VALUE(T), '/select_list_item/ndv') NDV, EXTRA
CTVALUE(VALUE(T), '/select_list_item/split') SPLIT, EXTRACTVALUE(VALUE(T), '/sel

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
ect_list_item/rsize') RSIZE, EXTRACTVALUE(VALUE(T), '/select_list_item/rowcnt') 
ROWCNT, EXTRACT(VALUE(T), '/select_list_item/hash_val').GETCLOBVAL() HASHVAL FRO
M TABLE(XMLSEQUENCE(EXTRACT(:B1 , '/process_result/select_list_item'))) T       
2019-09-29/21:23:56                                                             
                                                                                
select intcol#, col# , type#, spare1, segcol#, charsetform from partcol$  where 
obj# = :1 order by pos#                                                         
2019-09-29/21:23:56                                                             
                                                                                

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
SELECT /*+ rule */ U.NAME, OT.NAME, NULL, NULL, C.NAME, BITAND(H.SPARE2, 2), BIT
AND(H.SPARE2, 1), H.DISTCNT, H.DENSITY, H.SPARE1, H.SAMPLE_SIZE, H.NULL_CNT, H.T
IMESTAMP#, H.AVGCLN, H.LOWVAL, H.HIVAL, H.MINIMUM, H.MAXIMUM, NULL, NULL, H.CACH
E_CNT, HG.BUCKET, HG.ENDPOINT, HG.EPVALUE, BITAND(H.SPARE2, 4), NULL FROM SYS.US
ER$ U, SYS.OBJ$ OT, SYS.COL$ C, SYS.HIST_HEAD$ H, HISTGRM$ HG WHERE :B4 IS NULL 
AND U.NAME = :B3 AND OT.OWNER# = U.USER# AND OT.NAME = :B2 AND OT.TYPE# = 2 AND 
C.OBJ# = OT.OBJ# AND (:B1 IS NULL OR C.NAME = :B1 ) AND H.OBJ# = OT.OBJ# AND H.I
NTCOL# = C.INTCOL# AND HG.OBJ#(+) = H.OBJ# AND HG.INTCOL#(+) = H.INTCOL# UNION A
LL SELECT U.NAME, OT.NAME, OP.SUBNAME, NULL, C.NAME, BITAND(H.SPARE2, 2), BITAND

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
(H.SPARE2, 1), H.DISTCNT, H.DENSITY, H.SPARE1, H.SAMPLE_SIZE, H.NULL_CNT, H.TIME
STAMP#, H.AVGCLN, H.LOWVAL, H.HIVAL, H.MINIMUM, H.MAXIMUM, NULL, NULL, H.CACHE_C
NT, HG.BUCKET, HG.ENDPOINT, HG.EPVALUE, BITAND(H.SPARE2, 4), NULL FROM SYS.USER$
 U, SYS.OBJ$ OT, SYS.COL$ C, SYS.TABPART                                        
2019-09-29/21:23:56                                                             
                                                                                
SELECT FLAGS FROM ( SELECT T.FLAGS FROM SYS.TABPART$ T WHERE T.OBJ# = :B1 UNION 
ALL SELECT T.FLAGS FROM SYS.TABCOMPART$ T WHERE T.OBJ# = :B1 )                  
2019-09-29/21:23:56                                                             

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
                                                                                
select obj#,type#,ctime,mtime,stime, status, dataobj#, flags, oid$, spare1, spar
e2 from obj$ where owner#=:1 and name=:2 and namespace=:3 and remoteowner is nul
l and linkname is null and subname = :4                                         
2019-09-29/21:23:56                                                             
                                                                                
select obj#, dataobj#, part#, hiboundlen, hiboundval, flags, ts#, file#, block#,
 pctfree$, initrans, maxtrans, analyzetime, samplesize, rowcnt, blevel, leafcnt,
 distkey, lblkkey, dblkkey, clufac, pctthres$, length(bhiboundval), bhiboundval 

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
from indpart$ where bo# = :1 order by part#                                     
2019-09-29/21:23:56                                                             
                                                                                
SELECT /*+ leading(tp) use_nl_with_index(tpo) */ TPO.SUBNAME TPNAME, TPO.OBJ# TP
OBJN FROM SYS.TABPART$ TP, SYS.OBJ$ TPO WHERE TP.BO# = :B2 AND TP.PART# = :B1 AN
D TP.OBJ# = TPO.OBJ# UNION ALL SELECT /*+ leading(tp) use_nl_with_index(tpo) */ 
TPO.SUBNAME TPNAME, TPO.OBJ# TPOBJN FROM SYS.TABCOMPART$ TP, SYS.OBJ$ TPO WHERE 
TP.BO# = :B2 AND TP.PART# = :B1 AND TP.OBJ# = TPO.OBJ#                          
2019-09-29/21:23:56                                                             

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
                                                                                
insert into sys.wri$_optstat_histhead_history  (obj#,intcol#,flags,expression,co
lname,savtime)  values (:1, :2, :3, :4, :5, :6)                                 
2019-09-29/21:23:56                                                             
                                                                                
update indpart$ set dataobj# = :1, part# = :2, flags = :3, ts# = :4, file# = :5,
 block# = :6, pctfree$ = :7, initrans = :8, maxtrans = :9, analyzetime = :10, sa
mplesize = :11, rowcnt = :12, blevel = :13, leafcnt = :14, distkey = :15, lblkke
y = :16, dblkkey = :17, clufac = :18, pctthres$ = :19 where obj# = :20          

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
2019-09-29/21:23:56                                                             
                                                                                
select obj#, dataobj#, part#, hiboundlen, hiboundval, ts#, file#, block#, pctfre
e$, pctused$, initrans, maxtrans, flags, analyzetime, samplesize, rowcnt, blkcnt
, empcnt, avgspc, chncnt, avgrln, length(bhiboundval), bhiboundval from tabpart$
 where bo# = :1 order by part#                                                  
2019-09-29/21:23:56                                                             
                                                                                
SELECT O.SUBNAME PART FROM SYS.USER$ U, SYS.OBJ$ O, SYS.INDPART$ IP, PARTOBJ$ PO

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
, IND$ I, TABPART$ TP WHERE U.NAME = :B2 AND O.NAME = :B1 AND O.TYPE# = 20 AND U
.USER# = O.OWNER# AND IP.OBJ# = O.OBJ# AND IP.BO# = PO.OBJ# AND BITAND(PO.FLAGS,
 1) = 1 AND I.BO# = TP.BO# AND I.OBJ# = IP.BO# AND IP.PART# = TP.PART# AND BITAN
D(TP.FLAGS, 32) = 32 UNION ALL SELECT O.SUBNAME PART FROM SYS.USER$ U, SYS.OBJ$ 
O, SYS.INDCOMPART$ IP, PARTOBJ$ PO, IND$ I, TABCOMPART$ TP WHERE U.NAME = :B2 AN
D O.NAME = :B1 AND O.TYPE# = 20 AND U.USER# = O.OWNER# AND IP.OBJ# = O.OBJ# AND 
IP.BO# = PO.OBJ# AND BITAND(PO.FLAGS, 1) = 1 AND I.BO# = TP.BO# AND I.OBJ# = IP.
BO# AND IP.PART# = TP.PART# AND BITAND(TP.FLAGS, 32) = 32                       
2019-09-29/21:23:56                                                             

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
                                                                                
insert into hist_head$(obj#, intcol#, bucket_cnt, row_cnt, cache_cnt, null_cnt, 
timestamp#, sample_size, minimum, maximum, distcnt,lowval, hival, density, spare
1, spare2, avgcln, col#) values(:1,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:
15,:16,:17,:18)                                                                 
2019-09-29/21:23:56                                                             
                                                                                
update tabpart$ set dataobj# = :1, part# = :2, ts# = :3, file# = :4, block# = :5
, pctfree$ = :6, pctused$ = :7, initrans = :8, maxtrans = :9, flags = :10, analy

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
zetime = :11, samplesize = :12, rowcnt = :13, blkcnt = :14, empcnt = :15, avgspc
 = :16, chncnt = :17, avgrln = :18 where obj# = :19                             
2019-09-29/21:23:56                                                             
                                                                                
SELECT COUNT(UNQ) UNQ, COUNT(PFX) PFX FROM (SELECT /*+ first_rows(1) leading(cc)
 */ CD.TYPE# UNQ, NULL PFX FROM SYS.CCOL$ CC, SYS.CDEF$ CD WHERE CC.OBJ# = :B2 A
ND CC.INTCOL# = :B1 AND CD.CON# = CC.CON# AND CD.OBJ# = CC.OBJ# AND CD.ENABLED I
S NOT NULL AND CD.INTCOLS = 1 AND CD.TYPE# IN (2,3) AND BITAND(CD.DEFER, 2+4) = 
4 AND ROWNUM < 2 UNION ALL SELECT /*+ first_rows(1) leading(i) */ CASE WHEN I.IN

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
TCOLS = 1 AND BITAND(I.PROPERTY,1) = 1 THEN 3 ELSE NULL END UNQ, CASE WHEN IC.PO
S# = 1 THEN 1 ELSE NULL END PFX FROM SYS.IND$ I, SYS.ICOL$ IC WHERE I.BO# = :B2 
AND I.BO# = IC.BO# AND IC.INTCOL# = :B1 AND I.OBJ# = IC.OBJ# AND BITAND(I.FLAGS,
1025) = 0 AND ROWNUM < 2 )                                                      
2019-09-29/21:23:55                                                             
                                                                                
SELECT VALUE FROM V$SESSION_FIX_CONTROL WHERE BUGNO = :B1 AND SESSION_ID = USERE
NV('SID')                                                                       
2019-09-29/21:23:55                                                             

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
                                                                                
insert into sys.wri$_optstat_tab_history(obj#,rowcnt,blkcnt,avgrln, analyzetime,
samplesize,cachedblk,cachehit,logicalread,savtime,flags) values  (:1,:2,:3,:4,:5
,:6,:7,:8,:9,:10,:11)                                                           
2019-09-29/21:23:55                                                             
                                                                                
SELECT /*+ ordered use_nl(o c cu h) index(u i_user1) index(o i_obj2)            
    index(ci_obj#) index(cu i_col_usage$)                index(h i_hh_obj#_intco
l#) */ C.NAME COL_NAME, C.TYPE# COL_TYPE, C.CHARSETFORM COL_CSF, C.DEFAULT$ COL_

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
DEF, C.NULL$ COL_NULL, C.PROPERTY COL_PROP, C.COL# COL_UNUM, C.INTCOL# COL_INUM,
 C.OBJ# COL_OBJ, C.SCALE COL_SCALE, H.BUCKET_CNT H_BCNT, (T.ROWCNT-H.NULL_CNT)/G
REATEST(H.DISTCNT,1) H_PFREQ, C.LENGTH COL_LEN, CU.TIMESTAMP CU_TIME, CU.EQUALIT
Y_PREDS CU_EP, CU.EQUIJOIN_PREDS CU_EJP, CU.RANGE_PREDS CU_RP, CU.LIKE_PREDS CU_
LP, CU.NONEQUIJOIN_PREDS CU_NEJP, CU.NULL_PREDS NP FROM SYS.USER$ U, SYS.OBJ$ O,
 SYS.TAB$ T, SYS.COL$ C, SYS.COL_USAGE$ CU, SYS.HIST_HEAD$ H WHERE :B3 = '0' AND
 U.NAME = :B2 AND O.OWNER# = U.USER# AND O.TYPE# = 2 AND O.NAME = :B1 AND O.OBJ#
 = T.OBJ# AND O.OBJ# = C.OBJ# AND C.OBJ# = CU.OBJ#(+) AND C.INTCOL# = CU.INTCOL#
(+) AND C.OBJ# = H.OBJ#(+) AND C.INTCOL# = H.INTCOL#(+) UNION ALL SELECT /*+ ord

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
ered use_nl(c) */ C.KQFCONAM COL_NAME, C                                        
2019-09-29/21:23:55                                                             
                                                                                
SELECT /*+ ordered use_nl(u io i ito t itu po) */ IO.OBJ# IOBJN,I.TYPE# ITYPE,I.
FLAGS IFLAGS,I.PROPERTY IPROP, I.INTCOLS IINTCOLS, NVL(I.DEGREE,1), I.ANALYZETIM
E, ITU.NAME TOWN,ITO.NAME TAB,I.BO# TOBJN,T.FLAGS TFLAGS,T.PROPERTY TPROP, ITO.T
YPE# TTYPE, CASE WHEN BITAND(T.FLAGS, 16) = 0 THEN NULL ELSE T.ROWCNT END NROWS,
 PO.PARTTYPE PTYPE,PO.PARTCNT PCNT,PO.PARTKEYCOLS PTKCOLS, PO.FLAGS PFLAGS,MOD(P
O.SPARE2,256) SPTYPE FROM SYS.USER$ U,SYS.OBJ$ IO,SYS.IND$ I, SYS.OBJ$ ITO,SYS.U

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
SER$ ITU,SYS.TAB$ T, PARTOBJ$ PO WHERE U.NAME=:B2 AND IO.NAME=:B1 AND IO.OWNER#=
U.USER# AND IO.TYPE#=1 AND IO.OBJ#=I.OBJ# AND ITO.OBJ#=I.BO# AND ITO.OWNER#=ITU.
USER# AND ITO.OBJ#=T.OBJ# AND IO.OBJ#=PO.OBJ#(+) UNION ALL SELECT /*+ ordered us
e_nl(u io i ito t itu) */ IO.OBJ# IOBJN,I.TYPE# ITYPE,I.FLAGS IFLAGS,I.PROPERTY 
IPROP, I.INTCOLS IINTCOLS, NVL(I.DEGREE,1), I.ANALYZETIME, ITU.NAME TOWN,ITO.NAM
E TAB,I.BO# TOBJN,0 TFLAGS,0 TPROP, ITO.TYPE# TTYPE, NULL NROWS, NULL PTYPE,NULL
 PCNT,NULL PTKCOLS, NULL PFLAGS,NULL SPT                                        
2019-09-29/21:23:55                                                             
                                                                                

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
select parttype, partcnt, partkeycols, flags, defts#, defpctfree, defpctused, de
finitrans, defmaxtrans, deftiniexts, defextsize, defminexts, defmaxexts, defextp
ct, deflists, defgroups, deflogging, spare1, mod(spare2, 256) subparttype, mod(t
runc(spare2/256), 256) subpartkeycols, mod(trunc(spare2/65536), 65536) defsubpar
tcnt, mod(trunc(spare2/4294967296), 256) defhscflags, mod(spare3, 256) interval_
dty, rowid, defmaxsize from partobj$ where obj# = :1                            
2019-09-29/21:23:55                                                             
                                                                                
insert into sys.wri$_optstat_histgrm_history (obj#,intcol#,savtime,bucket, endpo

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
int,epvalue,colname)  select hg.obj#,hg.intcol#,:3,hg.bucket,hg.endpoint,hg.epva
lue, :4  from sys.histgrm$ hg  where hg.obj# = :1 and hg.intcol# = :2           
2019-09-29/21:23:55                                                             
                                                                                
update hist_head$ set bucket_cnt=:3, row_cnt=:4, cache_cnt=:5,null_cnt=:6, times
tamp#=:7, sample_size=:8, minimum=:9, maximum=:10,distcnt=:11, lowval=:12, hival
=:13, density=:14, spare1=:15, spare2=:16, avgcln=:17, col#=:18 where obj#=:1 an
d intcol#=:2                                                                    
2019-09-29/21:23:55                                                             

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
                                                                                
SELECT /*+ rule */ '"'||UI.NAME||'"' IND_OWNER, '"'||OI.NAME||'"' IND_NAME, OI.O
BJ# OBJ_NUM, NVL(PO.FLAGS,0) LOCALITY, I.PROPERTY IPROP FROM SYS.USER$ UT, SYS.O
BJ$ OT, SYS.IND$ I, SYS.OBJ$ OI, SYS.USER$ UI, SYS.PARTOBJ$ PO WHERE ((:B3 IS NU
LL) OR (PO.FLAGS IS NULL) OR (PO.FLAGS = 2)) AND UT.NAME = :B2 AND UT.USER# = OT
.OWNER# AND OT.NAME = :B1 AND OT.TYPE# = 2 AND OT.OBJ# = I.BO# AND I.OBJ# = OI.O
BJ# AND OI.OWNER# = UI.USER# AND I.OBJ# = PO.OBJ#(+) UNION ALL SELECT /*+ rule *
/ '"'||UI.NAME||'"' IND_OWNER, '"'||OI.NAME||'"' IND_NAME, OI.OBJ# OBJ_NUM, 0 LO
CALITY, I.PROPERTY IPROP FROM SYS.USER$ UT, SYS.OBJ$ OT, SYS.IND$ I, SYS.TAB$ T,

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
 SYS.OBJ$ OI, SYS.USER$ UI WHERE :B4 IS NOT NULL AND UT.NAME = :B2 AND UT.USER# 
= OT.OWNER# AND OT.NAME = :B1 AND OT.TYPE# = 2 AND OT.OBJ# = T.OBJ# AND T.BOBJ# 
= I.BO# AND I.TYPE# = 3 AND I.OBJ# = OI.OBJ# AND OI.OWNER# = UI.USER#           
2019-09-29/21:23:55                                                             
                                                                                
insert into sys.wri$_optstat_histhead_history (obj#,intcol#,savtime,flags, null_
cnt,minimum,maximum,distcnt,density,lowval,hival,avgcln,sample_distcnt, sample_s
ize,timestamp#,colname)  select h.obj#, h.intcol#, :3, bitand(h.spare2,7) + 8 + 
decode(h.cache_cnt,0,0,64), h.null_cnt, h.minimum, h.maximum, h.distcnt, h.densi

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
ty, h.lowval, h.hival, h.avgcln, h.spare1, h.sample_size, h.timestamp#, :4  from
 sys.hist_head$ h where h.obj# = :1 and h.intcol# = :2                          
2019-09-29/21:23:55                                                             
                                                                                
SELECT /*+ all_rows */ C.NAME ICNAME,IC.POS# ICPOS,IC.SPARE1 ICFLAGS, C.PROPERTY
 ICPROP,C.DEFAULT$ ICEXPR, C.DEFLENGTH ICELEN FROM ICOL$ IC,COL$ C WHERE (:B2 IS
 NULL) AND IC.OBJ#=:B1 AND IC.BO#=C.OBJ# AND IC.INTCOL# = C.INTCOL# UNION ALL SE
LECT '"'||BO.NAME||'"."'||C.NAME||'"' ICNAME, IC.POS# ICPOS,IC.SPARE1 ICFLAGS, C
.PROPERTY ICPROP,C.DEFAULT$ ICEXPR, C.DEFLENGTH ICELEN FROM ICOL$ IC,COL$ C, OBJ

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
$ BO WHERE (:B2 IS NOT NULL) AND IC.OBJ#=:B1 AND IC.BO#=C.OBJ# AND IC.BO#=BO.OBJ
# AND IC.SPARE2 = C.INTCOL# ORDER BY ICPOS                                      
2019-09-29/21:23:55                                                             
                                                                                
insert into sys.wri$_optstat_ind_history(obj#,rowcnt,leafcnt,distkey, lblkkey, d
blkkey,clufac,blevel,analyzetime,samplesize,guessq,cachedblk, cachehit,logicalre
ad,savtime,flags) values  (:1,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:1
6)                                                                              
2019-09-29/21:23:55                                                             

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
                                                                                
select position, type from oparg$ where obj#=:1 and bind#=:2 order by position  
2019-09-29/21:23:55                                                             
                                                                                
SELECT /*+ use_nl(u,o,t) */ NVL(T.DEGREE,1) FROM USER$ U,OBJ$ O,TAB$ T WHERE U.N
AME=:B2 AND O.NAME=:B1 AND O.OBJ#=T.OBJ# AND U.USER#=O.OWNER#                   
2019-09-29/21:23:55                                                             
                                                                                
SELECT DECODE(SUM(BITAND(TRIGFLAG, 67108864)), 67108864, 67108864, 0) + DECODE(S

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
UM(BITAND(TRIGFLAG, 134217728)), 134217728, 134217728, 0) FROM ( SELECT /*+ orde
red index(i) use_nl_with_index(t) */ T.TRIGFLAG FROM SYS.IND$ I, SYS.TAB$ T WHER
E I.OBJ# = :B1 AND I.TYPE# != 3 AND I.BO# = T.OBJ# UNION ALL SELECT /*+ ordered 
index(i)  use_nl_with_index(t) */ T.TRIGFLAG FROM SYS.IND$ I, SYS.TAB$ T WHERE I
.OBJ# = :B1 AND I.TYPE# = 3 AND I.BO# = T.BOBJ# )                               
2019-09-29/21:23:55                                                             
                                                                                
delete /*+ index(m) */ from sys.mon_mods$ m where obj# = :1                     
2019-09-29/21:23:55                                                             

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
                                                                                
SELECT ITU.NAME OWNNAME, ITO.NAME TABNAME FROM SYS.USER$ U, SYS.OBJ$ IO, SYS.IND
$ I, SYS.OBJ$ ITO, SYS.USER$ ITU WHERE U.NAME = :B2 AND IO.NAME = :B1 AND IO.OWN
ER# = U.USER# AND IO.TYPE# = 1 AND IO.OBJ# = I.OBJ# AND ITO.OBJ# = I.BO# AND ITO
.OWNER#= ITU.USER#                                                              
2019-09-29/21:23:55                                                             
                                                                                
delete /*+ index(mm) */ from sys.mon_mods_all$ mm where obj# = :1               
2019-09-29/21:23:55                                                             

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
                                                                                
SELECT /*+ leading(u o) */ O.SUBNAME PART_NAME, O.OBJ# OBJ_NUM FROM SYS.USER$ U,
 SYS.OBJ$ O, SYS.TABPART$ TP, SYS.TABCOMPART$ TCP WHERE :B3 IS NULL AND U.NAME =
 :B2 AND O.OWNER# = U.USER# AND O.NAME = :B1 AND O.NAMESPACE = 1 AND O.REMOTEOWN
ER IS NULL AND O.LINKNAME IS NULL AND O.TYPE# = 19 AND O.OBJ# = TP.OBJ#(+) AND O
.OBJ# = TCP.OBJ#(+) UNION ALL SELECT * FROM ( SELECT /*+ leading(u o) */ O.SUBNA
ME PART_NAME, O.OBJ# OBJ_NUM FROM SYS.USER$ U, SYS.OBJ$ O WHERE U.NAME = :B2 AND
 O.OWNER# = U.USER# AND O.NAME = :B1 AND O.NAMESPACE = 1 AND O.REMOTEOWNER IS NU
LL AND O.LINKNAME IS NULL AND O.SUBNAME = :B3 AND O.TYPE# = 19 UNION ALL SELECT 

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
/*+ leading(u osp tsp) */ OP.SUBNAME PART_NAME, OP.OBJ# OBJ_NUM FROM SYS.USER$ U
, SYS.OBJ$ OSP, SYS.TABSUBPART$ TSP, SYS.OBJ$ OP WHERE U.NAME = :B2 AND OSP.OWNE
R# = U.USER# AND OSP.NAME = :B1 AND OSP.NAMESPACE = 1 AND OSP.REMOTEOWNER IS NUL
L AND OSP.LINKNAME IS NULL AND OSP.SUBNAME = :B3 AND OSP.TYPE# = 34 AND OSP.OBJ#
 = TSP.OBJ# AND OP.OBJ# = TSP.POBJ# ) WH                                        
2019-09-29/21:23:55                                                             
                                                                                
update tab$ set ts#=:2,file#=:3,block#=:4,bobj#=decode(:5,0,null,:5),tab#=decode
(:6,0,null,:6),intcols=:7,kernelcols=:8,clucols=decode(:9,0,null,:9),audit$=:10,

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
flags=:11,pctfree$=:12,pctused$=:13,initrans=:14,maxtrans=:15,rowcnt=:16,blkcnt=
:17,empcnt=:18,avgspc=:19,chncnt=:20,avgrln=:21,analyzetime=:22,samplesize=:23,c
ols=:24,property=:25,degree=decode(:26,1,null,:26),instances=decode(:27,1,null,:
27),dataobj#=:28,avgspc_flb=:29,flbcnt=:30,trigflag=:31,spare1=:32,spare2=decode
(:33,0,null,:33),spare4=:34,spare6=:35 where obj#=:1                            
2019-09-29/21:23:55                                                             
                                                                                
select u.name, o.name, o.namespace, o.type#, decode(bitand(i.property,1024),0,0,
1), o.obj# from ind$ i,obj$ o,user$ u where i.obj#=:1 and o.obj#=i.bo# and o.own

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
er#=u.user#                                                                     
2019-09-29/21:23:55                                                             
                                                                                
SELECT SU.NAME, SO.NAME, A.STATSTYPE#, A.INTCOL# FROM ASSOCIATION$ A, OBJ$ O, US
ER$ U, COL$ C, OBJ$ SO, USER$ SU WHERE O.OWNER#=U.USER# AND A.OBJ#=O.OBJ# AND O.
OBJ#=C.OBJ# AND C.INTCOL#=A.INTCOL# AND A.STATSTYPE#=SO.OBJ# AND SO.OWNER#=SU.US
ER# AND O.TYPE#=2 AND U.NAME=:B3 AND O.NAME=:B2 AND C.NAME=:B1                  
2019-09-29/21:23:55                                                             
                                                                                

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
insert into sys.wri$_optstat_opr (operation, target, start_time,  end_time) valu
es (:1,:2,:3,:4)                                                                
2019-09-29/21:23:55                                                             
                                                                                
SELECT SU.NAME, SO.NAME, A.STATSTYPE#, C.INTCOL# FROM ASSOCIATION$ A, OBJ$ O, US
ER$ U, COL$ C, OBJ$ SO, USER$ SU, COLTYPE$ CT, OBJ$ TY WHERE O.OWNER#=U.USER# AN
D A.OBJ#=TY.OBJ# AND O.OBJ#=C.OBJ# AND C.INTCOL#=CT.INTCOL# AND O.OBJ#=CT.OBJ# A
ND CT.TOID=TY.OID$ AND A.STATSTYPE#=SO.OBJ# AND SO.OWNER#=SU.USER# AND O.TYPE#=2
 AND O.NAME=:B3 AND U.NAME=:B2 AND C.NAME=:B1                                   

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
2019-09-29/21:23:55                                                             
                                                                                
select bind#, functionname, property, returnschema, returntype, impschema, impty
pe  from opbinding$ where obj# = :1                                             
2019-09-29/21:23:55                                                             
                                                                                
delete from ind_stats$ where obj#=:1                                            
2019-09-29/21:23:55                                                             
                                                                                

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
select numbind, nextbindnum, property from operator$ where obj#=:1              
2019-09-29/21:23:55                                                             
                                                                                
SELECT BITAND(T.PROPERTY, 32) FROM SYS.USER$ U, SYS.OBJ$ O, SYS.TAB$ T WHERE U.N
AME = :B2 AND U.USER# = O.OWNER# AND O.NAME = :B1 AND O.TYPE# = 2 AND O.OBJ# = T
.OBJ#                                                                           
2019-09-29/21:23:55                                                             
                                                                                
delete from superobj$ where subobj# = :1                                        

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
2019-09-29/21:23:55                                                             
                                                                                
SELECT /*+ leading(u o) */ O.OBJ# POBJN, NVL(IP.PART#, ICP.PART#) PN, O.SUBNAME 
PNAME, NVL(IP.ANALYZETIME, ICP.ANALYZETIME) LAST_ANALYZED, NVL(IP.FLAGS, ICP.FLA
GS) FLAGS FROM SYS.USER$ U, SYS.OBJ$ O, SYS.INDPART$ IP, SYS.INDCOMPART$ ICP WHE
RE :B3 IS NULL AND U.NAME = :B2 AND O.OWNER# = U.USER# AND O.NAME = :B1 AND O.NA
MESPACE = 4 AND O.REMOTEOWNER IS NULL AND O.LINKNAME IS NULL AND O.TYPE# = 20 AN
D O.OBJ# = IP.OBJ#(+) AND O.OBJ# = ICP.OBJ#(+) UNION ALL SELECT * FROM ( SELECT 
/*+ leading(u o) */ O.OBJ# POBJN, NVL(IP.PART#, ICP.PART#) PN, O.SUBNAME PNAME, 

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
NVL(IP.ANALYZETIME,ICP.ANALYZETIME) LAST_ANALYZED, NVL(IP.FLAGS, ICP.FLAGS) FLAG
S FROM SYS.USER$ U, SYS.OBJ$ O, SYS.INDPART$ IP, SYS.INDCOMPART$ ICP WHERE U.NAM
E = :B2 AND O.OWNER# = U.USER# AND O.NAME = :B1 AND O.NAMESPACE = 4 AND O.REMOTE
OWNER IS NULL AND O.LINKNAME IS NULL AND O.SUBNAME = :B3 AND O.TYPE# = 20 AND O.
OBJ# = IP.OBJ#(+) AND O.OBJ# = ICP.OBJ#(+) UNION ALL SELECT /*+ leading(u osp is
p op) */ OP.OBJ# POBJN, ICP.PART# PN, OP                                        
2019-09-29/21:23:55                                                             
                                                                                
SELECT ROWCNT, BLKCNT, ANALYZETIME FROM SYS.TAB$ WHERE OBJ# = :B1 AND BITAND(FLA

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
GS, 16) != 0                                                                    
2019-09-29/21:23:55                                                             
                                                                                
update ind$ set ts#=:2,file#=:3,block#=:4,intcols=:5,type#=:6,flags=:7,property=
:8,pctfree$=:9,initrans=:10,maxtrans=:11,blevel=:12,leafcnt=:13,distkey=:14,lblk
key=:15,dblkkey=:16,clufac=:17,cols=:18,analyzetime=:19,samplesize=:20,dataobj#=
:21,degree=decode(:22,1,null,:22),instances=decode(:23,1,null,:23),rowcnt=:24,pc
tthres$=:31*256+:25, indmethod#=:26, trunccnt=:27,spare4=:29,spare2=:30,spare6=:
32where obj#=:1                                                                 

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
2019-09-29/21:23:55                                                             
                                                                                
delete from tab_stats$ where obj#=:1                                            
2019-09-29/21:23:55                                                             
                                                                                
SELECT EXTRACTVALUE(VALUE(T), '/select_list_item/pos') + 1 POS, EXTRACTVALUE(VAL
UE(T), '/select_list_item/value') RES, EXTRACTVALUE(VALUE(T), '/select_list_item
/nonnulls') NONNULLS, EXTRACTVALUE(VALUE(T), '/select_list_item/ndv') NDV, EXTRA
CTVALUE(VALUE(T), '/select_list_item/split') SPLIT, EXTRACTVALUE(VALUE(T), '/sel

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
ect_list_item/rsize') RSIZE, EXTRACTVALUE(VALUE(T), '/select_list_item/rowcnt') 
ROWCNT, EXTRACT(VALUE(T), '/select_list_item/hash_val').GETCLOBVAL() HASHVAL FRO
M TABLE(XMLSEQUENCE(EXTRACT(:B1 , '/process_result/select_list_item'))) T       
2019-09-29/21:23:55                                                             
                                                                                
SELECT /*+ first_rows(1) */ '"'||OI.NAME||'"' FROM SYS.USER$ U, SYS.OBJ$ OT, SYS
.IND$ I, SYS.OBJ$ OI WHERE U.NAME = :B2 AND OT.OWNER# = U.USER# AND OT.NAME = :B
1 AND I.BO# = OT.OBJ# AND I.TYPE# = 4 AND I.OBJ# = OI.OBJ#                      
2019-09-29/21:23:54                                                             

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
                                                                                
lock table sys.col_usage$ in exclusive mode nowait                              
2019-09-29/21:23:54                                                             
                                                                                
SELECT /*+ index(t) */ T.PROPERTY FROM SYS.TAB$ T WHERE T.OBJ# = :B1            
2019-09-29/21:23:54                                                             
                                                                                
begin dbms_stats.gather_table_stats('SYS', :bind1, cascade => TRUE, method_opt =
> 'FOR ALL COLUMNS SIZE 1', estimate_percent => DBMS_STATS.AUTO_SAMPLE_SIZE); en

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
d;                                                                              
2019-09-29/21:23:54                                                             
                                                                                
update sys.col_usage$ set   equality_preds    = equality_preds    + decode(bitan
d(:flag,1),0,0,1),   equijoin_preds    = equijoin_preds    + decode(bitand(:flag
,2),0,0,1),   nonequijoin_preds = nonequijoin_preds + decode(bitand(:flag,4),0,0
,1),   range_preds       = range_preds       + decode(bitand(:flag,8),0,0,1),   
like_preds        = like_preds        + decode(bitand(:flag,16),0,0,1),   null_p
reds        = null_preds        + decode(bitand(:flag,32),0,0,1),  timestamp = :

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
time where obj# = :objn and intcol# = :coln                                     
2019-09-29/21:23:54                                                             
                                                                                
SELECT TO_NUMBER(:B1 ) FROM DUAL                                                
2019-09-29/21:23:54                                                             
                                                                                
SELECT /*+ leading(u) use_nl_with_index(o) */ O.OBJ# FROM SYS.USER$ U, SYS.OBJ$ 
O WHERE U.NAME = :B3 AND O.OWNER# = U.USER# AND O.NAME = :B2 AND O.NAMESPACE = 1
 AND O.REMOTEOWNER IS NULL AND O.LINKNAME IS NULL AND (O.SUBNAME IS NULL AND :B1

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
 IS NULL OR O.SUBNAME = :B1 ) AND O.TYPE# IN (2,19,34)                          
2019-09-29/21:23:54                                                             
                                                                                
SELECT /*+ ordered index(u) index(o) index(po) */ MOD(PO.SPARE2, 256), PO.PARTTY
PE FROM SYS.USER$ U, SYS.OBJ$ O, SYS.PARTOBJ$ PO WHERE U.NAME = :B3 AND O.NAME =
 :B2 AND O.NAMESPACE = :B1 AND U.USER# = O.OWNER# AND O.OBJ# = PO.OBJ#          
2019-09-29/21:23:54                                                             
                                                                                
insert into sys.col_usage$ (obj#, intcol#, equality_preds, equijoin_preds, noneq

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
uijoin_preds, range_preds, like_preds, null_preds, timestamp) values (   :objn, 
:coln,   decode(bitand(:flag,1),0,0,1),   decode(bitand(:flag,2),0,0,1),   decod
e(bitand(:flag,4),0,0,1),   decode(bitand(:flag,8),0,0,1),   decode(bitand(:flag
,16),0,0,1),   decode(bitand(:flag,32),0,0,1),   :time)                         
2019-09-29/21:23:54                                                             
                                                                                
update seg$ set type#=:4,blocks=:5,extents=:6,minexts=:7,maxexts=:8,extsize=:9,e
xtpct=:10,user#=:11,iniexts=:12,lists=decode(:13, 65535, NULL, :13),groups=decod
e(:14, 65535, NULL, :14), cachehint=:15, hwmincr=:16, spare1=DECODE(:17,0,NULL,:

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
17),scanhint=:18, bitmapranges=:19 where ts#=:1 and file#=:2 and block#=:3      
2019-09-29/21:23:52                                                             
                                                                                
SELECT snap_id , SQL_ID FROM   (SELECT /*+ ordered use_nl(t2) index(t2) */ t2.sn
ap_id , t1.SQLID_KEWRSIE  SQL_ID FROM X$KEWRSQLIDTAB t1, WRH$_SQLTEXT t2      WH
ERE t2.dbid(+)  = :dbid  AND t2.SQL_ID(+) = t1.SQLID_KEWRSIE) WHERE nvl(snap_id,
 0) < :snap_id                                                                  
2019-09-29/21:23:52                                                             
                                                                                

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
INSERT INTO wrh$_sqltext    (sql_id, dbid, sql_text,     command_type, snap_id, 
ref_count)  SELECT    sqlid_kewrstx, :dbid, sqlfulltext_kewrstx,    cmdtype_kewr
stx, :lah_snap_id, 0 ref_count  FROM x$kewrtsqltext                             
2019-09-29/21:23:52                                                             
                                                                                
UPDATE WRH$_SQLTEXT SET snap_id = :lah_snap_id  WHERE dbid = :dbid    AND (SQL_I
D) IN (SELECT STR1_KEWRATTR FROM X$KEWRATTRSTALE)                               
2019-09-29/21:23:52                                                             
                                                                                

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
update wrm$_wr_control    set snap_interval = :bind1, snapint_num = :bind2, rete
ntion = :bind3,      retention_num = :bind4, most_recent_snap_id = :bind5,      
most_recent_snap_time = :bind6, mrct_snap_time_num = :bind7,      status_flag = 
:bind8, most_recent_purge_time = :bind9,      mrct_purge_time_num = :bind10,    
  most_recent_split_id = :bind11, most_recent_split_time = :bind12,      swrf_ve
rsion = :bind13, registration_status = :bind14,      mrct_baseline_id = :bind15,
 topnsql = :bind16, mrct_bltmpl_id = :bind17    where dbid = :dbid              
2019-09-29/21:23:51                                                             
                                                                                

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
select obj#, dataobj#, part#, hiboundlen, hiboundval, flags, ts#, file#, block#,
 pctfree$, initrans, maxtrans, analyzetime, samplesize, rowcnt, blevel, leafcnt,
 distkey, lblkkey, dblkkey, clufac, pctthres$, length(bhiboundval), bhiboundval 
from indpart$ where bo# = :1 order by part#                                     
2019-09-29/21:23:51                                                             
                                                                                
select intcol#, col# , type#, spare1, segcol#, charsetform from partcol$  where 
obj# = :1 order by pos#                                                         
2019-09-29/21:23:51                                                             

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
                                                                                
select obj#, dataobj#, part#, hiboundlen, hiboundval, ts#, file#, block#, pctfre
e$, pctused$, initrans, maxtrans, flags, analyzetime, samplesize, rowcnt, blkcnt
, empcnt, avgspc, chncnt, avgrln, length(bhiboundval), bhiboundval from tabpart$
 where bo# = :1 order by part#                                                  
2019-09-29/21:23:51                                                             
                                                                                
insert into wrh$_waitclassmetric_history     (snap_id, dbid, instance_number, wa
it_class_id,      begin_time, end_time, intsize, group_id,      average_waiter_c

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
ount, dbtime_in_wait,      time_waited, wait_count,      time_waited_fg, wait_co
unt_fg)  select      :snap_id, :dbid, :instance_number, wait_id,      begtime, e
ndtime, intsize_csec, groupid,      average_waiter_count, dbtime_in_wait,      t
ime_waited, wait_count,      time_waited_fg, wait_count_fg  from x$kewmevmv     
2019-09-29/21:19:45                                                             
                                                                                
select lobtsn, lobrdba, lobobjid from x$lobstat   where lobspcalloc > 0 and lobc
urrtime >= :1   order by lobspcalloc desc                                       
2019-09-29/21:18:50                                                             

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
                                                                                
select f.file#, f.block#, f.ts#, f.length from fet$ f, ts$ t where t.ts#=f.ts# a
nd t.dflextpct!=0 and t.bitmapped=0                                             
2019-09-29/21:18:46                                                             
                                                                                
select o.owner#,o.obj#,decode(o.linkname,null,decode(u.name,null,'SYS',u.name),o
.remoteowner),o.name,o.linkname,o.namespace,o.subname,o.type# from user$ u, obj$
 o where u.user#(+)=o.owner# and o.type#=:1 and not exists (select p_obj# from d
ependency$ where p_obj# = o.obj#)                                               

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
2019-09-29/21:18:45                                                             
                                                                                
select count(*) from sys.job$ where next_date < :1 and (field1 = :2 or (field1 =
 0 and 'Y' = :3)) and ((dbms_logstdby.db_is_logstdby = 0 and job < 1000000000) o
r  (dbms_logstdby.db_is_logstdby = 1 and job >= 1000000000))                    
2019-09-29/21:15:38                                                             
                                                                                
SELECT TASK_CLASS_LIST, COUNT(*) FROM MGMT_COLLECTION_WORKERS WHERE WORKER_STATU
S != :B1 GROUP BY TASK_CLASS_LIST                                               

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
2019-09-29/21:15:01                                                             
                                                                                
SELECT COUNT(1) FROM MGMT_VERSIONS WHERE COMPONENT_NAME = UPPER(:B2 ) AND COMPON
ENT_MODE = :B1                                                                  
2019-09-29/21:15:01                                                             
                                                                                
SELECT VALUE FROM MGMT_CURRENT_METRICS A, MGMT_METRICS B, MGMT_TARGETS C WHERE B
.TARGET_TYPE = :B3 AND A.METRIC_GUID = B.METRIC_GUID AND B.METRIC_COLUMN = :B2 A
ND B.METRIC_NAME = :B1 AND C.TYPE_META_VER = B.TYPE_META_VER AND (B.CATEGORY_PRO

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
P_1 = C.CATEGORY_PROP_1 OR B.CATEGORY_PROP_1 = ' ') AND (B.CATEGORY_PROP_2 = C.C
ATEGORY_PROP_2 OR B.CATEGORY_PROP_2 = ' ') AND (B.CATEGORY_PROP_3 = C.CATEGORY_P
ROP_3 OR B.CATEGORY_PROP_3 = ' ') AND (B.CATEGORY_PROP_4 = C.CATEGORY_PROP_4 OR 
B.CATEGORY_PROP_4 = ' ') AND (B.CATEGORY_PROP_5 = C.CATEGORY_PROP_5 OR B.CATEGOR
Y_PROP_5 = ' ')                                                                 
2019-09-29/21:15:01                                                             
                                                                                
SELECT TASK_CLASS,COUNT(*) PENDING FROM MGMT_COLLECTION_TASKS WHERE NEXT_COLLECT
ION_TIMESTAMP <= SYS_EXTRACT_UTC(SYSTIMESTAMP) AND FREQUENCY_CODE != :B1 GROUP B

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
Y TASK_CLASS                                                                    
2019-09-29/21:15:01                                                             
                                                                                
CALL mgmt_admin_data.eval_repo_performance(:target_guid,:metric_guid,:coll_name,
:metric_values)                                                                 
2019-09-29/21:15:01                                                             
                                                                                
SELECT HOST_URL,VALUE FROM MGMT_OMS_PARAMETERS WHERE NAME = :B1                 
2019-09-29/21:15:01                                                             

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
                                                                                
SELECT NVL(AVG((VALUE*1000.0)/DURATION),0), NVL((((SUM(DURATION)/(60*1000))/60)*
100),0) FROM MGMT_SYSTEM_PERFORMANCE_LOG A, MGMT_PERFORMANCE_NAMES B WHERE :B1 =
 B.DISPLAY_NAME AND A.JOB_NAME = B.JOB_NAME AND A.TIME > (SYSDATE-(1/24)) AND A.
IS_TOTAL='Y' AND A.DURATION > 0                                                 
2019-09-29/21:15:01                                                             
                                                                                
SELECT TASK_CLASS, ROUND(NVL(SUM(THROUGHPUT),0),2), NVL(SUM(TOTAL_VALUE),0), NVL
(SUM(TOTAL_DURATION),0) FROM (SELECT CLIENT_DATA WORKER_ID, ACTION TASK_CLASS, N

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
VL(AVG(VALUE*1000/ DECODE(DURATION, 0,1000,DURATION)),0) THROUGHPUT, SUM(VALUE) 
TOTAL_VALUE, SUM(DURATION)/1000 TOTAL_DURATION, COUNT(*) RECORDS FROM MGMT_SYSTE
M_PERFORMANCE_LOG LOG WHERE LOG.JOB_NAME = :B3 AND LOG.MODULE = :B2 AND LOG.TIME
 > (SYSDATE-:B1 /1440) AND LOG.IS_TOTAL = 'Y' GROUP BY CLIENT_DATA,ACTION ) GROU
P BY TASK_CLASS                                                                 
2019-09-29/21:15:01                                                             
                                                                                
SELECT WHAT, NEXT_DATE NEXT_TIME, DECODE(NVL(BROKEN,'Y'),'Y','DOWN','UP') BROKEN
 FROM USER_JOBS WHERE WHAT LIKE '%EXECUTE_EM_DBMS_JOB%'                         

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
2019-09-29/21:15:01                                                             
                                                                                
SELECT HOST_URL, MODULE, NVL(SUM(VALUE),0) HR_THROUGHPUT, NVL(SUM(DURATION/1000.
0),0) RUNTIME, NVL((SUM(VALUE)*1000.0),0)/ DECODE(NVL(SUM(DURATION),0),0,1,SUM(D
URATION)) SEC_THROUGHPUT FROM MGMT_SYSTEM_PERFORMANCE_LOG WHERE JOB_NAME = :B3 A
ND MODULE LIKE :B2 ||'%' AND NAME = :B1 AND IS_TOTAL = 'Y' AND DURATION > 0 AND 
TIME > (SYSDATE - (1/24)) GROUP BY HOST_URL, MODULE                             
2019-09-29/21:15:01                                                             
                                                                                

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
SELECT NVL((((SUM(DURATION)/(60*1000))/60)*100),0), NVL(AVG((VALUE*1000.0)/DURAT
ION),0) FROM MGMT_SYSTEM_PERFORMANCE_LOG WHERE IS_TOTAL='Y' AND DURATION > 0 AND
 TIME > (SYSDATE-(1/24)) AND JOB_NAME = 'EMD_NOTIFICATION.NotificationDelivery S
ubsystem'                                                                       
2019-09-29/21:15:00                                                             
                                                                                
SELECT NVL(SUM(VALUE),0),COUNT(*) FROM MGMT_SYSTEM_PERFORMANCE_LOG WHERE NAME = 
:B1 || '_TOTAL_DELIVERY_TIME' AND TIME > (SYSDATE-(1/(24*6)))                   
2019-09-29/21:15:00                                                             

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
                                                                                
SELECT NVL(VALUE,'None') FROM MGMT_OMS_PARAMETERS WHERE NAME='loaderDirectory' A
ND HOST_URL = :B1                                                               
2019-09-29/21:15:00                                                             
                                                                                
SELECT CASE WHEN EXISTS (SELECT * FROM MGMT_FAILOVER_TABLE WHERE HOST_URL = :B3 
AND SYSDATE - LAST_TIME_STAMP < HEARTBEAT_INTERVAL * 4) THEN :B2 ELSE :B1 END FR
OM DUAL WHERE EXISTS (SELECT * FROM MGMT_OMS_PARAMETERS WHERE HOST_URL = :B3 )  
2019-09-29/21:15:00                                                             

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
                                                                                
SELECT DECODE(COUNT(CLIENT_INFO), 0, 'down','up') FROM GV$SESSION WHERE CLIENT_I
NFO = :B1                                                                       
2019-09-29/21:15:00                                                             
                                                                                
SELECT NVL(TO_NUMBER(SUM(VALUE)),0) FROM MGMT_SYSTEM_PERFORMANCE_LOG WHERE JOB_N
AME = 'EMD_NOTIFICATION.NotificationDelivery Subsystem' AND TIME > (SYSDATE-(1/(
24*6))) AND HOST_URL = :B1                                                      
2019-09-29/21:15:00                                                             

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
                                                                                
UPDATE MGMT_CURRENT_METRICS SET COLLECTION_TIMESTAMP = :B1 , VALUE = :B6 , STRIN
G_VALUE = :B5 WHERE TARGET_GUID = :B4 AND METRIC_GUID = :B3 AND KEY_VALUE = :B2 
AND COLLECTION_TIMESTAMP < :B1                                                  
2019-09-29/21:15:00                                                             
                                                                                
SELECT NVL((((SUM(DURATION)/(60*1000))/60)*100),0), NVL(AVG((VALUE*1000.0)/DURAT
ION),0) FROM MGMT_SYSTEM_PERFORMANCE_LOG WHERE IS_TOTAL='Y' AND DURATION > 0 AND
 TIME > (SYSDATE-(1/24)) AND JOB_NAME = 'JOB_DISPATCHER' AND HOST_URL = :B1     

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
2019-09-29/21:15:00                                                             
                                                                                
SELECT DISTINCT HOST_URL FROM MGMT_OMS_PARAMETERS WHERE NAME='TIMESTAMP'        
2019-09-29/21:15:00                                                             
                                                                                
SELECT NVL(AVG(VALUE),0) FROM MGMT_SYSTEM_PERFORMANCE_LOG WHERE JOB_NAME=:B2 AND
 NAME=:B1 AND TIME>(SYSDATE-(1/24))                                             
2019-09-29/21:15:00                                                             
                                                                                

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
SELECT COUNT(MSG_ID) FROM AQ$MGMT_NOTIFY_QTABLE WHERE MSG_STATE = 'READY'       
2019-09-29/21:15:00                                                             
                                                                                
SELECT NVL(AVG(VALUE) ,0) FROM MGMT_SYSTEM_PERFORMANCE_LOG WHERE JOB_NAME='Notif
ication Delivery' AND NAME='Delivery Time' AND TIME>(SYSDATE-(1/24))            
2019-09-29/21:15:00                                                             
                                                                                
SELECT COUNT(BROKEN) FROM USER_JOBS WHERE WHAT = 'EMD_NOTIFICATION.CHECK_FOR_SEV
ERITIES'                                                                        

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
2019-09-29/21:15:00                                                             
                                                                                
SELECT GREATEST(0,NVL(TRUNC(TO_NUMBER(VALUE)/60,2),0)) FROM MGMT_OMS_PARAMETERS 
WHERE NAME='loaderOldestFile' AND HOST_URL = :B1                                
2019-09-29/21:15:00                                                             
                                                                                
SELECT COLLECTION_TIMESTAMP, STRING_VALUE FROM ( SELECT COLLECTION_TIMESTAMP, ST
RING_VALUE FROM MGMT_STRING_METRIC_HISTORY WHERE TARGET_GUID = :B3 AND METRIC_GU
ID = :B2 AND KEY_VALUE = :B1 ORDER BY COLLECTION_TIMESTAMP DESC) WHERE ROWNUM = 

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
1                                                                               
2019-09-29/21:15:00                                                             
                                                                                
SELECT COUNT(START_TIME) FROM MGMT_JOB_EXECUTION WHERE STEP_TYPE IN ( :B4 , :B3 
, :B2 ) AND STEP_STATUS = :B1 AND START_TIME <= SYS_EXTRACT_UTC(SYSTIMESTAMP)   
2019-09-29/21:15:00                                                             
                                                                                
SELECT NVL(SUM(VALUE),0) FROM MGMT_SYSTEM_PERFORMANCE_LOG WHERE NAME = :B1 || 'S
_QUEUED' AND TIME > (SYSDATE-(1/(24*6)))                                        

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
2019-09-29/21:15:00                                                             
                                                                                
SELECT NVL(TO_NUMBER(VALUE),0) FROM MGMT_OMS_PARAMETERS WHERE NAME='loaderFileCo
unt' AND HOST_URL = :B1                                                         
2019-09-29/21:15:00                                                             
                                                                                
SELECT NVL(CRIT_COUNTER,0), NVL(WARN_COUNTER,0), NVL(INFO_COUNTER,0) FROM MGMT_P
OLICY_ASSOC_EVAL_DETAILS WHERE TARGET_GUID = :B4 AND POLICY_GUID = :B3 AND RESUL
T_KEY_VALUE = :B2 AND COLL_NAME = :B1                                           

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
2019-09-29/21:15:00                                                             
                                                                                
SELECT TO_CHAR(COUNT(D.TARGET_NAME)) FROM MGMT_DUPLICATE_TARGETS D, MGMT_TARGETS
 T, MGMT_TARGETS CA WHERE D.TARGET_GUID = T.TARGET_GUID (+) AND D.DUPLICATE_EMD_
URL = CA.EMD_URL AND D.RESOLVED_TIME IS NULL AND CA.TARGET_TYPE = :B1           
2019-09-29/21:15:00                                                             
                                                                                
INSERT INTO MGMT_METRICS_RAW (TARGET_GUID, COLLECTION_TIMESTAMP, METRIC_GUID, KE
Y_VALUE, VALUE) VALUES (:B5 , :B4 , :B3 , :B2 , :B1 )                           

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
2019-09-29/21:14:59                                                             
                                                                                
UPDATE MGMT_TARGETS SET LAST_LOAD_TIME=:B2 WHERE TARGET_GUID = :B1 AND (LAST_LOA
D_TIME < :B2 OR LAST_LOAD_TIME IS NULL)                                         
2019-09-29/21:14:59                                                             
                                                                                
SELECT TARGET_GUID FROM MGMT_TARGETS WHERE TARGET_NAME = :B2 AND TARGET_TYPE = :
B1                                                                              
2019-09-29/21:14:59                                                             

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
                                                                                
SELECT STORE_METRIC FROM MGMT_COLLECTIONS WHERE OBJECT_GUID = :B1 AND OBJECT_TYP
E = :B3 AND COLL_NAME = :B2                                                     
2019-09-29/21:14:59                                                             
                                                                                
SELECT TARGETS.TARGET_NAME, TARGETS.TARGET_TYPE, TARGETS.TIMEZONE_REGION, TARGET
S.EMD_URL, NVL(CAST(SYSTIMESTAMP AT TIME ZONE TARGETS.TIMEZONE_REGION AS DATE), 
:B2 ) FROM MGMT_TARGETS TARGETS WHERE TARGETS.TARGET_GUID = :B1                 
2019-09-29/21:14:59                                                             

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
                                                                                
SELECT RESULT_KEY_VALUE FROM MGMT_POLICY_ASSOC_EVAL_DETAILS WHERE TARGET_GUID = 
:B3 AND POLICY_GUID = :B2 AND COLL_NAME = :B1 AND RESULT_KEY_VALUE NOT IN (SELEC
T COLUMN_VALUE FROM TABLE(CAST(:B4 AS MGMT_MEDIUM_STRING_TABLE)))               
2019-09-29/21:14:59                                                             
                                                                                
UPDATE MGMT_COLLECTION_TASKS SET TASK_TYPE=NVL(:B14 ,TASK_TYPE), PRIORITY=NVL(:B
13 ,PRIORITY), NEXT_COLLECTION_TIMESTAMP=NVL(:B12 , NEXT_COLLECTION_TIMESTAMP), 
LAST_COLLECTION_TIMESTAMP=NVL(:B11 , LAST_COLLECTION_TIMESTAMP), ERROR_MESSAGE=:

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
B10 , FAILURES=NVL(:B9 ,FAILURES), TOTAL_RUNS=NVL(:B8 ,TOTAL_RUNS), MIN_WAIT_TIM
E=NVL(:B7 ,MIN_WAIT_TIME), MAX_WAIT_TIME=NVL(:B6 ,MAX_WAIT_TIME), AVG_WAIT_TIME=
NVL(:B5 ,AVG_WAIT_TIME), MIN_RUN_TIME=NVL(:B4 ,MIN_RUN_TIME), MAX_RUN_TIME=NVL(:
B3 ,MAX_RUN_TIME), AVG_RUN_TIME=NVL(:B2 ,AVG_RUN_TIME) WHERE TASK_ID = :B1 RETUR
NING FREQUENCY_CODE,PRIORITY,TASK_TYPE, NEXT_COLLECTION_TIMESTAMP,TASK_CLASS INT
O :O0 ,:O1 ,:O2 ,:O3 ,:O4                                                       
2019-09-29/21:14:59                                                             
                                                                                
SELECT PARAMETER_VALUE FROM MGMT_PARAMETERS WHERE PARAMETER_NAME = :B1          

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
2019-09-29/21:14:59                                                             
                                                                                
SELECT VIOLATION_LEVEL,VIOLATION_GUID, EXEMPT_CODE,EXEMPT_UNTIL FROM MGMT_CURREN
T_VIOLATION WHERE TARGET_GUID = :B3 AND POLICY_GUID = :B2 AND KEY_VALUE = :B1   
2019-09-29/21:14:59                                                             
                                                                                
SELECT MAX(IMPORTANCE) FROM MGMT_POLICY_ASSOC_CFG WHERE IS_EXCEPTION = :B3 AND O
BJECT_GUID = :B2 AND POLICY_GUID = :B1                                          
2019-09-29/21:14:59                                                             

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
                                                                                
UPDATE MGMT_POLICY_ASSOC_EVAL_DETAILS SET CRIT_COUNTER = NVL(:B9 ,CRIT_COUNTER),
 WARN_COUNTER = NVL(:B8 ,WARN_COUNTER), INFO_COUNTER = NVL(:B7 ,INFO_COUNTER), L
AST_ERROR_MESSAGE = :B6 , LAST_EVALUATION_DATE = :B5 WHERE TARGET_GUID = :B4 AND
 POLICY_GUID = :B3 AND COLL_NAME = :B2 AND RESULT_KEY_VALUE = :B1               
2019-09-29/21:14:59                                                             
                                                                                
SELECT DISTINCT METRIC_GUID FROM MGMT_METRICS WHERE TARGET_TYPE = :B3 AND METRIC
_NAME = :B2 AND METRIC_COLUMN = :B1                                             

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
2019-09-29/21:14:59                                                             
                                                                                
SELECT NVL(MAX(VIOLATION_LEVEL),:B4 ), COUNT(*) FROM MGMT_CURRENT_VIOLATION WHER
E EXEMPT_CODE = :B3 AND TARGET_GUID = :B2 AND POLICY_GUID = :B1                 
2019-09-29/21:14:59                                                             
                                                                                
UPDATE MGMT_CURRENT_METRICS SET COLLECTION_TIMESTAMP = :B1 , VALUE = :B6 , STRIN
G_VALUE = :B5 WHERE TARGET_GUID = :B4 AND METRIC_GUID = :B3 AND KEY_VALUE = :B2 
AND COLLECTION_TIMESTAMP < :B1                                                  

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
2019-09-29/21:14:59                                                             
                                                                                
SELECT MGMT_GLOBAL.SYSDATE_TZRGN(TIMEZONE_REGION), TARGET_NAME FROM MGMT_TARGETS
 WHERE TARGET_GUID = :B1                                                        
2019-09-29/21:14:59                                                             
                                                                                
SELECT TASK_TGT.TARGET_GUID TARGET_GUID, LEAD(TASK_TGT.TARGET_GUID,1) OVER (ORDE
R BY TASK_TGT.TARGET_GUID, POLICY.POLICY_GUID, CFG.EVAL_ORDER) NEXT_TARGET_GUID,
 POLICY.POLICY_GUID POLICY_GUID, LEAD(POLICY.POLICY_GUID,1) OVER (ORDER BY TASK_

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
TGT.TARGET_GUID, POLICY.POLICY_GUID, CFG.EVAL_ORDER) NEXT_POLICY_GUID, POLICY.PO
LICY_NAME, POLICY.POLICY_TYPE, DECODE(POLICY.POLICY_TYPE, :B3 , NVL(CFG.MESSAGE,
 POLICY.MESSAGE), :B9 , CFG.MESSAGE, NULL) MESSAGE, DECODE(POLICY.POLICY_TYPE, :
B3 , NVL(CFG.MESSAGE_NLSID, POLICY.MESSAGE_NLSID), :B9 , CFG.MESSAGE_NLSID, NULL
) MESSAGE_NLSID, DECODE(POLICY.POLICY_TYPE, :B3 , NVL(CFG.CLEAR_MESSAGE, POLICY.
CLEAR_MESSAGE), :B9 , CFG.CLEAR_MESSAGE, NULL) CLEAR_MESSAGE, DECODE(POLICY.POLI
CY_TYPE, :B3 , NVL(CFG.CLEAR_MESSAGE_NLSID, POLICY.CLEAR_MESSAGE_NLSID), :B9 , C
FG.CLEAR_MESSAGE_NLSID, NULL) CLEAR_MESSAGE_NLSID, POLICY.REPO_TIMING_ENABLED, T
ASK_TGT.COLL_NAME , POLICY.VIOLATION_LEVEL, DECODE(POLICY.POLICY_TYPE, :B3 , :B1

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
0 ,0) VIOLATION_TYPE, POLICY.CONDITION_T                                        
2019-09-29/21:14:59                                                             
                                                                                
select owner#, status from obj$ o where obj# = :1                               
2019-09-29/21:14:59                                                             
                                                                                
UPDATE MGMT_POLICY_ASSOC_EVAL_SUMM SET LAST_EVALUATION_DATE = NVL(:B12 , SYSDATE
), ROWS_EVALUATED = NVL(:B11 , 0), TOTAL_VIOLATIONS_LOGGED = NVL(:B10 , TOTAL_VI
OLATIONS_LOGGED), NON_EXEMPT_VIOLATIONS_LOGGED = NVL(:B9 , :B8 ), MAX_VIOLATION_

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
LEVEL = NVL(:B7 , :B6 ), COMPLIANCE_SCORE = NVL(:B5 , :B4 ) WHERE TARGET_GUID = 
:B3 AND POLICY_GUID = :B2 AND COLL_NAME = :B1                                   
2019-09-29/21:14:59                                                             
                                                                                
insert into "SYSMAN"."MGMT_TASK_QTABLE"  (q_name, msgid, corrid, priority, state
, delay, expiration,   time_manager_info, local_order_no, chain_no, enq_time, st
ep_no, enq_uid,   enq_tid, retry_count, exception_qschema, exception_queue, reci
pient_key,   dequeue_msgid, user_data, sender_name, sender_address, sender_proto
col,   user_prop, cscn, dscn)   values (:1, :2, :3, :4, :5, :6, :7, :8, :9, :10,

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
 :11, :12, :13, :14, 0, :15,         :16, :17, :18, :19, :20, :21, :22, :23, :24
, :25)                                                                          
2019-09-29/21:14:59                                                             
                                                                                
select owner#,name,namespace,remoteowner,linkname,p_timestamp,p_obj#, nvl(proper
ty,0),subname,type#,d_attrs from dependency$ d, obj$ o where d_obj#=:1 and p_obj
#=obj#(+) order by order#                                                       
2019-09-29/21:14:58                                                             
                                                                                

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
INSERT INTO MGMT_SYSTEM_PERFORMANCE_LOG (JOB_NAME, TIME, DURATION, MODULE, ACTIO
N, IS_TOTAL, NAME, VALUE, CLIENT_DATA, HOST_URL) VALUES (:B9 , SYSDATE, :B8 , SU
BSTR(:B7 , 1, 512), SUBSTR(:B6 ,1,32), :B5 , SUBSTR(:B4 ,1,128), SUBSTR(:B3 ,1,1
28), SUBSTR(:B2 ,1,128), SUBSTR(:B1 ,1,256))                                    
2019-09-29/21:14:58                                                             
                                                                                
SELECT /* OPT_DYN_SAMP */ /*+ ALL_ROWS IGNORE_WHERE_CLAUSE NO_PARALLEL(SAMPLESUB
) opt_param('parallel_execution_enabled', 'false') NO_PARALLEL_INDEX(SAMPLESUB) 
NO_SQL_TUNE */ NVL(SUM(C1),0), NVL(SUM(C2),0), COUNT(DISTINCT C3), NVL(SUM(CASE 

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
WHEN C3 IS NULL THEN 1 ELSE 0 END),0) FROM (SELECT /*+ IGNORE_WHERE_CLAUSE NO_PA
RALLEL("QT") FULL("QT") NO_PARALLEL_INDEX("QT") */ 1 AS C1, CASE WHEN "QT"."Q_NA
ME"=:B1 AND "QT"."STATE"=:B2 THEN 1 ELSE 0 END AS C2, "QT"."Q_NAME" AS C3 FROM S
YSMAN."MGMT_TASK_QTABLE" "QT") SAMPLESUB                                        
2019-09-29/21:14:58                                                             
                                                                                
SELECT /* OPT_DYN_SAMP */ /*+ ALL_ROWS opt_param('parallel_execution_enabled', '
false') NO_PARALLEL(SAMPLESUB) NO_PARALLEL_INDEX(SAMPLESUB) NO_SQL_TUNE */ NVL(S
UM(C1),0), NVL(SUM(C2),0), NVL(SUM(C3),0) FROM (SELECT /*+ NO_PARALLEL("QT") IND

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
EX("QT" AQ$_MGMT_TASK_QTABLE_I) NO_PARALLEL_INDEX("QT") */ 1 AS C1, 1 AS C2, 1 A
S C3  FROM SYSMAN."MGMT_TASK_QTABLE" "QT" WHERE "QT"."Q_NAME"=:B1 AND "QT"."STAT
E"=:B2 AND ROWNUM <= 2500) SAMPLESUB                                            
2019-09-29/21:14:58                                                             
                                                                                
SELECT NVL(ABS(PARAMETER_VALUE),60) FROM MGMT_PARAMETERS WHERE PARAMETER_NAME = 
:B1                                                                             
2019-09-29/21:14:58                                                             
                                                                                

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
select order#,columns,types from access$ where d_obj#=:1                        
2019-09-29/21:14:58                                                             
                                                                                
select q.eventid, q.oid, t.schema, t.name, q.table_objno,         q.usage, t.uda
ta_type,  q.enable_flag,         q.max_retries, q.retry_delay, q.properties, q.r
et_time,         t.flags, t.sort_cols, q.memory_threshold, a.owner_instance,    
     q.service_name, q.network_name, t.timezone  from system.aq$_queues q, syste
m.aq$_queue_tables t,       sys.aq$_queue_table_affinities a  where q.table_objn
o = t.objno and q.table_objno = a.table_objno  and t.schema= :1 and q.name= :2  

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
2019-09-29/21:14:58                                                             
                                                                                
select /*+ index(idl_ub2$ i_idl_ub21) +*/ piece#,length,piece from idl_ub2$ wher
e obj#=:1 and part=:2 and version=:3 order by piece#                            
2019-09-29/21:14:58                                                             
                                                                                
CALL MGMT_ADMIN_DATA.EVALUATE_MGMT_METRICS(:target_guid,:metric_guid,:metric_val
ues)                                                                            
2019-09-29/21:14:58                                                             

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
                                                                                
SELECT TARGET_GUID FROM MGMT_COLLECTION_METRIC_TASKS WHERE TASK_ID = :B1 ORDER B
Y TARGET_GUID                                                                   
2019-09-29/21:14:58                                                             
                                                                                
select ct.toid, ct.version#  from sys.col$ c, sys.coltype$ ct, sys.obj$ o  where
 c.intcol# = ct.intcol#  and ct.toid = o.oid$  and o.type# <> 10  and c.obj# = c
t.obj#  and c.name = 'USER_DATA'  and c.obj# = :1                               
2019-09-29/21:14:58                                                             

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
                                                                                
select ts#,file#,block#,intcols,type#,flags,property,pctfree$,initrans,maxtrans,
blevel,leafcnt,distkey,lblkkey,dblkkey,clufac,cols,analyzetime,samplesize,dataob
j#,nvl(degree,1),nvl(instances,1),rowcnt,mod(pctthres$,256),indmethod#,trunccnt,
spare4, spare1 from ind$ where obj#=:1                                          
2019-09-29/21:14:58                                                             
                                                                                
SELECT DISTINCT HOST_URL FROM MGMT_OMS_PARAMETERS                               
2019-09-29/21:14:58                                                             

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
                                                                                
SELECT 1 COL1, A.KEY_COLUMN_VALUE,A.METRIC_COLUMN,A.METRIC_VALUE FROM TABLE(CAST
(:B1 AS MGMT_METRIC_RESULTS)) A UNION SELECT 2,NULL,NULL,NULL FROM DUAL         
2019-09-29/21:14:58                                                             
                                                                                
delete /*+ CACHE_CB("MGMT_TASK_QTABLE") */ from "SYSMAN"."MGMT_TASK_QTABLE" wher
e rowid = :1                                                                    
2019-09-29/21:14:58                                                             
                                                                                

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
SELECT COUNT(CLIENT_INFO) FROM GV$SESSION WHERE USERNAME=:B2 AND CLIENT_INFO = :
B1 GROUP BY CLIENT_INFO                                                         
2019-09-29/21:14:58                                                             
                                                                                
SELECT DECODE(PARAMETER_VALUE, :B3 , 3, :B2 , 2, :B1 , 1, 0) FROM MGMT_PARAMETER
S WHERE PARAMETER_NAME = 'system_error_log_level'                               
2019-09-29/21:14:58                                                             
                                                                                
SELECT TARGET_GUID, METRIC_GUID, COLL_NAME FROM MGMT_COLLECTION_METRIC_TASKS WHE

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
RE TASK_ID = :B1 AND ROWNUM = 1                                                 
2019-09-29/21:14:58                                                             
                                                                                
SELECT OWNER FROM DBA_PROCEDURES WHERE OBJECT_NAME = 'MGMT_USER' AND PROCEDURE_N
AME = 'DROP_USER'                                                               
2019-09-29/21:14:58                                                             
                                                                                
select /*+ index(idl_ub1$ i_idl_ub11) +*/ piece#,length,piece from idl_ub1$ wher
e obj#=:1 and part=:2 and version=:3 order by piece#                            

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
2019-09-29/21:14:58                                                             
                                                                                
SELECT /*+ INDEX(tasks mgmt_collection_tasks_pk) */ * FROM MGMT_COLLECTION_TASKS
 TASKS WHERE TASK_ID = :B1 FOR UPDATE                                           
2019-09-29/21:14:58                                                             
                                                                                
select o.obj# from obj$ o, user$ u where  u.user# = :1 and u.user# = o.owner# an
d o.name = :2                                                                   
2019-09-29/21:14:58                                                             

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
                                                                                
select   /*+ first_rows(1) no_expand */ tab.msgid   from "SYSMAN"."AQ$_MGMT_TASK
_QTABLE_F" tab  where q_name = :1 and (state = :2  ) and queue_id = :3 and ( tab
.user_data.scheduled_time <=   CAST(SYS_EXTRACT_UTC(SYSTIMESTAMP) AS DATE) AND (
tab.user_data.message_code =  0 OR                           tab.user_data.messa
ge_code = 1))                                                                   
2019-09-29/21:14:58                                                             
                                                                                
select  tab.rowid, tab.msgid, tab.corrid, tab.priority, tab.delay,   tab.expirat

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
ion, tab.retry_count, tab.exception_qschema,   tab.exception_queue, tab.chain_no
, tab.local_order_no, tab.enq_time,   tab.time_manager_info, tab.state, tab.enq_
tid, tab.step_no,   tab.sender_name, tab.sender_address, tab.sender_protocol,   
tab.dequeue_msgid, tab.user_prop, tab.user_data  from "SYSMAN"."MGMT_TASK_QTABLE
" tab where tab.msgid = :1 and tab.state != 2 for update skip locked            
2019-09-29/21:14:58                                                             
                                                                                
select /*+ index(idl_char$ i_idl_char1) +*/ piece#,length,piece from idl_char$ w
here obj#=:1 and part=:2 and version=:3 order by piece#                         

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
2019-09-29/21:14:58                                                             
                                                                                
SELECT METRIC_GUID, SOURCE_TYPE,METRIC_TYPE , METRIC_NAME, SOURCE, NUM_KEYS, KEY
_ORDER, METRIC_COLUMN, DECODE(KEY_ORDER,1,NULL,',') COMMA, NVL(DECODE(METRIC_LAB
EL,' ',NULL,METRIC_LABEL), METRIC_NAME) METRIC_LABEL, NVL(DECODE(COLUMN_LABEL,' 
',NULL,COLUMN_LABEL), METRIC_COLUMN) COLUMN_LABEL, METRIC_LABEL_NLSID, COLUMN_LA
BEL_NLSID, REPO_TIMING_ENABLED, KEYS_FROM_MULT_COLLS FROM MGMT_METRICS WHERE MET
RIC_NAME IN (SELECT METRIC_NAME FROM MGMT_METRICS WHERE METRIC_GUID = :B8 AND TA
RGET_TYPE = :B7 AND TYPE_META_VER = :B6 ) AND TARGET_TYPE = :B7 AND TYPE_META_VE

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
R = :B6 AND (CATEGORY_PROP_1 = ' ' OR CATEGORY_PROP_1 = :B5 ) AND (CATEGORY_PROP
_2 = ' ' OR CATEGORY_PROP_2 = :B4 ) AND (CATEGORY_PROP_3 = ' ' OR CATEGORY_PROP_
3 = :B3 ) AND (CATEGORY_PROP_4 = ' ' OR CATEGORY_PROP_4 = :B2 ) AND (CATEGORY_PR
OP_5 = ' ' OR CATEGORY_PROP_5 = :B1 ) ORDER BY DECODE(METRIC_COLUMN,' ',1,2), DE
CODE(KEY_ORDER,0,1,0) , KEY_ORDER,METRIC_COLUMN                                 
2019-09-29/21:14:58                                                             
                                                                                
SELECT TRIM(B.METRIC_NAME) FROM MGMT_TARGETS A, MGMT_METRICS B WHERE B.METRIC_GU
ID = :B2 AND A.TARGET_TYPE = B.TARGET_TYPE AND A.TYPE_META_VER = B.TYPE_META_VER

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
 AND (B.CATEGORY_PROP_1 = A.CATEGORY_PROP_1 OR B.CATEGORY_PROP_1 = ' ') AND (B.C
ATEGORY_PROP_2 = A.CATEGORY_PROP_2 OR B.CATEGORY_PROP_2 = ' ') AND (B.CATEGORY_P
ROP_3 = A.CATEGORY_PROP_3 OR B.CATEGORY_PROP_3 = ' ') AND (B.CATEGORY_PROP_4 = A
.CATEGORY_PROP_4 OR B.CATEGORY_PROP_4 = ' ') AND (B.CATEGORY_PROP_5 = A.CATEGORY
_PROP_5 OR B.CATEGORY_PROP_5 = ' ') AND A.TARGET_GUID=:B1                       
2019-09-29/21:14:58                                                             
                                                                                
select /*+ index(idl_sb4$ i_idl_sb41) +*/ piece#,length,piece from idl_sb4$ wher
e obj#=:1 and part=:2 and version=:3 order by piece#                            

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
2019-09-29/21:14:58                                                             
                                                                                
SELECT TARGET_TYPE, TYPE_META_VER, NVL(CATEGORY_PROP_1,' '), NVL(CATEGORY_PROP_2
,' '), NVL(CATEGORY_PROP_3,' '), NVL(CATEGORY_PROP_4,' '), NVL(CATEGORY_PROP_5,'
 ') FROM MGMT_TARGETS WHERE TARGET_GUID = :B1                                   
2019-09-29/21:14:58                                                             
                                                                                
select host,userid,password,flag,authusr,authpwd, passwordx, authpwdx from link$
 where owner#=:1 and name=:2                                                    

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
2019-09-29/21:14:37                                                             
                                                                                
SELECT EMD_URL, EVENT_TYPE, OCCUR_TIME FROM MGMT_JOB_EMD_STATUS_QUEUE WHERE OCCU
R_TIME < :B1 ORDER BY OCCUR_TIME, EMD_URL, EVENT_TYPE                           
2019-09-29/21:13:59                                                             
                                                                                
SELECT PARAMETER_VALUE FROM MGMT_PARAMETERS WHERE PARAMETER_NAME = :B1          
2019-09-29/21:13:59                                                             
                                                                                

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
SELECT COUNT(FAILOVER_ID) FROM MGMT_FAILOVER_TABLE WHERE SYSDATE-LAST_TIME_STAMP
 < :B1 /(24*60*60)                                                              
2019-09-29/21:13:59                                                             
                                                                                
INSERT INTO MGMT_SYSTEM_PERFORMANCE_LOG (JOB_NAME, TIME, DURATION, MODULE, ACTIO
N, IS_TOTAL, NAME, VALUE, CLIENT_DATA, HOST_URL) VALUES (:B9 , SYSDATE, :B8 , SU
BSTR(:B7 , 1, 512), SUBSTR(:B6 ,1,32), :B5 , SUBSTR(:B4 ,1,128), SUBSTR(:B3 ,1,1
28), SUBSTR(:B2 ,1,128), SUBSTR(:B1 ,1,256))                                    
2019-09-29/21:13:59                                                             

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
                                                                                
SELECT /*+ RULE */ JOB_ID, EXECUTION_ID, STATUS, SUSPEND_TIMEOUT FROM MGMT_JOB_E
XEC_SUMMARY WHERE STATUS IN (:B2 ) AND SUSPEND_TIMEOUT > 0 AND (:B1 -SUSPEND_TIM
E) > (SUSPEND_TIMEOUT/(24*60))                                                  
2019-09-29/21:13:59                                                             
                                                                                
SELECT target_guid   FROM mgmt_metric_dependency  WHERE can_calculate = 1    AND
 event_metric = 1    AND disabled = 0    AND rs_metric = 1  ORDER BY eval_order 
2019-09-29/21:13:59                                                             

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
                                                                                
SELECT COUNT(*) FROM MGMT_PARAMETERS WHERE PARAMETER_NAME=:B1 AND UPPER(PARAMETE
R_VALUE)='TRUE'                                                                 
2019-09-29/21:13:59                                                             
                                                                                
SELECT /*+ RULE */ STEP_ID FROM MGMT_JOB_EXECUTION E, MGMT_JOB J WHERE E.JOB_ID=
J.JOB_ID AND STEP_STATUS IN (:B8 , :B7 , :B6 , :B5 , :B4 , :B3 ) AND STEP_TYPE=:
B2 AND J.EXECUTION_TIMEOUT > 0 AND (:B1 -E.START_TIME) > (J.EXECUTION_TIMEOUT/24
)                                                                               

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
2019-09-29/21:13:59                                                             
                                                                                
select intcol#, toid, version#, intcols, intcol#s, flags, synobj# from subcoltyp
e$ where obj#=:1 order by intcol# asc                                           
2019-09-29/21:13:58                                                             
                                                                                
select i.obj#,i.ts#,i.file#,i.block#,i.intcols,i.type#,i.flags,i.property,i.pctf
ree$,i.initrans,i.maxtrans,i.blevel,i.leafcnt,i.distkey,i.lblkkey,i.dblkkey,i.cl
ufac,i.cols,i.analyzetime,i.samplesize,i.dataobj#,nvl(i.degree,1),nvl(i.instance

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
s,1),i.rowcnt,mod(i.pctthres$,256),i.indmethod#,i.trunccnt,nvl(c.unicols,0),nvl(
c.deferrable#+c.valid#,0),nvl(i.spare1,i.intcols),i.spare4,i.spare2,i.spare6,dec
ode(i.pctthres$,null,null,mod(trunc(i.pctthres$/256),256)),ist.cachedblk,ist.cac
hehit,ist.logicalread from ind$ i, ind_stats$ ist, (select enabled, min(cols) un
icols,min(to_number(bitand(defer,1))) deferrable#,min(to_number(bitand(defer,4))
) valid# from cdef$ where obj#=:1 and enabled > 1 group by enabled) c where i.ob
j#=c.enabled(+) and i.obj# = ist.obj#(+) and i.bo#=:1 order by i.obj#           
2019-09-29/21:13:58                                                             
                                                                                

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
select col#,intcol#,toid,version#,packed,intcols,intcol#s,flags, synobj#, nvl(ty
pidcol#, 0) from coltype$ where obj#=:1 order by intcol# desc                   
2019-09-29/21:13:58                                                             
                                                                                
select pos#,intcol#,col#,spare1,bo#,spare2,spare3 from icol$ where obj#=:1      
2019-09-29/21:13:58                                                             
                                                                                
select col#, grantee#, privilege#,max(mod(nvl(option$,0),2)) from objauth$ where
 obj#=:1 and col# is not null group by privilege#, col#, grantee# order by col#,

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
 grantee#                                                                       
2019-09-29/21:13:58                                                             
                                                                                
select next_run_date, obj#, run_job, sch_job from (select decode(bitand(a.flags,
 16384), 0, a.next_run_date,                a.last_enabled_time) next_run_date, 
      a.obj# obj#, decode(bitand(a.flags, 16384), 0, 0, 1) run_job, a.sch_job  s
ch_job  from  (select p.obj# obj#, p.flags flags, p.next_run_date next_run_date,
      p.job_status job_status, p.class_oid class_oid,      p.last_enabled_time l
ast_enabled_time, p.instance_id instance_id,      1 sch_job   from sys.scheduler

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
$_job p   where bitand(p.job_status, 3) = 1    and ((bitand(p.flags, 134217728 +
 268435456) = 0) or         (bitand(p.job_status, 1024) <> 0))    and bitand(p.f
lags, 4096) = 0    and ((p.instance_id is not null    and (to_char(p.instance_id
) = :1))    or (p.instance_id is null and p.class_oid is not null    and p.class
_oid in (select b.obj# from sys.scheduler$_class b      where bitand(b.flags, :2
) <> 0 and lower(b.affinity) = lower(:3))))   UNION ALL   select q.obj#, q.flags
, q.next_run_date, q.job_status, q.class                                        
2019-09-29/21:13:58                                                             
                                                                                

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
select user#,password,datats#,tempts#,type#,defrole,resource$, ptime,exptime, lt
ime, astatus, lcount, decode(defschclass,NULL,'DEFAULT_CONSUMER_GROUP',defschcla
ss),spare1,spare4,ext_username,spare2 from user$ where name=:1                  
2019-09-29/21:13:58                                                             
                                                                                
delete from obj$ where obj# = :1                                                
2019-09-29/21:13:58                                                             
                                                                                
select t.ts#,t.file#,t.block#,nvl(t.bobj#,0),nvl(t.tab#,0),t.intcols,nvl(t.cluco

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
ls,0),t.audit$,t.flags,t.pctfree$,t.pctused$,t.initrans,t.maxtrans,t.rowcnt,t.bl
kcnt,t.empcnt,t.avgspc,t.chncnt,t.avgrln,t.analyzetime,t.samplesize,t.cols,t.pro
perty,nvl(t.degree,1),nvl(t.instances,1),t.avgspc_flb,t.flbcnt,t.kernelcols,nvl(
t.trigflag, 0),nvl(t.spare1,0),nvl(t.spare2,0),t.spare4,t.spare6,ts.cachedblk,ts
.cachehit,ts.logicalread from tab$ t, tab_stats$ ts where t.obj#= :1 and t.obj# 
= ts.obj# (+)                                                                   
2019-09-29/21:13:58                                                             
                                                                                
select cols,audit$,textlength,intcols,property,flags,rowid from view$ where obj#

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
=:1                                                                             
2019-09-29/21:13:58                                                             
                                                                                
select obj# from oid$ where user#=:1 and oid$=:2                                
2019-09-29/21:13:58                                                             
                                                                                
select intcol#,type,flags,lobcol,objcol,extracol,schemaoid,  elemnum from opqtyp
e$ where obj# = :1 order by intcol# asc                                         
2019-09-29/21:13:58                                                             

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
                                                                                
SELECT COUNT(*) FROM MGMT_FAILOVER_TABLE WHERE SYS_EXTRACT_UTC(SYSTIMESTAMP)-LAS
T_TIME_STAMP_UTC > NUMTODSINTERVAL(HEARTBEAT_INTERVAL*:B1 , 'SECOND')           
2019-09-29/21:13:58                                                             
                                                                                
select o.owner#, o.name,            o.namespace,    o.obj#,   d.d_timestamp, nvl
(d.property,0), o.type#, o.subname, d.d_attrs  from dependency$ d, obj$ o   wher
e d.p_obj#=:1  and   (d.p_timestamp=nvl(:2,d.p_timestamp) or d.property=2)  and 
  o.owner#=nvl(:3,o.owner#)  and   d.d_obj#=o.obj#  order by o.obj#             

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
2019-09-29/21:13:58                                                             
                                                                                
delete from idl_ub1$ where obj#=:1 and part=:2                                  
2019-09-29/21:13:58                                                             
                                                                                
select col#,intcol#,reftyp,stabid,expctoid from refcon$ where obj#=:1 order by i
ntcol# asc                                                                      
2019-09-29/21:13:58                                                             
                                                                                

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
select obj# from objerror$                                                      
2019-09-29/21:13:58                                                             
                                                                                
select audit$, os_path from dir$ where obj#=:1                                  
2019-09-29/21:13:58                                                             
                                                                                
select obj#, owner, node from syn$ where name=:1                                
2019-09-29/21:13:58                                                             
                                                                                

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
select l.col#, l.intcol#, l.lobj#, l.ind#, l.ts#, l.file#, l.block#, l.chunk, l.
pctversion$, l.flags, l.property, l.retention, l.freepools from lob$ l where l.o
bj# = :1 order by l.intcol# asc                                                 
2019-09-29/21:13:58                                                             
                                                                                
select col#,intcol#,ntab# from ntab$ where obj#=:1 order by intcol# asc         
2019-09-29/21:13:58                                                             
                                                                                
SELECT TO_NUMBER(PARAMETER_VALUE) FROM MGMT_PARAMETERS WHERE PARAMETER_NAME = :B

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
1                                                                               
2019-09-29/21:13:58                                                             
                                                                                
select con#,type#,condlength,intcols,robj#,rcon#,match#,refact,nvl(enabled,0),ro
wid,cols,nvl(defer,0),mtime,nvl(spare1,0),spare2,spare3 from cdef$ where obj#=:1
2019-09-29/21:13:58                                                             
                                                                                
insert into obj$(owner#,name,namespace,obj#,type#,ctime,mtime,stime,status,remot
eowner,linkname,subname,dataobj#,flags,oid$,spare1,spare2,spare3) values(:1,:2,:

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,:17,:18)                        
2019-09-29/21:13:58                                                             
                                                                                
delete from idl_char$ where obj#=:1 and part=:2                                 
2019-09-29/21:13:58                                                             
                                                                                
select userid, name, subname, flags    from sys.scheduler$_lwjob_obj where obj# 
= :1                                                                            
2019-09-29/21:13:58                                                             

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
                                                                                
delete from ncomp_dll$ where obj#=:1 returning dllname into :2                  
2019-09-29/21:13:58                                                             
                                                                                
select grantee#,privilege#,nvl(col#,0),max(mod(nvl(option$,0),2))from objauth$ w
here obj#=:1 group by grantee#,privilege#,nvl(col#,0) order by grantee#         
2019-09-29/21:13:58                                                             
                                                                                
select job, nvl2(last_date, 1, 0) from sys.job$ where (((:1 <= next_date) and (n

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
ext_date <= :2))    or  ((last_date is null) and (next_date < :3))) and (field1 
= :4 or (field1 = 0 and 'Y' = :5)) and (this_date is null) and ((dbms_logstdby.d
b_is_logstdby = 0 and job < 1000000000) or  (dbms_logstdby.db_is_logstdby = 1 an
d job >= 1000000000)) order by next_date, job                                   
2019-09-29/21:13:58                                                             
                                                                                
delete from objauth$ where obj#=:1                                              
2019-09-29/21:13:58                                                             
                                                                                

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
select intcol#,nvl(pos#,0),col#,nvl(spare1,0) from ccol$ where con#=:1          
2019-09-29/21:13:58                                                             
                                                                                
select col#,intcol#,charsetid,charsetform from col$ where obj#=:1 order by intco
l# asc                                                                          
2019-09-29/21:13:58                                                             
                                                                                
delete from idl_ub2$ where obj#=:1 and part=:2                                  
2019-09-29/21:13:58                                                             

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
                                                                                
select o.owner#,o.name,o.namespace,o.remoteowner,o.linkname,o.subname from obj$ 
o where o.obj#=:1                                                               
2019-09-29/21:13:58                                                             
                                                                                
select audit$,properties from type_misc$ where obj#=:1                          
2019-09-29/21:13:58                                                             
                                                                                
delete from idl_sb4$ where obj#=:1 and part=:2                                  

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
2019-09-29/21:13:58                                                             
                                                                                
SELECT DBID FROM V$DATABASE                                                     
2019-09-29/21:13:58                                                             
                                                                                
select con#,obj#,rcon#,enabled,nvl(defer,0),spare2,spare3 from cdef$ where robj#
=:1                                                                             
2019-09-29/21:13:58                                                             
                                                                                

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
select text from view$ where rowid=:1                                           
2019-09-29/21:13:58                                                             
                                                                                
select type#,blocks,extents,minexts,maxexts,extsize,extpct,user#,iniexts,NVL(lis
ts,65535),NVL(groups,65535),cachehint,hwmincr, NVL(spare1,0),NVL(scanhint,0),NVL
(bitmapranges,0) from seg$ where ts#=:1 and file#=:2 and block#=:3              
2019-09-29/21:13:58                                                             
                                                                                
delete from dependency$ where d_obj#=:1                                         

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
2019-09-29/21:13:57                                                             
                                                                                
delete from dependency$ where d_obj#=:1                                         
2019-09-29/21:13:57                                                             
                                                                                
select obj# from objerror$                                                      
2019-09-29/21:13:57                                                             
                                                                                
select aft.owner_instance, t.objno, t.flags  from system.aq$_queue_tables t,  aq

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
$_queue_table_affinities aft  where t.objno = aft.table_objno and t.schema = :1 
and t.name = :2                                                                 
2019-09-29/21:13:57                                                             
                                                                                
SELECT S.SCHEMA, S.QUEUE_NAME, S.NAME, S.ADDRESS, S.PROTOCOL, S.SUBSCRIBER_ID FR
OM SYS.AQ$_SUBSCRIBER_TABLE S WHERE BITAND(S.SUBSCRIBER_TYPE, :B3 ) = :B3 AND S.
INSTANCE_ID = :B2 AND S.SCN_AT_ADD < :B1                                        
2019-09-29/21:13:57                                                             
                                                                                

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
delete from sys.scheduler$_saved_oids    where oididx <> 0 and oididx >= :1 and 
oididx <= :2                                                                    
2019-09-29/21:13:57                                                             
                                                                                
select obj#, owner, node from syn$ where name=:1                                
2019-09-29/21:13:57                                                             
                                                                                
select /*+ index(idl_ub1$ i_idl_ub11) +*/ piece#,length,piece from idl_ub1$ wher
e obj#=:1 and part=:2 and version=:3 order by piece#                            

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
2019-09-29/21:13:57                                                             
                                                                                
select '"'||name||'" '||decode(type#,1,decode(charsetform,2,'NVARCHAR2('||decode
(bitand(property,8388608),8388608,decode(spare3,0,1,spare3)||')','BYTECOUNT=>'||
decode(length,0,1,length)||')'),'VARCHAR2('||decode(bitand(property,8388608),838
8608,decode(spare3,0,1,spare3)||' char)',decode(length,0,1,length)||' byte)')),2
,decode(scale,null,decode(precision#,null,'NUMBER','FLOAT('||precision#||')'),'N
UMBER('||decode(precision#,null,'38', precision#)||','||scale||')'),8,'LONG',9,'
VARCHAR('||(decode(length,0,1,length))||')',12,'DATE',23,'RAW('||length||')',24,

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
'LONG RAW',69,'ROWID',96,decode(charsetform,2,'NCHAR('||decode(bitand(property,8
388608),8388608,decode(spare3,0,1,spare3)||')','BYTECOUNT=>'||decode(length,0,1,
length)||')'),'CHAR('||decode(bitand(property,8388608),8388608,decode(spare3,0,1
,spare3)||' char)',decode(length,0,1,length)||' byte)')),97,'VARCHAR('||(decode(
length,0,1,length))|| ')',105,'MLSLABEL',106,'MLSLABEL',112,decode(charsetform,2
,'NCLOB','CLOB'),113,'BLOB',114,'BFILE',                                        
2019-09-29/21:13:57                                                             
                                                                                
SELECT SYS_GUID() FROM SYS.DUAL                                                 

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
2019-09-29/21:13:57                                                             
                                                                                
select condition from cdef$ where rowid=:1                                      
2019-09-29/21:13:57                                                             
                                                                                
update sys.job$ set failures=0, this_date=null, flag=:1, last_date=:2,  next_dat
e = greatest(:3, sysdate),  total=total+(sysdate-nvl(this_date,sysdate)) where j
ob=:4                                                                           
2019-09-29/21:13:57                                                             

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
                                                                                
select obj#, prgoid, creation_time, mod_time, spec_time, flags    from sys.sched
uler$_lwjob_obj where userid = :1 and name = :2 and    subname is null          
2019-09-29/21:13:57                                                             
                                                                                
SELECT CONTEXT_TYPE_ID,CONTEXT_TYPE,TRACE_LEVEL,NULL,NULL FROM EMDW_TRACE_CONFIG
 WHERE CONTEXT_TYPE = UPPER(:B1 )                                               
2019-09-29/21:13:57                                                             
                                                                                

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
UPDATE DBMS_LOCK_ALLOCATED SET EXPIRATION = SYSDATE + (:B1 /86400) WHERE ROWID =
 :B2                                                                            
2019-09-29/21:13:57                                                             
                                                                                
select /*+ index(idl_char$ i_idl_char1) +*/ piece#,length,piece from idl_char$ w
here obj#=:1 and part=:2 and version=:3 order by piece#                         
2019-09-29/21:13:57                                                             
                                                                                
begin    sys.dbms_aq_inv.internal_purge_queue_table(:1, :2, :3, :4, :5, :6, :7, 

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
:8); end;                                                                       
2019-09-29/21:13:57                                                             
                                                                                
SELECT LOCKID FROM DBMS_LOCK_ALLOCATED WHERE NAME = :B1 FOR UPDATE              
2019-09-29/21:13:57                                                             
                                                                                
select /*+ index(idl_sb4$ i_idl_sb41) +*/ piece#,length,piece from idl_sb4$ wher
e obj#=:1 and part=:2 and version=:3 order by piece#                            
2019-09-29/21:13:57                                                             

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
                                                                                
SELECT SYS_EXTRACT_UTC(SYSTIMESTAMP) FROM DUAL                                  
2019-09-29/21:13:57                                                             
                                                                                
select owner#,name,namespace,remoteowner,linkname,p_timestamp,p_obj#, nvl(proper
ty,0),subname,type#,d_attrs from dependency$ d, obj$ o where d_obj#=:1 and p_obj
#=obj#(+) order by order#                                                       
2019-09-29/21:13:57                                                             
                                                                                

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
SELECT ID FROM WWV_FLOW_MAIL_QUEUE                                              
2019-09-29/21:13:57                                                             
                                                                                
select audit$,options from procedure$ where obj#=:1                             
2019-09-29/21:13:57                                                             
                                                                                
delete from access$ where d_obj#=:1                                             
2019-09-29/21:13:57                                                             
                                                                                

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
delete from access$ where d_obj#=:1                                             
2019-09-29/21:13:57                                                             
                                                                                
SELECT o.obj# from obj$ o, tab$ t, user$ u where  u.name = :1 and o.name = :2 an
d u.user# = o.owner# and  t.obj# = o.obj# and o.type# = 2 and bitand(t.property,
 131072) = 131072                                                               
2019-09-29/21:13:57                                                             
                                                                                
update obj$ set obj#=:4, type#=:5,ctime=:6,mtime=:7,stime=:8,status=:9,dataobj#=

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
:10,flags=:11,oid$=:12,spare1=:13, spare2=:14 where owner#=:1 and name=:2 and na
mespace=:3 and remoteowner is null and linkname is null and subname is null     
2019-09-29/21:13:57                                                             
                                                                                
select privilege#,level from sysauth$ connect by grantee#=prior privilege# and p
rivilege#>0 start with (grantee#=:1 or grantee#=1) and privilege#>0             
2019-09-29/21:13:57                                                             
                                                                                
update sys.scheduler$_saved_oids set savedoid = :1 where oididx = 0             

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
2019-09-29/21:13:57                                                             
                                                                                
select order#,columns,types from access$ where d_obj#=:1                        
2019-09-29/21:13:57                                                             
                                                                                
select /*+ index(idl_ub2$ i_idl_ub21) +*/ piece#,length,piece from idl_ub2$ wher
e obj#=:1 and part=:2 and version=:3 order by piece#                            
2019-09-29/21:13:57                                                             
                                                                                

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
insert into access$(d_obj#,order#,columns,types) values (:1,:2,:3,:4)           
2019-09-29/21:13:57                                                             
                                                                                
insert into access$(d_obj#,order#,columns,types) values (:1,:2,:3,:4)           
2019-09-29/21:13:57                                                             
                                                                                
select flags, schema, name from system.aq$_queue_tables where objno = :1        
2019-09-29/21:13:57                                                             
                                                                                

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
select pctfree_stg, pctused_stg, size_stg, initial_stg, next_stg, minext_stg, ma
xext_stg, maxsiz_stg, lobret_stg, mintim_stg, pctinc_stg, initra_stg, maxtra_stg
, optimal_stg, maxins_stg, frlins_stg, flags_stg, bfp_stg, enc_stg, cmpflag_stg,
 cmplvl_stg  from deferred_stg$  where obj# =:1                                 
2019-09-29/21:13:57                                                             
                                                                                
select o.owner#, o.name,            o.namespace,    o.obj#,   d.d_timestamp, nvl
(d.property,0), o.type#, o.subname, d.d_attrs  from dependency$ d, obj$ o   wher
e d.p_obj#=:1  and   (d.p_timestamp=nvl(:2,d.p_timestamp) or d.property=2)  and 

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
  o.owner#=nvl(:3,o.owner#)  and   d.d_obj#=o.obj#  order by o.obj#             
2019-09-29/21:13:57                                                             
                                                                                
update "SYS"."ALERT_QT" set q_name = :1, state = :2,  time_manager_info = NULL, 
 exception_queue = :3 where rowid = :4                                          
2019-09-29/21:13:56                                                             
                                                                                
update obj$ set obj#=:4, type#=:5,ctime=:6,mtime=:7,stime=:8,status=:9,dataobj#=
:10,flags=:11,oid$=:12,spare1=:13, spare2=:14 where owner#=:1 and name=:2 and na

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
mespace=:3 and remoteowner is null and linkname is null and subname is null     
2019-09-29/21:13:56                                                             
                                                                                
select q_name, state, delay, expiration, rowid, msgid,   dequeue_msgid, chain_no
, local_order_no, enq_time, enq_tid, step_no,   priority, exception_qschema, exc
eption_queue, retry_count, corrid,   time_manager_info, sender_name, sender_addr
ess, sender_protocol   from "SYS"."ALERT_QT"   where msgid = :1                 
2019-09-29/21:13:56                                                             
                                                                                

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
select decode(u.type#, 2, u.ext_username, u.name), o.name,        t.update$, t.i
nsert$, t.delete$, t.enabled,        decode(bitand(t.property, 8192),8192, 1, 0)
,        decode(bitand(t.property, 65536), 65536, 1, 0),       decode(bitand(t.p
roperty, 131072), 131072, 1, 0),       (select o.name from obj$ o          where
 o.obj# = u.spare2 and o.type# =57)  from sys.obj$ o, sys.user$ u, sys.trigger$ 
t, sys.obj$ bo where t.baseobject=bo.obj# and bo.name = :1 and bo.spare3 = :2  a
nd bo.namespace = 1  and t.obj#=o.obj# and o.owner#=u.user#  and o.type# = 12 an
d bitand(property,16)=0 and bitand(property,8)=0  order by o.obj#               
2019-09-29/21:13:56                                                             

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
                                                                                
select sys.scheduler$_instance_s.nextval from dual                              
2019-09-29/21:13:56                                                             
                                                                                
select recurrence_expr, max_count, comments, flags, end_date, reference_date, qu
eue_owner, queue_name, queue_agent, fw_name  from sys.scheduler$_schedule  where
 obj# = :1                                                                      
2019-09-29/21:13:56                                                             
                                                                                

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
insert into sys.scheduler$_job_run_details  (log_id, log_date, req_start_date, s
tart_date, run_duration,   instance_id, session_id, slave_pid, cpu_used, error#,
 additional_info)   values  (:1, SYSTIMESTAMP, :2, :3, :4, :5, :6, :7,   numtods
interval(:8/100, 'second'), :9, :10)                                            
2019-09-29/21:13:56                                                             
                                                                                
SELECT UPPER(PARAMETER_VALUE) FROM MGMT_PARAMETERS WHERE PARAMETER_NAME = :B1   
2019-09-29/21:13:56                                                             
                                                                                

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
update "SYS"."AQ$_ALERT_QT_H" set transaction_id = NULL where msgid = :1  and de
queue_time is NULL                                                              
2019-09-29/21:13:56                                                             
                                                                                
select count(*) from sys.scheduler$_program_argument where oid = :1             
2019-09-29/21:13:56                                                             
                                                                                
select action, number_of_args, comments, flags, schedule_limit,         priority
, job_weight, max_runs, max_failures,         max_run_duration, nls_env, env  fr

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
om sys.scheduler$_program  where obj# = :1                                      
2019-09-29/21:13:56                                                             
                                                                                
SELECT VALUE V FROM WWV_FLOW_PLATFORM_PREFS WHERE NAME = :B1                    
2019-09-29/21:13:56                                                             
                                                                                
insert into sys.scheduler$_event_log  (log_id, log_date, type#, name, owner, ope
ration, status, user_name,   client_id, guid, dbid, additional_info, destination
, credential, class_id,   flags)   values  (:1, SYSTIMESTAMP,   :2, :3, :4, :5, 

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
:6, :7, :8, :9, NULL, :10, :11, :12, :13, :14)                                  
2019-09-29/21:13:56                                                             
                                                                                
select t.schema, t.name, t.flags, q.name, t.timezone, NULL owner  from system.aq
$_queue_tables t, system.aq$_queues q  where  t.objno = :1 and q.table_objno = t
.objno and q.usage = 0         and NOT         ( t.name in ('DEF$_AQCALL' , 'DEF
$_AQERROR') and t.schema = 'SYSTEM')                                            
2019-09-29/21:13:56                                                             
                                                                                

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
 begin      dbms_aqadm_sys.remove_all_nondurablesub(:1, :2);   end;             
2019-09-29/21:13:56                                                             
                                                                                
select 1 from obj$ where name='DBA_QUEUE_SCHEDULES'                             
2019-09-29/21:13:56                                                             
                                                                                
update sys.scheduler$_job set  next_run_date = :1, last_end_date = :2, retry_cou
nt = :3, run_count = :4, running_instance = :5, running_slave = :6, job_status =
 :7 where  obj# = :8                                                            

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
2019-09-29/21:13:56                                                             
                                                                                
DECLARE job BINARY_INTEGER := :job; next_date DATE := :mydate;  broken BOOLEAN :
= FALSE; BEGIN wwv_flow_cache.purge_sessions(p_purge_sess_older_then_hrs => 24);
 :mydate := next_date; IF broken THEN :b := 1; ELSE :b := 0; END IF; END;       
2019-09-29/21:13:55                                                             
                                                                                
update sys.scheduler$_job set  last_start_date = :1, running_instance = :2, runn
ing_slave = :3, job_status = :4 where  obj# = :5                                

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
2019-09-29/21:13:55                                                             
                                                                                
select u1.user#, u2.user#, u3.user#, failures, flag, interval#,    what, nlsenv,
 env, field1, next_date  from sys.job$ j, sys.user$ u1, sys.user$ u2, sys.user$ 
u3  where job=:1 and (next_date <= sysdate or :2 != 0)  and lowner = u1.name and
 powner = u2.name and cowner = u3.name                                          
2019-09-29/21:13:55                                                             
                                                                                
update sys.job$ set this_date=:1 where job=:2                                   

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
2019-09-29/21:13:55                                                             
                                                                                
select count(*) from sys.scheduler$_job_argument where oid = :1                 
2019-09-29/21:13:55                                                             
                                                                                
select node,owner,name from syn$ where obj#=:1                                  
2019-09-29/21:13:55                                                             
                                                                                
select limit# from profile$ where profile#=:1 and resource#=:2 and type#=:3     

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
2019-09-29/21:13:55                                                             
                                                                                
DECLARE job BINARY_INTEGER := :job; next_date DATE := :mydate;  broken BOOLEAN :
= FALSE; BEGIN wwv_flow_mail.push_queue(wwv_flow_platform.get_preference('SMTP_H
OST_ADDRESS'),wwv_flow_platform.get_preference('SMTP_HOST_PORT')); :mydate := ne
xt_date; IF broken THEN :b := 1; ELSE :b := 0; END IF; END;                     
2019-09-29/21:13:55                                                             
                                                                                
select  decode(u.type#, 2, u.ext_username, u.name), o.name, trigger$.sys_evts, t

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
rigger$.type#  from obj$ o, user$ u, trigger$  where o.type# = 12 and bitand(tri
gger$.property,16) = 16   and trigger$.baseobject = :1 and trigger$.obj# = o.obj
#   and o.owner# = u.user# order by o.obj#                                      
2019-09-29/21:13:55                                                             
                                                                                
select privilege# from sysauth$ where (grantee#=:1 or grantee#=1) and privilege#
>0                                                                              
2019-09-29/21:13:55                                                             
                                                                                

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
SELECT OBJOID, CLSOID,    DECODE(BITAND(FLAGS, 16384), 0, RUNTIME,           LET
IME),    (2*PRI +     DECODE(BITAND(STATUS, 4), 0, 0,            decode(INST, :1
, -1, 1))),    JOBTYPE, SCHLIM, WT, INST, RUNNOW, ENQ_SCHLIM, INST_ID  FROM (  s
elect a.obj# OBJOID, a.class_oid CLSOID, a.next_run_date RUNTIME,         a.last
_enabled_time LETIME, a.flags FLAGS, a.job_status STATUS,         1 JOBTYPE, a.p
riority PRI,         decode(a.schedule_limit, NULL,                decode(bitand
(a.flags, 4194304), 4194304,                              b.schedule_limit, NULL
),               a.schedule_limit) SCHLIM,         a.job_weight WT,         deco
de(a.running_instance, NULL, 0, a.running_instance) INST,         decode(bitand(

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
a.flags, 16384), 0, 0, 1) RUNNOW,         decode(bitand(a.job_status, 8388608), 
0, 0, 1) ENQ_SCHLIM,         a.instance_id INST_ID  from sys.scheduler$_job a, s
ys.scheduler$_program b, v$database v ,        v$instance i  where a.program_oid
 = b.obj#(+)    and (a.database_role = v                                        
2019-09-29/21:13:55                                                             
                                                                                
DECLARE job BINARY_INTEGER := :job; next_date DATE := :mydate;  broken BOOLEAN :
= FALSE; BEGIN EMD_MAINTENANCE.EXECUTE_EM_DBMS_JOB_PROCS(); :mydate := next_date
; IF broken THEN :b := 1; ELSE :b := 0; END IF; END;                            

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
2019-09-29/21:13:55                                                             
                                                                                
select /*+ connect_by_filtering */ privilege#,level from sysauth$ connect by gra
ntee#=prior privilege# and privilege#>0 start with grantee#=:1 and privilege#>0 
2019-09-29/21:13:55                                                             
                                                                                
select sysdate + 10/1440 from dual                                              
2019-09-29/21:13:55                                                             
                                                                                

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
select program_oid, schedule_expr, schedule_id, queue_owner, queue_name,        
 queue_agent, event_rule, mxdur_msgid, last_enabled_time, class_oid,         nex
t_run_date, last_start_date, last_end_date, retry_count,         run_count, fail
ure_count, running_instance, running_slave, flags,         job_status, creator, 
client_id, guid, char_env, start_date, end_date,         instance_id, fw_name, f
w_oid, destination, credential_name,         credential_owner, credential_oid, d
est_oid, job_dest_id, run_invoker,         program_action, schedule_limit,      
   priority, job_weight, number_of_args, max_runs, max_failures,         max_run
_duration, comments, user_callback, user_callback_ctx,         nls_env, source, 

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
env, database_role, owner_udn, dist_flags  from sys.scheduler$_job  where obj# =
 :1                                                                             
2019-09-29/21:13:55                                                             
                                                                                
select sysdate + 1 / (24 * 60) from dual                                        
2019-09-29/21:13:55                                                             
                                                                                
select name,password,datats#,tempts#,type#,defrole,resource$, ptime, exptime, lt
ime, astatus, lcount, decode(defschclass,NULL,'DEFAULT_CONSUMER_GROUP',defschcla

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
ss),spare1,spare4,ext_username,spare2 from user$ where user#=:1                 
2019-09-29/21:13:55                                                             
                                                                                
delete from access$ where d_obj#=:1                                             
2019-09-29/21:13:54                                                             
                                                                                
select res_plan, next_start_date, duration, schedule_expr, flags, comments,     
  end_date, start_date, unused_slave_policy, creator, max_slave_percent,      mi
n_slave_percent, schedule_id, priority, max_conc_jobs,       last_start_date, ac

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
tual_start_date,       manual_open_time, manual_duration from sys.scheduler$_win
dow  where obj# = :1                                                            
2019-09-29/21:13:54                                                             
                                                                                
select count(*) from sys.scheduler$_wingrp_member   where oid = :1 and member_oi
d = :2                                                                          
2019-09-29/21:13:54                                                             
                                                                                
select userid, name, subname, flags    from sys.scheduler$_lwjob_obj where obj# 

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
= :1                                                                            
2019-09-29/21:13:54                                                             
                                                                                
update sys.scheduler$_window set  next_start_date = :1, flags = :2, last_start_d
ate = :3 where  obj# = :4                                                       
2019-09-29/21:13:54                                                             
                                                                                
delete from dependency$ where d_obj#=:1                                         
2019-09-29/21:13:54                                                             

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
                                                                                
insert into access$(d_obj#,order#,columns,types) values (:1,:2,:3,:4)           
2019-09-29/21:13:54                                                             
                                                                                
select next_run_date, obj#, run_job, sch_job from (select decode(bitand(a.flags,
 16384), 0, a.next_run_date,                a.last_enabled_time) next_run_date, 
      a.obj# obj#, decode(bitand(a.flags, 16384), 0, 0, 1) run_job, a.sch_job  s
ch_job  from  (select p.obj# obj#, p.flags flags, p.next_run_date next_run_date,
      p.job_status job_status, p.class_oid class_oid,      p.last_enabled_time l

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
ast_enabled_time, p.instance_id instance_id,      1 sch_job   from sys.scheduler
$_job p   where bitand(p.job_status, 3) = 1    and ((bitand(p.flags, 134217728 +
 268435456) = 0) or         (bitand(p.job_status, 1024) <> 0))    and bitand(p.f
lags, 4096) = 0    and ((p.instance_id is not null    and (to_char(p.instance_id
) = :1))    or (p.instance_id is null and p.class_oid is not null    and p.class
_oid in (select b.obj# from sys.scheduler$_class b      where bitand(b.flags, :2
) <> 0 and lower(b.affinity) = lower(:3))))   UNION ALL   select q.obj#, q.flags
, q.next_run_date, q.job_status, q.class                                        
2019-09-29/21:13:54                                                             

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
                                                                                
select job, nvl2(last_date, 1, 0) from sys.job$ where next_date <= :1 and (field
1 = :2 or (field1 = 0 and 'Y' = :3)) and ((dbms_logstdby.db_is_logstdby = 0 and 
job < 1000000000) or  (dbms_logstdby.db_is_logstdby = 1 and job >= 1000000000)) 
order by next_date, job                                                         
2019-09-29/21:13:53                                                             
                                                                                
select next_run_date, obj#, run_job, sch_job from (select decode(bitand(a.flags,
 16384), 0, a.next_run_date,                a.last_enabled_time) next_run_date, 

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
      a.obj# obj#, decode(bitand(a.flags, 16384), 0, 0, 1) run_job, a.sch_job  s
ch_job  from  (select p.obj# obj#, p.flags flags, p.next_run_date next_run_date,
      p.job_status job_status, p.class_oid class_oid,      p.last_enabled_time l
ast_enabled_time, p.instance_id instance_id,      1 sch_job   from sys.scheduler
$_job p   where bitand(p.job_status, 3) = 1    and ((bitand(p.flags, 134217728 +
 268435456) = 0) or         (bitand(p.job_status, 1024) <> 0))    and bitand(p.f
lags, 4096) = 0    and p.instance_id is NULL    and (p.class_oid is null      or
 (p.class_oid is not null      and p.class_oid in (select b.obj# from sys.schedu
ler$_class b                          where b.affinity is null)))   UNION ALL   

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
select q.obj#, q.flags, q.next_run_date, q.job_status, q.class_oid,      q.last_
enabled_time, q.instance_id, 1   from sy                                        
2019-09-29/21:13:53                                                             
                                                                                
SELECT VALUE FROM WRI$_ADV_PARAMETERS WHERE TASK_ID = :B1 AND NAME = 'DAYS_TO_EX
PIRE'                                                                           
2019-09-29/21:13:51                                                             
                                                                                
SELECT MTIME FROM WRI$_ADV_TASKS WHERE ID = :B1                                 

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
2019-09-29/21:13:51                                                             
                                                                                
SELECT A.HOW_CREATED FROM WRI$_ADV_TASKS A WHERE A.ID = :B1                     
2019-09-29/21:13:51                                                             
                                                                                
select vindex,itypetoid,imethod#,iflags,itypeowner,itypename from vtable$ where 
obj#=:1 order by vindex                                                         
2019-09-29/21:13:51                                                             
                                                                                

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
SELECT PROPERTY FROM SYS.WRI$_ADV_DEFINITIONS WHERE ID = :B1                    
2019-09-29/21:13:51                                                             
                                                                                
select externtype, externname from type$ where tvoid=:1                         
2019-09-29/21:13:51                                                             
                                                                                
SELECT ATTR1 FROM DBA_ADVISOR_OBJECTS WHERE TASK_ID = :B2 AND TYPE_ID = 7 AND BI
TAND(ATTR7, :B1 ) <> 0                                                          
2019-09-29/21:13:51                                                             

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
                                                                                
select count(*) from vtable$ where obj#=:1                                      
2019-09-29/21:13:51                                                             
                                                                                
select value, flags, modified_inst, additional_info,         attr_tstamp, attr_i
ntv from  sys.scheduler$_global_attribute where obj# = :1                       
2019-09-29/21:13:50                                                             
                                                                                
select default$ from col$ where rowid=:1                                        

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
2019-09-29/21:13:50                                                             
                                                                                
select   schedule_mode, start_calibrate, num_votes,   synced_time, last_vote, st
atus from   WRI$_SCH_CONTROL where   schedule_id = :id                          
2019-09-29/21:13:50                                                             
                                                                                
SELECT B.TYPE FROM SYS.WRI$_ADV_TASKS A, SYS.WRI$_ADV_DEFINITIONS B WHERE A.ADVI
SOR_ID = B.ID AND A.ID = :B1                                                    
2019-09-29/21:13:50                                                             

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
                                                                                
SELECT VERSION FROM V$INSTANCE                                                  
2019-09-29/21:13:50                                                             
                                                                                
select  tab.rowid, tab.msgid, tab.corrid, tab.priority, tab.delay,   tab.expirat
ion, tab.retry_count, tab.exception_qschema,   tab.exception_queue, tab.chain_no
, tab.local_order_no, tab.enq_time,   tab.time_manager_info, tab.state, tab.enq_
tid, tab.step_no,   tab.sender_name, tab.sender_address, tab.sender_protocol,   
tab.dequeue_msgid, tab.user_prop, tab.user_data  from "SYS"."ALERT_QT" tab  wher

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
e msgid = :1                                                                    
2019-09-29/21:13:50                                                             
                                                                                
select /*+ FIRST_ROWS(1) */ x.C1, x.C2, x.C3 from  (select a.obj# C1,          d
ecode(bitand(a.flags, 64), 0, a.next_start_date,                 a.manual_open_t
ime) C2,          decode(bitand(a.flags, 64), 0, a.duration, a.manual_duration) 
C3,          decode(bitand(a.flags, 64), 0, a.priority, 0) C4   from sys.schedul
er$_window a   where bitand(a.flags, 1) = 1     and (a.next_start_date >= systim
estamp or bitand(a.flags, 2) <> 0 or          bitand(a.flags, 64) <> 0)     and 

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
a.obj# in (select b.member_oid from sys.scheduler$_wingrp_member b              
      where b.oid = :1)) x  order by x.C2, x.C4, x.C3 DESC                      
2019-09-29/21:13:50                                                             
                                                                                
select file#, block# from recyclebin$ where ts# = :1     and file# != 0 and bloc
k# != 0 and space = 0                                                           
2019-09-29/21:13:49                                                             
                                                                                
select shared_pool_size_for_estimate s,          shared_pool_size_factor * 100 f

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
,          estd_lc_load_time l, 0             from v$shared_pool_advice         
2019-09-29/21:13:49                                                             
                                                                                
select procedure#,entrypoint# from procedurec$ where obj#=:1 order by procedure#
2019-09-29/21:13:49                                                             
                                                                                
select position#,sequence#,level#,argument,type#,charsetid,charsetform,propertie
s,nvl(length, 0), nvl(precision#, 0),nvl(scale, 0),nvl(radix, 0), type_owner,typ
e_name,type_subname,type_linkname,pls_type from argument$ where obj#=:1 and proc

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
edure#=:2 order by sequence# desc                                               
2019-09-29/21:13:49                                                             
                                                                                
select max(procedure#) from procedurejava$ where obj#=:1                        
2019-09-29/21:13:49                                                             
                                                                                
select java_pool_size_for_estimate s,           java_pool_size_factor * 100 f,  
         estd_lc_load_time l, 0            from v$java_pool_advice              
2019-09-29/21:13:49                                                             

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
                                                                                
select procedure#,procedurename,properties,itypeobj# from procedureinfo$ where o
bj#=:1 order by procedurename desc, overload# desc                              
2019-09-29/21:13:49                                                             
                                                                                
select size_for_estimate,                      size_factor * 100 f,             
       estd_physical_read_time,                estd_physical_reads              
from v$db_cache_advice where id = '3'                                           
2019-09-29/21:13:49                                                             

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
                                                                                
select PGA_TARGET_FOR_ESTIMATE s,          PGA_TARGET_FACTOR * 100 f,           
ESTD_TIME t,         BYTES_PROCESSED b   from v$pga_target_advice order by PGA_T
ARGET_FOR_ESTIMATE                                                              
2019-09-29/21:13:49                                                             
                                                                                
DELETE FROM RECENT_RESOURCE_INCARNATIONS$ WHERE DB_UNIQUE_NAME <> :B2 OR DB_DOMA
IN <> :B1                                                                       
2019-09-29/21:13:49                                                             

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
                                                                                
insert into WRI$_ALERT_OUTSTANDING (reason_id, object_id, subobject_id, internal
_instance_number, owner, object_name, subobject_name, sequence_id, reason_argume
nt_1, reason_argument_2, reason_argument_3, reason_argument_4, reason_argument_5
, time_suggested, creation_time, action_argument_1, action_argument_2, action_ar
gument_3, action_argument_4, action_argument_5, message_level, hosting_client_id
, process_id, host_id, host_nw_addr, instance_name, instance_number, user_id, ex
ecution_context_id, error_instance_id, context, metric_value) values (:1, :2, :3
, :4, :5, :6, :7, :8, :9, :10, :11, :12, :13, :14, :15, :16, :17, :18, :19, :20,

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
 :21, :22, :23, :24, :25, :26, :27, :28, :29, :30, :31, :32)                    
2019-09-29/21:13:49                                                             
                                                                                
select time_mp, scn, num_mappings, tim_scn_map from smon_scn_time   where scn = 
   (select max(scn) from smon_scn_time where scn <= :1)                         
2019-09-29/21:13:49                                                             
                                                                                
SELECT INSTANCE_NAME, HOST_NAME, NVL(GVI_STARTUP_TIME, SYSTIMESTAMP) - INTERVAL 
'1' SECOND AS SHUTDOWN_TIME FROM (SELECT RRI.INSTANCE_NAME AS INSTANCE_NAME, RRI

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
.HOST_NAME AS HOST_NAME, FROM_TZ(RRI.STARTUP_TIME, '+00:00') AS RRI_STARTUP_TIME
, DBMS_HA_ALERTS_PRVT.INSTANCE_STARTUP_TIMESTAMP_TZ(GVI.STARTUP_TIME) AS GVI_STA
RTUP_TIME FROM RECENT_RESOURCE_INCARNATIONS$ RRI LEFT OUTER JOIN GV$INSTANCE GVI
 ON GVI.INSTANCE_NAME = RRI.RESOURCE_NAME WHERE RRI.RESOURCE_TYPE = 'INSTANCE' A
ND :B2 = RRI.DB_UNIQUE_NAME AND :B1 = RRI.DB_DOMAIN) WHERE GVI_STARTUP_TIME IS N
ULL OR GVI_STARTUP_TIME > RRI_STARTUP_TIME GROUP BY INSTANCE_NAME, HOST_NAME, GV
I_STARTUP_TIME                                                                  
2019-09-29/21:13:49                                                             
                                                                                

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
select max(procedure#) from procedureplsql$ where obj#=:1                       
2019-09-29/21:13:49                                                             
                                                                                
select max(procedure#) from procedurec$ where obj#=:1                           
2019-09-29/21:13:49                                                             
                                                                                
DELETE FROM RECENT_RESOURCE_INCARNATIONS$ WHERE RESOURCE_TYPE = 'INSTANCE' AND R
ESOURCE_NAME = :B4 AND DB_UNIQUE_NAME = :B3 AND DB_DOMAIN = NVL(:B2 , '==N/A==')
 AND STARTUP_TIME < SYS_EXTRACT_UTC(:B1 )                                       

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
2019-09-29/21:13:49                                                             
                                                                                
select ownername,classname,methodname,signature,flags from procedurejava$ where 
obj#=:1 and procedure#=:2 order by procedure#                                   
2019-09-29/21:13:49                                                             
                                                                                
LOCK TABLE RECENT_RESOURCE_INCARNATIONS$ IN EXCLUSIVE MODE                      
2019-09-29/21:13:49                                                             
                                                                                

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
select procedure#,ownerlength,classlength,methodlength,siglength, flagslength,co
okiesize from procedurejava$ where obj#=:1 order by procedure#                  
2019-09-29/21:13:49                                                             
                                                                                
BEGIN  dbms_ha_alerts_prvt.clear_instance_resources(   :dbdomain, :dbuniquename,
 :instance_name, :event_time);END;                                              
2019-09-29/21:13:49                                                             
                                                                                
select sum(used_blocks), ts.ts#   from GV$SORT_SEGMENT gv, ts$ ts   where gv.tab

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
lespace_name = ts.name and   ts.bitmapped  <> 0   group by ts.ts#               
2019-09-29/21:13:49                                                             
                                                                                
select procedure#,entrypoint# from procedureplsql$ where obj#=:1 order by proced
ure#                                                                            
2019-09-29/21:13:49                                                             
                                                                                
select message_level, sequence_id, time_suggested from WRI$_ALERT_OUTSTANDING wh
ere reason_id = :1 and object_id = :2 and subobject_id = :3 and internal_instanc

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
e_number = :4                                                                   
2019-09-29/21:13:49                                                             
                                                                                
select nvl(sum(space),0) from recyclebin$ where ts# = :1                        
2019-09-29/21:13:49                                                             
                                                                                
INSERT INTO RECENT_RESOURCE_INCARNATIONS$ ( RESOURCE_TYPE, RESOURCE_ID, RESOURCE
_NAME, DB_UNIQUE_NAME, DB_DOMAIN, INSTANCE_NAME, HOST_NAME, STARTUP_TIME, LOCATI
ON, INCARNATION ) SELECT 'INSTANCE', INSTANCE_NUMBER, INSTANCE_NAME, :B2 , :B1 ,

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
 INSTANCE_NAME, HOST_NAME, SYS_EXTRACT_UTC( DBMS_HA_ALERTS_PRVT.INSTANCE_STARTUP
_TIMESTAMP_TZ(VI.STARTUP_TIME)), HOST_NAME, '==N/A==' FROM V$INSTANCE VI        
2019-09-29/21:13:49                                                             
                                                                                
select location_name, user#, user_context, context_size, presentation,  version,
 status, any_context, context_type, qosflags, payload_callback,  timeout, r.reg_
id, reg_time, ntfn_grouping_class, ntfn_grouping_value,  ntfn_grouping_type, ntf
n_grouping_start_time, ntfn_grouping_repeat_count,  state, session_key  from reg
$ r left outer join regz$ rz on r.reg_id = rz.reg_id  where subscription_name = 

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
:1 and  namespace = :2  order by location_name, user#, presentation, version    
2019-09-29/21:13:48                                                             
                                                                                
select ts#,file#,block#,cols,nvl(size$,-1),pctfree$,pctused$,initrans,maxtrans,h
ashkeys,func,extind,avgchn,nvl(degree,1),nvl(instances,1),nvl(flags,0),nvl(spare
1,0)from clu$ where obj#=:1                                                     
2019-09-29/21:13:47                                                             
                                                                                
select timestamp, flags from fixed_obj$ where obj#=:1                           

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
2019-09-29/21:13:47                                                             
                                                                                
select subscriber_id, name, address, protocol, subscriber_type,      rule_name, 
trans_name, ruleset_name, negative_ruleset_name,          creation_time, deletio
n_time,  modification_time, scn_at_remove      , scn_at_add from  AQ$_SUBSCRIBER
_TABLE where queue_name=:1                        and schema=:2 and bitand(subsc
riber_type, 2) = 2                                                              
2019-09-29/21:13:47                                                             
                                                                                

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
select o.obj#, t.flags from tab$ t, obj$ o, user$ u where  u.user# = :1 and u.us
er# = o.owner# and o.name = :2 and o.obj# = t.obj#                              
2019-09-29/21:13:47                                                             
                                                                                
select i.obj#,i.ts#,i.file#,i.block#,i.intcols,i.type#,i.flags, i.property,i.pct
free$,i.initrans,i.maxtrans,i.blevel,i.leafcnt,i.distkey, i.lblkkey,i.dblkkey,i.
clufac,i.cols,i.analyzetime,i.samplesize,i.dataobj#, nvl(i.degree,1),nvl(i.insta
nces,1),i.rowcnt,mod(i.pctthres$,256),i.indmethod#,i.trunccnt,nvl(c.unicols,0),n
vl(c.deferrable#+c.valid#,0), nvl(i.spare1,i.intcols),i.spare4,spare2,spare6, de

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
code(i.pctthres$,null,null, mod(trunc(i.pctthres$/256),256)) from ind$ i, (selec
t enabled, min(cols) unicols, min(to_number(bitand(defer,1))) deferrable#, min(t
o_number(bitand(defer,4))) valid# from cdef$ where obj#=:1 and enabled > 1 group
 by enabled) c where i.obj#=c.enabled(+) and i.bo#=:1 order by i.obj#           
2019-09-29/21:13:47                                                             
                                                                                
select CONNECTION_POOL_NAME, STATUS, MINSIZE, MAXSIZE,           INCRSIZE, SESSI
ON_CACHED_CURSORS, INACTIVITY_TIMEOUT,           MAX_THINK_TIME, MAX_USE_SESSION
, MAX_LIFETIME_SESSION,           NUM_CBROK, MAXCONN_CBROK    from cpool$ where 

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
STATUS = :1                                                                     
2019-09-29/21:13:47                                                             
                                                                                
select a.default_cpu_cost, a.default_io_cost             from association$ a    
                                  where a.obj# = :1                             
             and a.property = :2                                                
2019-09-29/21:13:46                                                             
                                                                                
select u.name, o.name, a.interface_version#, o.obj#      from association$ a, us

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
er$ u, obj$ o                     where a.obj# = :1                             
             and a.property = :2                                      and a.stat
stype# = o.obj#                                and u.user# = o.owner#           
2019-09-29/21:13:46                                                             
                                                                                
select a.default_selectivity                             from association$ a    
                                  where a.obj# = :1                             
             and a.property = :2                                                
2019-09-29/21:13:46                                                             

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
                                                                                
select file# from file$ where ts#=:1                                            
2019-09-29/21:13:46                                                             
                                                                                
select /*+ rule */ bucket, endpoint, col#, epvalue from histgrm$ where obj#=:1 a
nd intcol#=:2 and row#=:3 order by bucket                                       
2019-09-29/21:13:46                                                             
                                                                                
select /*+ rule */ bucket_cnt, row_cnt, cache_cnt, null_cnt, timestamp#, sample_

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
size, minimum, maximum, distcnt, lowval, hival, density, col#, spare1, spare2, a
vgcln from hist_head$ where obj#=:1 and intcol#=:2                              
2019-09-29/21:13:46                                                             
                                                                                
select obj# from oid$ where user#=:1 and oid$=:2                                
2019-09-29/21:13:45                                                             
                                                                                
select parttype, partcnt, partkeycols, flags, defts#, defpctfree, defpctused, de
finitrans, defmaxtrans, deftiniexts, defextsize, defminexts, defmaxexts, defextp

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
ct, deflists, defgroups, deflogging, spare1, mod(spare2, 256) subparttype, mod(t
runc(spare2/256), 256) subpartkeycols, mod(trunc(spare2/65536), 65536) defsubpar
tcnt, mod(trunc(spare2/4294967296), 256) defhscflags, mod(spare3, 256) interval_
dty, rowid, defmaxsize from partobj$ where obj# = :1                            
2019-09-29/21:13:45                                                             
                                                                                
select name,online$,contents$,undofile#,undoblock#,blocksize,dflmaxext,dflinit,d
flincr,dflextpct,dflminext, dflminlen, owner#,scnwrp,scnbas, NVL(pitrscnwrp, 0),
 NVL(pitrscnbas, 0), dflogging, bitmapped, inc#, flags, plugged, NVL(spare1,0), 

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
NVL(spare2,0), affstrength from ts$ where ts#=:1                                
2019-09-29/21:13:45                                                             
                                                                                
select 1 from sys.aq$_queue_table_affinities                                    
2019-09-29/21:13:44                                                             
                                                                                
select 1 from aq$_schedules                                                     
2019-09-29/21:13:44                                                             
                                                                                

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
select 1 from "SYS"."AQ$_ALERT_QT_L"                                            
2019-09-29/21:13:44                                                             
                                                                                
select min(next_date) from "SYS"."AQ$_ALERT_QT_T"                               
2019-09-29/21:13:44                                                             
                                                                                
select /*+ index(idl_sb4$ i_idl_sb41) +*/ piece#,length,piece from idl_sb4$ wher
e obj#=:1 and part=:2 and version=:3 order by piece#                            
2019-09-29/21:13:43                                                             

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
                                                                                
select /*+ index(idl_ub1$ i_idl_ub11) +*/ piece#,length,piece from idl_ub1$ wher
e obj#=:1 and part=:2 and version=:3 order by piece#                            
2019-09-29/21:13:43                                                             
                                                                                
select col#,intcol#,ntab# from ntab$ where obj#=:1 order by intcol# asc         
2019-09-29/21:13:43                                                             
                                                                                
select value, consumer_group from resource_group_mapping$ where attribute = :1 a

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
nd status = 'ACTIVE'                                                            
2019-09-29/21:13:43                                                             
                                                                                
select count(*) from resource_group_mapping$ where attribute = :1 and status = '
ACTIVE'                                                                         
2019-09-29/21:13:43                                                             
                                                                                
select cols,audit$,textlength,intcols,property,flags,rowid from view$ where obj#
=:1                                                                             

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
2019-09-29/21:13:43                                                             
                                                                                
select /*+ index(idl_char$ i_idl_char1) +*/ piece#,length,piece from idl_char$ w
here obj#=:1 and part=:2 and version=:3 order by piece#                         
2019-09-29/21:13:43                                                             
                                                                                
select order#,columns,types from access$ where d_obj#=:1                        
2019-09-29/21:13:43                                                             
                                                                                

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
select max(FA#) from SYS_FBA_FA                                                 
2019-09-29/21:13:43                                                             
                                                                                
select text from view$ where rowid=:1                                           
2019-09-29/21:13:43                                                             
                                                                                
select col#,intcol#,reftyp,stabid,expctoid from refcon$ where obj#=:1 order by i
ntcol# asc                                                                      
2019-09-29/21:13:43                                                             

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
                                                                                
select bo#, intcol# from icoldep$ where obj#=:1                                 
2019-09-29/21:13:43                                                             
                                                                                
select owner#,name,namespace,remoteowner,linkname,p_timestamp,p_obj#, nvl(proper
ty,0),subname,type#,d_attrs from dependency$ d, obj$ o where d_obj#=:1 and p_obj
#=obj#(+) order by order#                                                       
2019-09-29/21:13:43                                                             
                                                                                

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
select audit$,properties from type_misc$ where obj#=:1                          
2019-09-29/21:13:43                                                             
                                                                                
select audit$,options from procedure$ where obj#=:1                             
2019-09-29/21:13:43                                                             
                                                                                
select priority from resource_mapping_priority$ where attribute = :1 and status 
= 'ACTIVE'                                                                      
2019-09-29/21:13:43                                                             

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
                                                                                
select col#,intcol#,charsetid,charsetform from col$ where obj#=:1 order by intco
l# asc                                                                          
2019-09-29/21:13:43                                                             
                                                                                
select intcol#,nvl(pos#,0),col#,nvl(spare1,0) from ccol$ where con#=:1          
2019-09-29/21:13:43                                                             
                                                                                
select intcol#, toid, version#, intcols, intcol#s, flags, synobj# from subcoltyp

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
e$ where obj#=:1 order by intcol# asc                                           
2019-09-29/21:13:43                                                             
                                                                                
select intcol#,type,flags,lobcol,objcol,extracol,schemaoid,  elemnum from opqtyp
e$ where obj# = :1 order by intcol# asc                                         
2019-09-29/21:13:43                                                             
                                                                                
select col#,intcol#,toid,version#,packed,intcols,intcol#s,flags, synobj#, nvl(ty
pidcol#, 0) from coltype$ where obj#=:1 order by intcol# desc                   

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
2019-09-29/21:13:43                                                             
                                                                                
select type#,blocks,extents,minexts,maxexts,extsize,extpct,user#,iniexts,NVL(lis
ts,65535),NVL(groups,65535),cachehint,hwmincr, NVL(spare1,0),NVL(scanhint,0),NVL
(bitmapranges,0) from seg$ where ts#=:1 and file#=:2 and block#=:3              
2019-09-29/21:13:43                                                             
                                                                                
select /*+ index(idl_ub2$ i_idl_ub21) +*/ piece#,length,piece from idl_ub2$ wher
e obj#=:1 and part=:2 and version=:3 order by piece#                            

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
2019-09-29/21:13:43                                                             
                                                                                
select l.col#, l.intcol#, l.lobj#, l.ind#, l.ts#, l.file#, l.block#, l.chunk, l.
pctversion$, l.flags, l.property, l.retention, l.freepools from lob$ l where l.o
bj# = :1 order by l.intcol# asc                                                 
2019-09-29/21:13:43                                                             
                                                                                
select col#, grantee#, privilege#,max(mod(nvl(option$,0),2)) from objauth$ where
 obj#=:1 and col# is not null group by privilege#, col#, grantee# order by col#,

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
 grantee#                                                                       
2019-09-29/21:13:42                                                             
                                                                                
select pos#,intcol#,col#,spare1,bo#,spare2,spare3 from icol$ where obj#=:1      
2019-09-29/21:13:42                                                             
                                                                                
select i.obj#,i.ts#,i.file#,i.block#,i.intcols,i.type#,i.flags,i.property,i.pctf
ree$,i.initrans,i.maxtrans,i.blevel,i.leafcnt,i.distkey,i.lblkkey,i.dblkkey,i.cl
ufac,i.cols,i.analyzetime,i.samplesize,i.dataobj#,nvl(i.degree,1),nvl(i.instance

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
s,1),i.rowcnt,mod(i.pctthres$,256),i.indmethod#,i.trunccnt,nvl(c.unicols,0),nvl(
c.deferrable#+c.valid#,0),nvl(i.spare1,i.intcols),i.spare4,i.spare2,i.spare6,dec
ode(i.pctthres$,null,null,mod(trunc(i.pctthres$/256),256)),ist.cachedblk,ist.cac
hehit,ist.logicalread from ind$ i, ind_stats$ ist, (select enabled, min(cols) un
icols,min(to_number(bitand(defer,1))) deferrable#,min(to_number(bitand(defer,4))
) valid# from cdef$ where obj#=:1 and enabled > 1 group by enabled) c where i.ob
j#=c.enabled(+) and i.obj# = ist.obj#(+) and i.bo#=:1 order by i.obj#           
2019-09-29/21:13:42                                                             
                                                                                

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
select plan, group_or_subplan, is_subplan,description, mandatory,mgmt_p1, mgmt_p
2, mgmt_p3, mgmt_p4, mgmt_p5, mgmt_p6, mgmt_p7, mgmt_p8,active_sess_pool_p1, que
ueing_p1, parallel_degree_limit_p1, switch_group, switch_for_call, switch_time, 
switch_estimate,max_est_exec_time, switch_io_megabytes, switch_io_reqs, undo_poo
l, max_idle_time, max_idle_blocker_time, max_utilization_limit from resource_pla
n_directive$ where obj#=:1 and status = 'ACTIVE'                                
2019-09-29/21:13:42                                                             
                                                                                
select o.owner#,o.name,o.namespace,o.remoteowner,o.linkname,o.subname from obj$ 

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
o where o.obj#=:1                                                               
2019-09-29/21:13:42                                                             
                                                                                
select increment$,minvalue,maxvalue,cycle#,order$,cache,highwater,audit$,flags f
rom seq$ where obj#=:1                                                          
2019-09-29/21:13:42                                                             
                                                                                
select grantee#,privilege#,nvl(col#,0),max(mod(nvl(option$,0),2))from objauth$ w
here obj#=:1 group by grantee#,privilege#,nvl(col#,0) order by grantee#         

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
2019-09-29/21:13:42                                                             
                                                                                
select obj#,type#,ctime,mtime,stime, status, dataobj#, flags, oid$, spare1, spar
e2 from obj$ where owner#=:1 and name=:2 and namespace=:3 and remoteowner is nul
l and linkname is null and subname is null                                      
2019-09-29/21:13:42                                                             
                                                                                
select name,intcol#,segcol#,type#,length,nvl(precision#,0),decode(type#,2,nvl(sc
ale,-127/*MAXSB1MINAL*/),178,scale,179,scale,180,scale,181,scale,182,scale,183,s

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
cale,231,scale,0),null$,fixedstorage,nvl(deflength,0),default$,rowid,col#,proper
ty, nvl(charsetid,0),nvl(charsetform,0),spare1,spare2,nvl(spare3,0) from col$ wh
ere obj#=:1 order by intcol#                                                    
2019-09-29/21:13:42                                                             
                                                                                
select con#,type#,condlength,intcols,robj#,rcon#,match#,refact,nvl(enabled,0),ro
wid,cols,nvl(defer,0),mtime,nvl(spare1,0),spare2,spare3 from cdef$ where obj#=:1
2019-09-29/21:13:42                                                             
                                                                                

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
select con#,obj#,rcon#,enabled,nvl(defer,0),spare2,spare3 from cdef$ where robj#
=:1                                                                             
2019-09-29/21:13:42                                                             
                                                                                
select name,mandatory,mgmt_method,mast_method,pdl_method,que_method,max_iops,max
_mbps,num_plan_directives,description,sub_plan from resource_plan$ where obj#=:1
 and status = 'ACTIVE'                                                          
2019-09-29/21:13:42                                                             
                                                                                

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
select t.ts#,t.file#,t.block#,nvl(t.bobj#,0),nvl(t.tab#,0),t.intcols,nvl(t.cluco
ls,0),t.audit$,t.flags,t.pctfree$,t.pctused$,t.initrans,t.maxtrans,t.rowcnt,t.bl
kcnt,t.empcnt,t.avgspc,t.chncnt,t.avgrln,t.analyzetime,t.samplesize,t.cols,t.pro
perty,nvl(t.degree,1),nvl(t.instances,1),t.avgspc_flb,t.flbcnt,t.kernelcols,nvl(
t.trigflag, 0),nvl(t.spare1,0),nvl(t.spare2,0),t.spare4,t.spare6,ts.cachedblk,ts
.cachehit,ts.logicalread from tab$ t, tab_stats$ ts where t.obj#= :1 and t.obj# 
= ts.obj# (+)                                                                   
2019-09-29/21:13:42                                                             
                                                                                

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
select metadata from kopm$  where name='DB_FDO'                                 
2019-09-29/21:13:42                                                             
                                                                                
select user#,password,datats#,tempts#,type#,defrole,resource$, ptime,exptime, lt
ime, astatus, lcount, decode(defschclass,NULL,'DEFAULT_CONSUMER_GROUP',defschcla
ss),spare1,spare4,ext_username,spare2 from user$ where name=:1                  
2019-09-29/21:13:42                                                             
                                                                                
select streams_pool_size_for_estimate s,           streams_pool_size_factor * 10

SQL_TEXT                                                                        
--------------------------------------------------------------------------------
LAST_LOAD_TIME                                                                  
-------------------                                                             
0 f,           estd_spill_time + estd_unspill_time, 0  from v$streams_pool_advic
e                                                                               
2019-09-29/21:13:40                                                             
                                                                                
select TIME_WAITED_MICRO from V$SYSTEM_EVENT  where event = 'Shared IO Pool Memo
ry'                                                                             
2019-09-29/21:13:40                                                             
                                                                                

747 rows selected.

SQL> spool off
