CREATE TABLESPACE Fiap_DB1
LOGGING DATAFILE '\home\ORACLE\Fiap_DB1.dbf'
SIZE 100m AUTOEXTEND ON NEXT 100m EXTENT MANAGEMENT LOCAL;

alter session set "_ORACLE_SCRIPT"=true;
CREATE USER ht_db1_user
IDENTIFIED BY healthtrack123
DEFAULT TABLESPACE Fiap_DB1
QUOTA UNLIMITED ON Fiap_DB1;

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
ht_db1_user;