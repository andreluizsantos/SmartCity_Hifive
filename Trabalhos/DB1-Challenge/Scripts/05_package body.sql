
CREATE OR REPLACE PACKAGE BODY PKG_HIGHFIVE IS
    
    /* tabela tbl_categoria_produto */
    
    --ok
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
    
    --ok
    PROCEDURE sp_upd_tbl_categoria_produto 
                        (v_id_categoria in INTEGER,
                         v_nm_categoria in NVARCHAR2)
     AS
     BEGIN
        
        UPDATE tbl_categoria_produto
        SET
            nm_categoria  = v_nm_categoria
        WHERE 
            id_categoria  = v_id_categoria ;
     
        COMMIT;
     
     END sp_upd_tbl_categoria_produto ;
    
    --ok             
    PROCEDURE sp_del_tbl_categoria_produto 
                        (v_id_categoria in INTEGER)
     AS
     BEGIN
     
        DELETE FROM tbl_categoria_produto WHERE id_categoria = v_id_categoria;
        COMMIT;
     
    END sp_del_tbl_categoria_produto; 
    
    --ok
    PROCEDURE sp_sel_tbl_categoria_produto 
                        (p_cursor out T_CURSOR,
                        v_id_categoria in INTEGER,
                        v_nm_categoria in NVARCHAR2)
     AS
     BEGIN

        OPEN p_cursor for
        SELECT	
            id_categoria ,
            nm_categoria
        FROM 
            tbl_categoria_produto	
        WHERE	
            (v_id_categoria  IS NULL OR id_categoria  = v_id_categoria ) AND
            (v_nm_categoria  IS NULL OR nm_categoria  = v_nm_categoria );

        COMMIT;
     
     END sp_sel_tbl_categoria_produto ;    
    
    
    /* tabela tbl_graduacao_produto */ 
    
    --ok
    PROCEDURE sp_ins_tbl_graduacao_produto 
                        (v_id_graduacao in INTEGER,
                        v_id_produto in INTEGER,
                        v_nm_usuario_ultima_alteracao in NVARCHAR2,
                        v_dt_ultima_alteracao in TIMESTAMP)
     AS
     BEGIN
     
        INSERT INTO tbl_graduacao_produto (
            id_graduacao ,
            id_produto,
            nm_usuario_ultima_alteracao,
            dt_ultima_alteracao
        ) 
        VALUES
        (
            v_id_graduacao,
            v_id_produto, 
            v_nm_usuario_ultima_alteracao,
            v_dt_ultima_alteracao
        );

        COMMIT;
     
     END;
    
    --ok
    PROCEDURE sp_del_tbl_graduacao_produto 
                        (v_id_graduacao in INTEGER,
                        v_id_produto in INTEGER)
     AS
     BEGIN
     
        DELETE FROM tbl_graduacao_produto 
        WHERE id_graduacao = v_id_graduacao
        AND  id_produto = v_id_produto;
        
        COMMIT;
     
     END;                        
    
    --ok
    PROCEDURE sp_sel_tbl_graduacao_produto 
                        (p_cursor out T_CURSOR, 
                        v_id_graduacao in INTEGER,
                        v_id_produto in INTEGER,
                        v_nm_usuario_ultima_alteracao in NVARCHAR2,
                        v_dt_ultima_alteracao in TIMESTAMP)
     AS
     BEGIN

        OPEN p_cursor for 
        SELECT	
            id_graduacao ,
            id_produto ,
            nm_usuario_ultima_alteracao ,
            dt_ultima_alteracao
        FROM 
            tbl_graduacao_produto	
        WHERE	
            (v_id_graduacao  IS NULL OR id_graduacao  = v_id_graduacao ) AND
            (v_id_produto  IS NULL OR id_produto  = v_id_produto ) AND
            (v_nm_usuario_ultima_alteracao  IS NULL OR nm_usuario_ultima_alteracao  = v_nm_usuario_ultima_alteracao ) AND
            (v_dt_ultima_alteracao  IS NULL OR dt_ultima_alteracao  = v_dt_ultima_alteracao );
     
        COMMIT;
     
     END;                        


    /* tabela tbl_preco_produto */
    
    --ok
    PROCEDURE sp_ins_tbl_preco_produto 
                            (v_id_produto in INTEGER,
                            v_id_graduacao in INTEGER,
                            v_vl_quantidade in NUMBER,
                            v_vl_produto in NUMBER,
                            v_nm_usuario_ultima_alteracao in NVARCHAR2,
                            v_dt_ultima_alteracao in TIMESTAMP)
     AS
     BEGIN
     
        INSERT INTO tbl_preco_produto (
            id_preco_produto,
            id_produto,
            id_graduacao,
            vl_quantidade,
            vl_produto,
            nm_usuario_ultima_alteracao,
            dt_ultima_alteracao
        ) 
        VALUES
        (
            tbl_preco_produto_seq.NEXTVAL,
            v_id_produto,
            v_id_graduacao,
            v_vl_quantidade,
            v_vl_produto,
            v_nm_usuario_ultima_alteracao,
            v_dt_ultima_alteracao
        );

        COMMIT;
     
     END;                            
    
    --ok
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
     
        UPDATE tbl_preco_produto
        SET
            id_produto  = v_id_produto ,
            id_graduacao  = v_id_graduacao ,
            vl_quantidade  = v_vl_quantidade ,
            vl_produto  = v_vl_produto ,
            nm_usuario_ultima_alteracao  = v_nm_usuario_ultima_alteracao ,
            dt_ultima_alteracao  = v_dt_ultima_alteracao
        WHERE 
            id_preco_produto  = v_id_preco_produto ;
     
        COMMIT;
     
     END;                            
    
    --ok
    PROCEDURE sp_del_tbl_preco_produto 
                            (v_id_preco_produto in INTEGER)
     AS
     BEGIN
     
        DELETE FROM tbl_preco_produto 
        WHERE id_preco_produto = v_id_preco_produto;
        
        COMMIT;
     
     END;                            
    
    --ok
    PROCEDURE sp_sel_tbl_preco_produto 
                            (p_cursor out T_CURSOR,
                            v_id_preco_produto in INTEGER,
                            v_id_produto in INTEGER,
                            v_id_graduacao in INTEGER,
                            v_vl_quantidade in NUMBER,
                            v_vl_produto in NUMBER,
                            v_nm_usuario_ultima_alteracao in NVARCHAR2,
                            v_dt_ultima_alteracao in TIMESTAMP)
     AS
     BEGIN
     
        OPEN p_cursor for 
        SELECT	
            id_preco_produto ,
            id_produto ,
            id_graduacao ,
            vl_quantidade ,
            vl_produto ,
            nm_usuario_ultima_alteracao ,
            dt_ultima_alteracao
        FROM 
            tbl_preco_produto	
        WHERE	
            (v_id_preco_produto  IS NULL OR id_preco_produto  = v_id_preco_produto ) AND
            (v_id_produto  IS NULL OR id_produto  = v_id_produto ) AND
            (v_id_graduacao  IS NULL OR id_graduacao  = v_id_graduacao ) AND
            (v_vl_quantidade  IS NULL OR vl_quantidade  = v_vl_quantidade ) AND
            (v_vl_produto  IS NULL OR vl_produto  = v_vl_produto ) AND
            (v_nm_usuario_ultima_alteracao  IS NULL OR nm_usuario_ultima_alteracao  = v_nm_usuario_ultima_alteracao ) AND
            (v_dt_ultima_alteracao  IS NULL OR dt_ultima_alteracao  = v_dt_ultima_alteracao );

        COMMIT;
     
     END;                            


    /* tabela tbl_produto  */
    
    --ok
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

        INSERT INTO tbl_produto 
        (
            id_produto,
            id_categoria_produto,
            id_tipo_produto,
            id_graduacao_produto,
            nm_produto,
            ds_produto,
            nm_usuario_ultima_alteracao,
            dt_ultima_alteracao
        )
        VALUES
        (
            tbl_produto_seq.NEXTVAL,
            v_id_categoria_produto,
            v_id_tipo_produto,
            v_id_graduacao_produto,
            v_nm_produto,
            v_ds_produto,
            v_nm_usuario_ultima_alteracao,
            v_dt_ultima_alteracao
        );

        COMMIT;
     
     END;                            
    
    --ok 
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

        UPDATE tbl_produto
        SET
            id_categoria_produto  = v_id_categoria_produto ,
            id_tipo_produto  = v_id_tipo_produto ,
            id_graduacao_produto  = v_id_graduacao_produto ,
            nm_produto  = v_nm_produto ,
            ds_produto  = v_ds_produto ,
            nm_usuario_ultima_alteracao  = v_nm_usuario_ultima_alteracao ,
            dt_ultima_alteracao  = v_dt_ultima_alteracao
        WHERE 
            id_produto  = v_id_produto ;

        COMMIT;
     
     END;                            
    
    --ok                     
    PROCEDURE sp_del_tbl_produto 
                            (v_id_produto IN INTEGER)
     AS
     BEGIN
        
        DELETE FROM tbl_produto 
        WHERE id_produto = v_id_produto;
        
        COMMIT;
     
     END;                            
    
    --ok                      
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

        OPEN p_cursor for SELECT	
            id_produto ,
            id_categoria_produto ,
            id_tipo_produto ,
            id_graduacao_produto ,
            nm_produto ,
            ds_produto ,
            nm_usuario_ultima_alteracao ,
            dt_ultima_alteracao
        FROM 
            tbl_produto	
        WHERE	
            (v_id_produto  IS NULL OR id_produto  = v_id_produto ) AND
            (v_id_categoria_produto  IS NULL OR id_categoria_produto  = v_id_categoria_produto ) AND
            (v_id_tipo_produto  IS NULL OR id_tipo_produto  = v_id_tipo_produto ) AND
            (v_id_graduacao_produto  IS NULL OR id_graduacao_produto  = v_id_graduacao_produto ) AND
            (v_nm_produto  IS NULL OR nm_produto  = v_nm_produto ) AND
            (v_ds_produto  IS NULL OR ds_produto  = v_ds_produto ) AND
            (v_nm_usuario_ultima_alteracao  IS NULL OR nm_usuario_ultima_alteracao  = v_nm_usuario_ultima_alteracao ) AND
            (v_dt_ultima_alteracao  IS NULL OR dt_ultima_alteracao  = v_dt_ultima_alteracao );

        COMMIT;
     
     END;                            


    /* tabela tbl_tipo_produto */
    
    --ok
    PROCEDURE sp_ins_tbl_tipo_produto 
                            (v_nm_tipo_produto in NVARCHAR2)
     AS
     BEGIN

        INSERT INTO tbl_tipo_produto 
        (
            id_tipo,
            nm_tipo_produto
        )
        VALUES
        (
            tbl_tipo_produto_seq.NEXTVAL,
            v_nm_tipo_produto
        );

        COMMIT;
     
     END;                            
    
    --ok                  
    PROCEDURE sp_upd_tbl_tipo_produto 
                            (v_id_tipo in INTEGER,
                            v_nm_tipo_produto in NVARCHAR2)
     AS
     BEGIN
        UPDATE tbl_tipo_produto
        SET
            nm_tipo_produto  = v_nm_tipo_produto
        WHERE   
            id_tipo  = v_id_tipo ;

     
        COMMIT;
     
     END;                            
    
    --ok                  
    PROCEDURE sp_del_tbl_tipo_produto 
                            (v_id_tipo IN INTEGER)
     AS
     BEGIN
        
        DELETE FROM tbl_tipo_produto 
        WHERE id_tipo = v_id_tipo;
        
        COMMIT;
     
     END;                            
    
    --ok
    PROCEDURE sp_sel_tbl_tipo_produto 
                            (p_cursor out T_CURSOR,
                            v_id_tipo in INTEGER,
                            v_nm_tipo_produto in NVARCHAR2)
     AS
     BEGIN

        OPEN p_cursor for SELECT	
            id_tipo ,
            nm_tipo_produto
        FROM 
            tbl_tipo_produto	
        WHERE	
            (v_id_tipo  IS NULL OR id_tipo  = v_id_tipo ) AND
            (v_nm_tipo_produto  IS NULL OR nm_tipo_produto  = v_nm_tipo_produto );
        
        COMMIT;
     
     END;                            
                            

    /* tbl_produto_graducao */
    
    --ok
    PROCEDURE sp_ins_tbl_produto_graduacao 
                                (v_nm_graduacao in NVARCHAR2)
     AS
     BEGIN

        INSERT INTO tbl_produto_graduacao 
        (
            id_graduacao,
            nm_graduacao
        ) 
        VALUES
        (
            tbl_produto_graduacao_seq.NEXTVAL,
            v_nm_graduacao
        );
     
        COMMIT;
     
     END;                                
    
    --ok
    PROCEDURE sp_upd_tbl_produto_graduacao 
                                (v_id_graduacao in INTEGER,
                                v_nm_graduacao in NVARCHAR2)
     AS
     BEGIN

        UPDATE tbl_produto_graduacao
        SET
            nm_graduacao  = v_nm_graduacao
        WHERE 
            id_graduacao  = v_id_graduacao ;
     
        COMMIT;
     
     END;                                
    
    --ok   
    PROCEDURE sp_del_tbl_produto_graduacao 
                                (v_id_graduacao IN INTEGER)
     AS
     BEGIN
        
        DELETE FROM tbl_produto_graduacao 
        WHERE id_graduacao = v_id_graduacao;
        
        COMMIT;
     
     END;                                
    
    --ok                      
    PROCEDURE sp_sel_tbl_produto_graduacao 
                                (p_cursor out T_CURSOR,
                                v_id_graduacao in INTEGER,
                                v_nm_graduacao in NVARCHAR2)
     AS
     BEGIN

        OPEN p_cursor for SELECT	
            id_graduacao ,
            nm_graduacao
        FROM 
            tbl_produto_graduacao	
        WHERE	
            (v_id_graduacao  IS NULL OR id_graduacao  = v_id_graduacao ) AND
            (v_nm_graduacao  IS NULL OR nm_graduacao  = v_nm_graduacao );
     
        COMMIT;
     
     END;                                


    /* tabelas de log  de auditoria */
    
    --ok
    PROCEDURE sp_sel_tbl_log_graduacao_produto 
                                (p_cursor out T_CURSOR,
                                v_nm_acao in NVARCHAR2,
                                v_id_graduacao in INTEGER,
                                v_id_produto in INTEGER,
                                v_nm_usuario in NVARCHAR2,
                                v_dt_log in TIMESTAMP)
     AS
     BEGIN

        OPEN p_cursor for 
        SELECT	
            id_log ,
            nm_acao ,
            id_graduacao ,
            id_produto ,
            nm_usuario ,
            dt_log
        FROM  
            tbl_log_graduacao_produto	
        WHERE	
            (v_nm_acao  IS NULL OR nm_acao  = v_nm_acao ) AND
            (v_id_graduacao  IS NULL OR id_graduacao  = v_id_graduacao ) AND
            (v_id_produto  IS NULL OR id_produto  = v_id_produto ) AND
            (v_nm_usuario  IS NULL OR nm_usuario  = v_nm_usuario ) AND
            (v_dt_log  IS NULL OR dt_log  = v_dt_log );

        COMMIT;
     
     END;                                
    
    --ok                          
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

        OPEN p_cursor for SELECT	
            id_log ,
            nm_acao ,
            id_produto ,
            id_graduacao ,
            vl_quantidade ,
            vl_produto ,
            nm_usuario ,
            dt_log
        FROM 
            tbl_log_preco_produto	
        WHERE	
            (v_nm_acao  IS NULL OR nm_acao  = v_nm_acao ) AND
            (v_id_produto  IS NULL OR id_produto  = v_id_produto ) AND
            (v_id_graduacao  IS NULL OR id_graduacao  = v_id_graduacao ) AND
            (v_vl_quantidade  IS NULL OR vl_quantidade  = v_vl_quantidade ) AND
            (v_vl_produto  IS NULL OR vl_produto  = v_vl_produto ) AND
            (v_nm_usuario  IS NULL OR nm_usuario  = v_nm_usuario ) AND
            (v_dt_log  IS NULL OR dt_log  = v_dt_log );

        COMMIT;
     
     END;
    
    --ok                          
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

        OPEN p_cursor for 
        SELECT	
            id_log ,
            nm_acao ,
            id_produto ,
            id_categoria_produto ,
            id_tipo_produto ,
            nm_produto ,
            ds_produto ,
            nm_usuario ,
            dt_log
        FROM tbl_log_produto	
        WHERE	
            (v_nm_acao  IS NULL OR nm_acao  = v_nm_acao ) AND
            (v_id_produto  IS NULL OR id_produto  = v_id_produto ) AND
            (v_id_categoria_produto  IS NULL OR id_categoria_produto  = v_id_categoria_produto ) AND
            (v_id_tipo_produto  IS NULL OR id_tipo_produto  = v_id_tipo_produto ) AND
            (v_nm_produto  IS NULL OR nm_produto  = v_nm_produto ) AND
            (v_ds_produto  IS NULL OR ds_produto  = v_ds_produto ) AND
            (v_nm_usuario  IS NULL OR nm_usuario  = v_nm_usuario ) AND
            (v_dt_log  IS NULL OR dt_log  = v_dt_log );

        COMMIT;
     
     END;                                


END PKG_HIGHFIVE;