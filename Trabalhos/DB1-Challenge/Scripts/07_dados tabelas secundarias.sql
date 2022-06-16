-- INSERIR DADOS DE CATEGORIA DE PRODUTOS
EXECUTE PKG_HIGHFIVE.sp_ins_tbl_categoria_produto('Automóvel');
EXECUTE PKG_HIGHFIVE.sp_ins_tbl_categoria_produto('Motocicleta');
EXECUTE PKG_HIGHFIVE.sp_ins_tbl_categoria_produto('Aeronáltico');
EXECUTE PKG_HIGHFIVE.sp_ins_tbl_categoria_produto('Industrial');

SELECT * FROM tbl_categoria_produto;

-- INSERIR DADOS DE TIPO DE PRODUTO
EXECUTE PKG_HIGHFIVE.sp_ins_tbl_tipo_produto('Sintético');
EXECUTE PKG_HIGHFIVE.sp_ins_tbl_tipo_produto('Mistura Sintética');
EXECUTE PKG_HIGHFIVE.sp_ins_tbl_tipo_produto('Convencional');
EXECUTE PKG_HIGHFIVE.sp_ins_tbl_tipo_produto('Mineral');

SELECT * FROM tbl_tipo_produto;


-- INSERIR DADOS DE GRADUAÇÃO DOS PRODUTOS
EXECUTE PKG_HIGHFIVE.sp_ins_tbl_produto_graduacao('0W-20DX'); 
EXECUTE PKG_HIGHFIVE.sp_ins_tbl_produto_graduacao('5w-40'); 
EXECUTE PKG_HIGHFIVE.sp_ins_tbl_produto_graduacao('10w-30'); 
EXECUTE PKG_HIGHFIVE.sp_ins_tbl_produto_graduacao('10w-40A3'); 
EXECUTE PKG_HIGHFIVE.sp_ins_tbl_produto_graduacao('5w-30C3'); 

SELECT * FROM tbl_produto_graduacao;



/*
DELETE FROM tbl_categoria_produto;
DELETE FROM tbl_tipo_produto;
DELETE FROM tbl_produto_graduacao;
COMMIT;
*/