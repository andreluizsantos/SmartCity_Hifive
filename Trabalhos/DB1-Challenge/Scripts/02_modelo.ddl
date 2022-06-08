-- Gerado por Oracle SQL Developer Data Modeler 21.4.2.059.0838
--   em:        2022-06-08 20:22:58 BRT
--   site:      Oracle Database 21c
--   tipo:      Oracle Database 21c



-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE tbl_categoria_produto (
    id_categoria INTEGER NOT NULL,
    nm_categoria NVARCHAR2(80) NOT NULL
);

ALTER TABLE tbl_categoria_produto ADD CONSTRAINT tbl_categoria_produto_pk PRIMARY KEY ( id_categoria );

CREATE TABLE tbl_graduacao_produto (
    id_graduacao                INTEGER NOT NULL,
    id_produto                  INTEGER NOT NULL,
    nm_usuario_ultima_alteracao NVARCHAR2(80) NOT NULL,
    dt_ultima_alteracao         TIMESTAMP NOT NULL
);

ALTER TABLE tbl_graduacao_produto ADD CONSTRAINT tbl_graduacao_produto_pk PRIMARY KEY ( id_graduacao,
                                                                                        id_produto );

CREATE TABLE tbl_log_graduacao_produto (
    id_log       INTEGER NOT NULL,
    nm_acao      NVARCHAR2(6) NOT NULL,
    id_graduacao INTEGER,
    id_produto   INTEGER,
    nm_usuario   NVARCHAR2(80) NOT NULL,
    dt_log       TIMESTAMP NOT NULL
);

--  ERROR: Column TBL_LOG_GRADUACAO_PRODUTO.NM_ACAO check constraint name length exceeds maximum allowed length(30) 

ALTER TABLE tbl_log_graduacao_produto
    ADD CHECK ( nm_acao IN ( 'DELETE', 'INSERT', 'UPDATE' ) );

ALTER TABLE tbl_log_graduacao_produto ADD CONSTRAINT tbl_log_graduacao_produto_pk PRIMARY KEY ( id_log );

CREATE TABLE tbl_log_preco_produto (
    id_log           INTEGER NOT NULL,
    nm_acao          NVARCHAR2(6) NOT NULL,
    id_preco_produto INTEGER NOT NULL,
    id_produto       INTEGER NOT NULL,
    id_graduacao     INTEGER NOT NULL,
    vl_quantidade    NUMBER(8, 3) NOT NULL,
    vl_produto       NUMBER(10, 2) NOT NULL,
    nm_usuario       NVARCHAR2(80) NOT NULL,
    dt_log           TIMESTAMP NOT NULL
);

--  ERROR: Column TBL_LOG_PRECO_PRODUTO.NM_ACAO check constraint name length exceeds maximum allowed length(30) 

ALTER TABLE tbl_log_preco_produto
    ADD CHECK ( nm_acao IN ( 'DELETE', 'INSERT', 'UPDATE' ) );

ALTER TABLE tbl_log_preco_produto ADD CONSTRAINT tbl_log_preco_produto_pk PRIMARY KEY ( id_log );

CREATE TABLE tbl_log_produto (
    id_log               INTEGER NOT NULL,
    nm_acao              NVARCHAR2(6) NOT NULL,
    id_produto           INTEGER NOT NULL,
    id_categoria_produto INTEGER NOT NULL,
    id_tipo_produto      INTEGER NOT NULL,
    id_graduacao_produto INTEGER NOT NULL,
    nm_produto           VARCHAR2(250 CHAR) NOT NULL,
    ds_produto           NVARCHAR2(800),
    nm_usuario           NVARCHAR2(80) NOT NULL,
    dt_log               TIMESTAMP NOT NULL
);

--  ERROR: Column TBL_LOG_PRODUTO.NM_ACAO check constraint name length exceeds maximum allowed length(30) 

ALTER TABLE tbl_log_produto
    ADD CHECK ( nm_acao IN ( 'DELETE', 'INSERT', 'UPDATE' ) );

