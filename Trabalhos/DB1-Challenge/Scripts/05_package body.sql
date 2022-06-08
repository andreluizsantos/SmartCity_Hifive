DELETE FROM tbl_categoria_produto WHERE id_categoria = v_id_categoria);
DELETE FROM tbl_graduacao_produto WHERE id_graduacao id produto = v_id_graduacao id produto);
DELETE FROM tbl_preco_produto WHERE id_preco_produto = v_id_preco_produto);
DELETE FROM tbl_produto WHERE id_produto = v_id_produto);
DELETE FROM tbl_tipo_produto WHERE id_tipo = v_id_tipo);
DELETE FROM tbl_produto_graducao WHERE id_graduacao = v_id_graduacao);



CREATE OR REPLACE PACKAGE BODY PKG_HIGHFIVE IS
    
    /* tabela tbl_categoria_produto */
    
    PROCEDURE sp_ins_tbl_categoria_produto
                        (v_nm_categoria in NVARCHAR2)
     AS
     BEGIN
     
        INSERT INTO tbl_categoria_produto (id_categoria, nm_categoria)
        values 
            (tbl_categoria_produto_seq.NEXTVAL,
            v_nm_categoria);

        COMMIT;
     
     END sp_ins_tbl_categoria_produto;

    PROCEDURE sp_upd_tbl_categoria_produto 
                        (v_id_categoria in INTEGER,
                         v_nm_categoria in NVARCHAR2)
     AS
     BEGIN
     
        COMMIT;
     
     END sp_upd_tbl_categoria_produto ;
                         
    PROCEDURE sp_del_tbl_categoria_produto 
                        (v_id_categoria in INTEGER)
     AS
     BEGIN
     
        COMMIT;
     
    END sp_del_tbl_categoria_produto;
    
    PROCEDURE sp_sel_tbl_categoria_produto 
                        (p_cursor out T_CURSOR,
                        v_id_categoria in INTEGER,
                        v_nm_categoria in NVARCHAR2)
     AS
     BEGIN
     
        COMMIT;
     
     END sp_sel_tbl_categoria_produto ;    
    
    
    /* tabela tbl_graduacao_produto */ 
    
    PROCEDURE sp_ins_tbl_graduacao_produto 
                        (v_id_graduacao in INTEGER,
                        v_id_produto in INTEGER,
                        v_nm_usuario_ultima_alteracao in NVARCHAR2,
                        v_dt_ultima_alteracao in TIMESTAMP)
     AS
     BEGIN
     
        COMMIT;
     
     END;
    
    PROCEDURE sp_upd_tbl_graduacao_produto 
                        (v_id_graduacao in INTEGER,
                        v_id_produto in INTEGER,
                        v_nm_usuario_ultima_alteracao in NVARCHAR2,
                        v_dt_ultima_alteracao in TIMESTAMP)
     AS
     BEGIN
     
        COMMIT;
     
     END;                        
    
    PROCEDURE sp_del_tbl_graduacao_produto 
                        (v_id_graduacao in INTEGER,
                        v_id_produto in INTEGER)
     AS
     BEGIN
     
        COMMIT;
     
     END;                        
    
    PROCEDURE sp_sel_tbl_graduacao_produto 
                        (p_cursor out T_CURSOR, 
                        v_id_graduacao in INTEGER,
                        v_id_produto in INTEGER,
                        v_nm_usuario_ultima_alteracao in NVARCHAR2,
                        v_dt_ultima_alteracao in TIMESTAMP)
     AS
     BEGIN
     
        COMMIT;
     
     END;                        


    /* tabela tbl_preco_produto */
    
    PROCEDURE sp_ins_tbl_preco_produto 
                            (v_id_produto in INTEGER,
                            v_id_graduacao in INTEGER,
                            v_vl_quantidade in NUMBER,
                            v_vl_produto in NUMBER,
                            v_nm_usuario_ultima_alteracao in NVARCHAR2,
                            v_dt_ultima_alteracao in TIMESTAMP)
     AS
     BEGIN
     
        COMMIT;
     
     END;                            
    
    PROCEDURE sp_upd_tbl_preco_produto 
                            (v_id_preco_produto in INTEGER,
                            v_id_produto in INTEGER,
                            v_id_graduacao in INTEGER,
                            v_vl_quantidade in NUMBER,
                            v_vl_produto in NUMBER,
                            v_nm_usuario_ultima_alteracao in NVARCHAR2,
                            v_dt_ultima_alteracao in TIMESTAMP)
     AS
     BEGIN
     
        COMMIT;
     
     END;                            
    
    PROCEDURE sp_del_tbl_preco_produto 
                            (v_id_preco_produto in INTEGER)
     AS
     BEGIN
     
        COMMIT;
     
     END;                            
    
    PROCEDURE sp_sel_tbl_preco_produto 
                            (p_cursor out T_CURSOR,
                            v_id_produto in INTEGER,
                            v_id_graduacao in INTEGER,
                            v_vl_quantidade in NUMBER,
                            v_vl_produto in NUMBER,
                            v_nm_usuario_ultima_alteracao in NVARCHAR2,
                            v_dt_ultima_alteracao in TIMESTAMP)
     AS
     BEGIN
     
        COMMIT;
     
     END;                            


    /* tabela tbl_produto  */
    
    PROCEDURE sp_ins_tbl_produto 
                            (v_id_categoria_produto in INTEGER,
                            v_id_tipo_produto in INTEGER,
                            v_id_graduacao_produto in INTEGER,
                            v_nm_produto in VARCHAR2,
                            v_ds_produto in VARCHAR2,
                            v_nm_usuario_ultima_alteracao in NVARCHAR2,
                            v_dt_ultima_alteracao in TIMESTAMP)
     AS
     BEGIN
     
        COMMIT;
     
     END;                            
                            
    PROCEDURE sp_upd_tbl_produto 
                            (v_id_produto in INTEGER,
                            v_id_categoria_produto in INTEGER,
                            v_id_tipo_produto in INTEGER,
                            v_id_graduacao_produto in INTEGER,
                            v_nm_produto in VARCHAR2,
                            v_ds_produto in VARCHAR2,
                            v_nm_usuario_ultima_alteracao in NVARCHAR2,
                            v_dt_ultima_alteracao in TIMESTAMP)
     AS
     BEGIN
     
        COMMIT;
     
     END;                            
                            
    PROCEDURE sp_del_tbl_produto 
                            (v_id_produto IN INTEGER)
     AS
     BEGIN
     
        COMMIT;
     
     END;                            
                            
    PROCEDURE sp_sel_tbl_produto (p_cursor out T_CURSOR,
                            v_id_produto in INTEGER,
                            v_id_categoria_produto in INTEGER,
                            v_id_tipo_produto in INTEGER,
                            v_id_graduacao_produto in INTEGER,
                            v_nm_produto in VARCHAR2,
                            v_ds_produto in VARCHAR2,
                            v_nm_usuario_ultima_alteracao in NVARCHAR2,
                            v_dt_ultima_alteracao in TIMESTAMP)
     AS
     BEGIN
     
        COMMIT;
     
     END;                            


    /* tabela */
    PROCEDURE sp_ins_tbl_tipo_produto 
                            (v_nm_tipo_produto in NVARCHAR2)
     AS
     BEGIN
     
        COMMIT;
     
     END;                            
                            
    PROCEDURE sp_upd_tbl_tipo_produto 
                            (v_id_tipo in INTEGER,
                            v_nm_tipo_produto in NVARCHAR2)
     AS
     BEGIN
     
        COMMIT;
     
     END;                            
                            
    PROCEDURE sp_del_tbl_tipo_produto 
                            (v_id_tipo IN INTEGER)
     AS
     BEGIN
     
        COMMIT;
     
     END;                            
    
    PROCEDURE sp_sel_tbl_tipo_produto 
                            (p_cursor out T_CURSOR,
                            v_id_tipo in INTEGER,
                            v_nm_tipo_produto in NVARCHAR2)
     AS
     BEGIN
     
        COMMIT;
     
     END;                            
                            

    /* tbl_produto_graducao */
    
    PROCEDURE sp_ins_tbl_produto_graducao 
                                (v_nm_graduacao in NVARCHAR2)
     AS
     BEGIN
     
        COMMIT;
     
     END;                                
    
    PROCEDURE sp_upd_tbl_produto_graducao 
                                (v_id_graduacao in INTEGER,
                                v_nm_graduacao in NVARCHAR2)
     AS
     BEGIN
     
        COMMIT;
     
     END;                                
                                
    PROCEDURE sp_del_tbl_produto_graducao 
                                (v_id_graduacao IN INTEGER)
     AS
     BEGIN
     
        COMMIT;
     
     END;                                
                                
    PROCEDURE sp_sel_tbl_produto_graducao 
                                (p_cursor out T_CURSOR,
                                v_id_graduacao in INTEGER,
                                v_nm_graduacao in NVARCHAR2)
     AS
     BEGIN
     
        COMMIT;
     
     END;                                


    /* tabelas de log  de auditoria */
    
    PROCEDURE sp_sel_tbl_log_graduacao_produto 
                                (p_cursor out T_CURSOR,
                                v_nm_acao in NVARCHAR2,
                                v_id_graduacao in INTEGER,
                                v_id_produto in INTEGER,
                                v_nm_usuario in NVARCHAR2,
                                v_dt_log in TIMESTAMP)
     AS
     BEGIN
     
        COMMIT;
     
     END;                                
                                
    PROCEDURE sp_sel_tbl_log_preco_produto 
                                (p_cursor out T_CURSOR,
                                v_nm_acao in NVARCHAR2,
                                v_id_produto in INTEGER,
                                v_id_graduacao in INTEGER,
                                v_vl_quantidade in NUMBER,
                                v_vl_produto in NUMBER,
                                v_nm_usuario in NVARCHAR2,
                                v_dt_log in TIMESTAMP)
                                     AS
     BEGIN
     
        COMMIT;
     
     END;
                                
    PROCEDURE sp_sel_tbl_log_produto 
                                (p_cursor out T_CURSOR,
                                v_nm_acao in NVARCHAR2,
                                v_id_produto in INTEGER,
                                v_id_categoria_produto in INTEGER,
                                v_id_tipo_produto in INTEGER,
                                v_nm_produto in VARCHAR2,
                                v_ds_produto in NVARCHAR2,
                                v_nm_usuario in NVARCHAR2,
                                v_dt_log in TIMESTAMP)
     AS
     BEGIN
     
        COMMIT;
     
     END;                                


END PKG_HIGHFIVE;