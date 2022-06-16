CREATE TABLESPACE highfive_db1challenge
LOGGING DATAFILE 'D:\oracle\database\highfive_db1challenge.dbf'
SIZE 100m AUTOEXTEND ON NEXT 100m EXTENT MANAGEMENT LOCAL;



alter session set "_ORACLE_SCRIPT"=true;
CREATE USER db1user
IDENTIFIED BY abcd1234
DEFAULT TABLESPACE highfive_db1challenge
QUOTA UNLIMITED ON highfive_db1challenge;



GRANT
create session,
alter session,
create table,
create procedure,
create view,
create materialized view,
create trigger,
create sequence,
create any directory,
create type,
create synonym
TO
db1user;