ALTER TABLE tbl_log_produto ADD CONSTRAINT tbl_log_alteracao_pk PRIMARY KEY ( id_log );

CREATE TABLE tbl_preco_produto (
    id_preco_produto            INTEGER NOT NULL,
    id_produto                  INTEGER NOT NULL,
    id_graduacao                INTEGER NOT NULL,
    vl_quantidade               NUMBER(8, 3) NOT NULL,
    vl_produto                  NUMBER(10, 2) NOT NULL,
    nm_usuario_ultima_alteracao NVARCHAR2(80) NOT NULL,
    dt_ultima_alteracao         TIMESTAMP NOT NULL
);

ALTER TABLE tbl_preco_produto ADD CONSTRAINT tbl_preco_produto_pk PRIMARY KEY ( id_preco_produto );

ALTER TABLE tbl_preco_produto
    ADD CONSTRAINT tbl_preco_produto__un UNIQUE ( id_produto,
                                                  id_graduacao,
                                                  vl_quantidade );

CREATE TABLE tbl_produto (
    id_produto                  INTEGER NOT NULL,
    id_categoria_produto        INTEGER NOT NULL,
    id_tipo_produto             INTEGER NOT NULL,
    id_graduacao_produto        INTEGER NOT NULL,
    nm_produto                  VARCHAR2(250 CHAR) NOT NULL,
    ds_produto                  VARCHAR2(800 CHAR),
    nm_usuario_ultima_alteracao NVARCHAR2(80) NOT NULL,
    dt_ultima_alteracao         TIMESTAMP NOT NULL
);

ALTER TABLE tbl_produto ADD CONSTRAINT tbl_produto_pk PRIMARY KEY ( id_produto );

CREATE TABLE tbl_produto_graduacao (
    id_graduacao INTEGER NOT NULL,
    nm_graduacao NVARCHAR2(80) NOT NULL
);

ALTER TABLE tbl_produto_graduacao ADD CONSTRAINT tbl_produto_graduacao_pk PRIMARY KEY ( id_graduacao );

CREATE TABLE tbl_tipo_produto (
    id_tipo         INTEGER NOT NULL,
    nm_tipo_produto NVARCHAR2(80) NOT NULL
);

ALTER TABLE tbl_tipo_produto ADD CONSTRAINT tbl_tipo_produto_pk PRIMARY KEY ( id_tipo );

--  ERROR: FK name length exceeds maximum allowed length(30) 
ALTER TABLE tbl_graduacao_produto
    ADD CONSTRAINT tbl_graduacao_produto_tbl_produto_fk FOREIGN KEY ( id_produto )
        REFERENCES tbl_produto ( id_produto );

--  ERROR: FK name length exceeds maximum allowed length(30) 
ALTER TABLE tbl_graduacao_produto
    ADD CONSTRAINT tbl_graduacao_produto_tbl_produto_graduacao_fk FOREIGN KEY ( id_graduacao )
        REFERENCES tbl_produto_graduacao ( id_graduacao );

--  ERROR: FK name length exceeds maximum allowed length(30) 
ALTER TABLE tbl_preco_produto
    ADD CONSTRAINT tbl_preco_produto_tbl_graduacao_produto_fk FOREIGN KEY ( id_graduacao,
                                                                            id_produto )
        REFERENCES tbl_graduacao_produto ( id_graduacao,
                                           id_produto );

--  ERROR: FK name length exceeds maximum allowed length(30) 
ALTER TABLE tbl_produto
    ADD CONSTRAINT tbl_produto_tbl_categoria_produto_fk FOREIGN KEY ( id_categoria_produto )
        REFERENCES tbl_categoria_produto ( id_categoria );

--  ERROR: FK name length exceeds maximum allowed length(30) 
ALTER TABLE tbl_produto
    ADD CONSTRAINT tbl_produto_tbl_tipo_produto_fk FOREIGN KEY ( id_tipo_produto )
        REFERENCES tbl_tipo_produto ( id_tipo );



-- Relatório do Resumo do Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                             9
-- CREATE INDEX                             0
-- ALTER TABLE                             18
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   8
-- WARNINGS                                 0
