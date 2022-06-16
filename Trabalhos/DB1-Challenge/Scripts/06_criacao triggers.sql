
CREATE OR REPLACE TRIGGER tbl_graduacao_produto_trg
  AFTER INSERT OR UPDATE OR DELETE
  ON tbl_graduacao_produto
  FOR EACH ROW

  BEGIN
    
    IF DELETING THEN
        INSERT INTO tbl_log_graduacao_produto (id_log, nm_acao, id_graduacao, id_produto, nm_usuario, dt_log)
        SELECT
            tbl_log_graduacao_produto_seq.NEXTVAL,
            'DELETE',
            :old.id_graduacao,
            :old.id_produto,
            :old.nm_usuario_ultima_alteracao,
            sysdate
        FROM DUAL;
    END IF;
    
    IF INSERTING THEN 
        INSERT INTO tbl_log_graduacao_produto (id_log, nm_acao, id_graduacao, id_produto, nm_usuario, dt_log)
        SELECT
            tbl_log_graduacao_produto_seq.NEXTVAL,
            'INSERT',
            :NEW.id_graduacao,
            :NEW.id_produto,
            :NEW.nm_usuario_ultima_alteracao,
            :NEW.dt_ultima_alteracao
        FROM DUAL;    
    END IF;
    
    IF UPDATING THEN
        INSERT INTO tbl_log_graduacao_produto (id_log, nm_acao, id_graduacao, id_produto, nm_usuario, dt_log)
        SELECT
            tbl_log_graduacao_produto_seq.NEXTVAL,
            'UPDATE',
            :NEW.id_graduacao,
            :NEW.id_produto,
            :NEW.nm_usuario_ultima_alteracao,
            :NEW.dt_ultima_alteracao
        FROM DUAL;   
    END IF;
    
  END tbl_graduacao_produto_trg;
  
/
CREATE OR REPLACE TRIGGER tbl_preco_produto_trg
  AFTER INSERT OR UPDATE OR DELETE
  ON tbl_preco_produto
  FOR EACH ROW

  BEGIN
    
    IF DELETING THEN
        INSERT INTO tbl_log_preco_produto (id_log, nm_acao, id_preco_produto, id_produto, id_graduacao, vl_quantidade, vl_produto, nm_usuario, dt_log)
        SELECT
            tbl_log_preco_produto_seq.NEXTVAL,
            'DELETE',
            :old.id_preco_produto,
            :old.id_produto,
            :old.id_graduacao,
            :old.vl_quantidade,
            :old.vl_produto,
            :old.nm_usuario_ultima_alteracao,
            sysdate
        FROM DUAL;
    END IF;
    
    IF INSERTING THEN 
        INSERT INTO tbl_log_preco_produto (id_log, nm_acao, id_preco_produto, id_produto, id_graduacao, vl_quantidade, vl_produto, nm_usuario, dt_log)
        SELECT
            tbl_log_preco_produto_seq.NEXTVAL,
            'INSERT',
            :new.id_preco_produto,
            :new.id_produto,
            :new.id_graduacao,
            :new.vl_quantidade,
            :new.vl_produto,
            :new.nm_usuario_ultima_alteracao,
            :new.dt_ultima_alteracao
        FROM DUAL;    
    END IF;
    
    IF UPDATING THEN
        INSERT INTO tbl_log_preco_produto (id_log, nm_acao, id_preco_produto, id_produto, id_graduacao, vl_quantidade, vl_produto, nm_usuario, dt_log)
        SELECT
            tbl_log_preco_produto_seq.NEXTVAL,
            'UPDATE',
            :new.id_preco_produto,
            :new.id_produto,
            :new.id_graduacao,
            :new.vl_quantidade,
            :new.vl_produto,
            :new.nm_usuario_ultima_alteracao,
            :new.dt_ultima_alteracao
        FROM DUAL;   
    END IF;
    
  END tbl_preco_produto_trg;

/  
CREATE OR REPLACE TRIGGER tbl_produto_trg
  AFTER INSERT OR UPDATE OR DELETE
  ON tbl_produto
  FOR EACH ROW

  BEGIN
    
    IF DELETING THEN
        INSERT INTO tbl_log_produto (id_log, nm_acao, id_produto, id_categoria_produto, id_tipo_produto, nm_produto, ds_produto, nm_usuario, dt_log)
        SELECT
            tbl_log_produto_seq.NEXTVAL,
            'DELETE',
            :old.id_produto,
            :old.id_categoria_produto,
            :old.id_tipo_produto,           
            :old.nm_produto,
            :old.ds_produto,
            :old.nm_usuario_ultima_alteracao,
            sysdate
        FROM DUAL;
    END IF;
    
    IF INSERTING THEN 
        INSERT INTO tbl_log_produto (id_log, nm_acao, id_produto, id_categoria_produto, id_tipo_produto, nm_produto, ds_produto, nm_usuario, dt_log)
        SELECT
            tbl_log_produto_seq.NEXTVAL,
            'INSERT',
            :new.id_produto,
            :new.id_categoria_produto,
            :new.id_tipo_produto,           
            :new.nm_produto,
            :new.ds_produto,
            :new.nm_usuario_ultima_alteracao,
            :new.dt_ultima_alteracao
        FROM DUAL;    
    END IF;
    
    IF UPDATING THEN
        INSERT INTO tbl_log_produto (id_log, nm_acao, id_produto, id_categoria_produto, id_tipo_produto, nm_produto, ds_produto, nm_usuario, dt_log)
        SELECT
            tbl_log_produto_seq.NEXTVAL,
            'UPDATE',
            :new.id_produto,
            :new.id_categoria_produto,
            :new.id_tipo_produto,           
            :new.nm_produto,
            :new.ds_produto,
            :new.nm_usuario_ultima_alteracao,
            :new.dt_ultima_alteracao
        FROM DUAL;   
    END IF;
    
  END tbl_produto_trg;  
 -- SELECT * FROM tbl_graduacao_produto
  