CREATE TABLESPACE highfive_challenge
LOGGING DATAFILE 'C:\app\lpess\product\21c\oradata\XE\highfive_challenge.dbf'
SIZE 100m AUTOEXTEND ON NEXT 100m EXTENT MANAGEMENT LOCAL;



alter session set "_ORACLE_SCRIPT"=true;
CREATE USER highfive_user
IDENTIFIED BY abcd1234
DEFAULT TABLESPACE highfive_challenge
QUOTA UNLIMITED ON highfive_challenge;



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
highfive_user;