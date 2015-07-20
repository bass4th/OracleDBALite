create table tmp_top_sqlstats(
dbid number,
dbname varchar2(128),
snap_id number,
inst_id number,
sql_id varchar2(64),
sql_plan_hash_value number,
time_waited number,
avg_time_waited number,
max_time_waited number,
count_sql number,
parse_calls number,
disk_reads number,
DIRECT_WRITES number,
buffer_gets number,
rows_processed number,
fetches number,
executions number,
loads number,
invalidations number,
px_servers_executions number,
cpu_time number,
elapsed_time number,
application_wait_time number,
concurrency_wait_time number,
cluster_wait_time number,
user_io_wait_time number,
plsql_exec_time number,
java_exec_time number,
sorts number,
sharable_mem number,
io_interconnect_bytes number,
physical_read_requests number,
physical_read_bytes number,
physical_write_requests number,
physical_write_bytes number
);

CREATE GLOBAL TEMPORARY TABLE sch_spl.tmp_lock_info
(
 INSTID                                                                 NUMBER,
 SID                                                                    NUMBER,
 SIDSERIAL#                                                             VARCHAR2(41),
 BLKINST                                                                NUMBER,
 BLKSES                                                                 NUMBER,
 EVENT                                                                  VARCHAR2(64),
 WAITCLASS                                                              VARCHAR2(64),
 SECINWAIT                                                              NUMBER,
 INSTSID                                                                VARCHAR2(81),
 BLOCKINSTSID                                                           VARCHAR2(81),
 OBJNAME                                                                VARCHAR2(128),
 OBJOWNER                                                               VARCHAR2(30),
 SQLID                                                                  VARCHAR2(13),
 PREVSQLID                                                              VARCHAR2(13),
 SQLEXECSTART                                                           DATE,
 SQLTEXT                                                                VARCHAR2(1000),
 MACHINE                                                                VARCHAR2(64),
 PROGRAM                                                                VARCHAR2(48),
 MODULE                                                                 VARCHAR2(64),
 CLIENTINFO                                                             VARCHAR2(64),
 LOGONTIME                                                              DATE,
 USERNAME                                                               VARCHAR2(30),
 OSUSER                                                                 VARCHAR2(30),
 ROWWAITOBJ                                                             NUMBER,
 ROWWAITFILE                                                            NUMBER,
 ROWWAITBLOCK                                                           NUMBER,
 ROWWAITROW                                                             NUMBER,
 SQLTOTEXECUTIONS                                                       NUMBER,
 SQLTOTELAPSEDTIME                                                      NUMBER,
 SQLVERSIONCOUNT                                                        NUMBER,
 SQLFIRSTLOADTIME                                                       VARCHAR2(57),
 SQLPLANHASH                                                            NUMBER,
 SQLPLANBASELINE                                                        VARCHAR2(30)
)
ON COMMIT DELETE ROWS;
