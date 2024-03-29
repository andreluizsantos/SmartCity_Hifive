--------------------------------------------------------
--  Arquivo criado - domingo-mar�o-13-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence SQ_TBL_CATEGORIA_OFERTA
--------------------------------------------------------

   CREATE SEQUENCE  "HT_USER"."SQ_TBL_CATEGORIA_OFERTA"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence SQ_TBL_TIPO_MOVIMENTACAO_HISTORICO
--------------------------------------------------------

   CREATE SEQUENCE  "HT_USER"."SQ_TBL_TIPO_MOVIMENTACAO_HISTORICO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence SQ_TBL_USUARIO
--------------------------------------------------------

   CREATE SEQUENCE  "HT_USER"."SQ_TBL_USUARIO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence SQ_TBL_USUARIO_COMPRA_OFERTA
--------------------------------------------------------

   CREATE SEQUENCE  "HT_USER"."SQ_TBL_USUARIO_COMPRA_OFERTA"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence SQ_TBL_USUARIO_OFERTA
--------------------------------------------------------

   CREATE SEQUENCE  "HT_USER"."SQ_TBL_USUARIO_OFERTA"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence SQ_TBL_USUARIO_OFERTA_AVALIACAO
--------------------------------------------------------

   CREATE SEQUENCE  "HT_USER"."SQ_TBL_USUARIO_OFERTA_AVALIACAO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence SQ_TBL_USUARIO_OFERTA_DISPONIBILIDADE
--------------------------------------------------------

   CREATE SEQUENCE  "HT_USER"."SQ_TBL_USUARIO_OFERTA_DISPONIBILIDADE"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence SQ_TBL_USUARIO_PONTOS_HISTORICO
--------------------------------------------------------

   CREATE SEQUENCE  "HT_USER"."SQ_TBL_USUARIO_PONTOS_HISTORICO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Table TBL_CATEGORIA_OFERTA
--------------------------------------------------------

  CREATE TABLE "HT_USER"."TBL_CATEGORIA_OFERTA" 
   (	"ID_CATEGORIAOFERTA" NUMBER(10,0), 
	"NM_CATEGORIA" VARCHAR2(180 CHAR)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "FIAP_HEALTHTRACK" ;
--------------------------------------------------------
--  DDL for Table TBL_TIPO_MOVIMENTACAO_HISTORICO
--------------------------------------------------------

  CREATE TABLE "HT_USER"."TBL_TIPO_MOVIMENTACAO_HISTORICO" 
   (	"ID_MOVIMENTACAO_TIPO" NUMBER(10,0), 
	"NM_TIPO_MOVIMENTACAO" VARCHAR2(180 CHAR)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "FIAP_HEALTHTRACK" ;
--------------------------------------------------------
--  DDL for Table TBL_USUARIO
--------------------------------------------------------

  CREATE TABLE "HT_USER"."TBL_USUARIO" 
   (	"ID_USUARIO" NUMBER(10,0), 
	"DS_BIO" VARCHAR2(300 CHAR), 
	"DH_ATUALIZACAO" TIMESTAMP (6), 
	"DH_CRIACAO" TIMESTAMP (6), 
	"DS_LOGIN" VARCHAR2(100 CHAR), 
	"NM_USUARIO" VARCHAR2(180 CHAR), 
	"DS_SENHA" VARCHAR2(50 CHAR)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "FIAP_HEALTHTRACK" ;
--------------------------------------------------------
--  DDL for Table TBL_USUARIO_COMPRA_OFERTA
--------------------------------------------------------

  CREATE TABLE "HT_USER"."TBL_USUARIO_COMPRA_OFERTA" 
   (	"ID_COMPRA" NUMBER(10,0), 
	"DH_ATUALIZACAO" TIMESTAMP (6), 
	"DH_CRIACAO" TIMESTAMP (6), 
	"ID_DISPONIBILIDADE" NUMBER(10,0), 
	"ID_USUARIO" NUMBER(10,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "FIAP_HEALTHTRACK" ;
--------------------------------------------------------
--  DDL for Table TBL_USUARIO_OFERTA
--------------------------------------------------------

  CREATE TABLE "HT_USER"."TBL_USUARIO_OFERTA" 
   (	"ID_OFERTA" NUMBER(10,0), 
	"NM_OFERTA" VARCHAR2(250 CHAR), 
	"DH_ATUALIZACAO" TIMESTAMP (6), 
	"DH_CRIACAO" TIMESTAMP (6), 
	"DS_OFERTA" VARCHAR2(800 CHAR), 
	"QT_HORAS_DURACAO" NUMBER(10,0), 
	"VL_PONTOS" FLOAT(126), 
	"ID_CATEGORIASOFERTA" NUMBER(10,0), 
	"ID_USUARIO" NUMBER(10,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "FIAP_HEALTHTRACK" ;
--------------------------------------------------------
--  DDL for Table TBL_USUARIO_OFERTA_AVALIACAO
--------------------------------------------------------

  CREATE TABLE "HT_USER"."TBL_USUARIO_OFERTA_AVALIACAO" 
   (	"ID_AVALIACAO" NUMBER(10,0), 
	"DS_AVALIACAO" VARCHAR2(800 CHAR), 
	"VL_NOTA" NUMBER(10,0), 
	"ID_USUARIO" NUMBER(10,0), 
	"ID_OFERTA" NUMBER(10,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "FIAP_HEALTHTRACK" ;
--------------------------------------------------------
--  DDL for Table TBL_USUARIO_OFERTA_DISPONIBILIDADE
--------------------------------------------------------

  CREATE TABLE "HT_USER"."TBL_USUARIO_OFERTA_DISPONIBILIDADE" 
   (	"ID_DISPONIBILIDADE" NUMBER(10,0), 
	"DH_ATUALIZACAO" TIMESTAMP (6), 
	"DH_CRIACAO" TIMESTAMP (6), 
	"DH_DISPONIBILIDADE" TIMESTAMP (6), 
	"ID_OFERTA" NUMBER(10,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "FIAP_HEALTHTRACK" ;
--------------------------------------------------------
--  DDL for Table TBL_USUARIO_PONTOS_HISTORICO
--------------------------------------------------------

  CREATE TABLE "HT_USER"."TBL_USUARIO_PONTOS_HISTORICO" 
   (	"ID_POTOS_HISTORICO" NUMBER(10,0), 
	"DH_ATUALIZACAO" TIMESTAMP (6), 
	"DH_CRIACAO" TIMESTAMP (6), 
	"DS_MOVIMENTACAO" VARCHAR2(180 CHAR), 
	"VL_PONTOS" FLOAT(126), 
	"ID_MOVIMENTACAO_TIPO" NUMBER(10,0), 
	"ID_USUARIO" NUMBER(10,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "FIAP_HEALTHTRACK" ;
--------------------------------------------------------
--  DDL for Index UK_95RSUA48Y40UMQ0SIUCE2R25I
--------------------------------------------------------

  CREATE UNIQUE INDEX "HT_USER"."UK_95RSUA48Y40UMQ0SIUCE2R25I" ON "HT_USER"."TBL_USUARIO" ("DS_LOGIN") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "FIAP_HEALTHTRACK" ;
--------------------------------------------------------
--  DDL for Index UK_KPWU30WHPDXJQV408XMA2FF9S
--------------------------------------------------------

  CREATE UNIQUE INDEX "HT_USER"."UK_KPWU30WHPDXJQV408XMA2FF9S" ON "HT_USER"."TBL_CATEGORIA_OFERTA" ("NM_CATEGORIA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "FIAP_HEALTHTRACK" ;
--------------------------------------------------------
--  Constraints for Table TBL_USUARIO_COMPRA_OFERTA
--------------------------------------------------------

  ALTER TABLE "HT_USER"."TBL_USUARIO_COMPRA_OFERTA" MODIFY ("ID_COMPRA" NOT NULL ENABLE);
  ALTER TABLE "HT_USER"."TBL_USUARIO_COMPRA_OFERTA" ADD PRIMARY KEY ("ID_COMPRA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "FIAP_HEALTHTRACK"  ENABLE;
--------------------------------------------------------
--  Constraints for Table TBL_USUARIO_OFERTA
--------------------------------------------------------

  ALTER TABLE "HT_USER"."TBL_USUARIO_OFERTA" MODIFY ("ID_OFERTA" NOT NULL ENABLE);
  ALTER TABLE "HT_USER"."TBL_USUARIO_OFERTA" MODIFY ("NM_OFERTA" NOT NULL ENABLE);
  ALTER TABLE "HT_USER"."TBL_USUARIO_OFERTA" ADD PRIMARY KEY ("ID_OFERTA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "FIAP_HEALTHTRACK"  ENABLE;
--------------------------------------------------------
--  Constraints for Table TBL_TIPO_MOVIMENTACAO_HISTORICO
--------------------------------------------------------

  ALTER TABLE "HT_USER"."TBL_TIPO_MOVIMENTACAO_HISTORICO" MODIFY ("ID_MOVIMENTACAO_TIPO" NOT NULL ENABLE);
  ALTER TABLE "HT_USER"."TBL_TIPO_MOVIMENTACAO_HISTORICO" ADD PRIMARY KEY ("ID_MOVIMENTACAO_TIPO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "FIAP_HEALTHTRACK"  ENABLE;
--------------------------------------------------------
--  Constraints for Table TBL_USUARIO_PONTOS_HISTORICO
--------------------------------------------------------

  ALTER TABLE "HT_USER"."TBL_USUARIO_PONTOS_HISTORICO" MODIFY ("ID_POTOS_HISTORICO" NOT NULL ENABLE);
  ALTER TABLE "HT_USER"."TBL_USUARIO_PONTOS_HISTORICO" ADD PRIMARY KEY ("ID_POTOS_HISTORICO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "FIAP_HEALTHTRACK"  ENABLE;
--------------------------------------------------------
--  Constraints for Table TBL_CATEGORIA_OFERTA
--------------------------------------------------------

  ALTER TABLE "HT_USER"."TBL_CATEGORIA_OFERTA" MODIFY ("ID_CATEGORIAOFERTA" NOT NULL ENABLE);
  ALTER TABLE "HT_USER"."TBL_CATEGORIA_OFERTA" MODIFY ("NM_CATEGORIA" NOT NULL ENABLE);
  ALTER TABLE "HT_USER"."TBL_CATEGORIA_OFERTA" ADD PRIMARY KEY ("ID_CATEGORIAOFERTA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "FIAP_HEALTHTRACK"  ENABLE;
  ALTER TABLE "HT_USER"."TBL_CATEGORIA_OFERTA" ADD CONSTRAINT "UK_KPWU30WHPDXJQV408XMA2FF9S" UNIQUE ("NM_CATEGORIA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "FIAP_HEALTHTRACK"  ENABLE;
--------------------------------------------------------
--  Constraints for Table TBL_USUARIO
--------------------------------------------------------

  ALTER TABLE "HT_USER"."TBL_USUARIO" MODIFY ("ID_USUARIO" NOT NULL ENABLE);
  ALTER TABLE "HT_USER"."TBL_USUARIO" MODIFY ("DS_LOGIN" NOT NULL ENABLE);
  ALTER TABLE "HT_USER"."TBL_USUARIO" MODIFY ("DS_SENHA" NOT NULL ENABLE);
  ALTER TABLE "HT_USER"."TBL_USUARIO" ADD PRIMARY KEY ("ID_USUARIO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "FIAP_HEALTHTRACK"  ENABLE;
  ALTER TABLE "HT_USER"."TBL_USUARIO" ADD CONSTRAINT "UK_95RSUA48Y40UMQ0SIUCE2R25I" UNIQUE ("DS_LOGIN")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "FIAP_HEALTHTRACK"  ENABLE;
--------------------------------------------------------
--  Constraints for Table TBL_USUARIO_OFERTA_AVALIACAO
--------------------------------------------------------

  ALTER TABLE "HT_USER"."TBL_USUARIO_OFERTA_AVALIACAO" MODIFY ("ID_AVALIACAO" NOT NULL ENABLE);
  ALTER TABLE "HT_USER"."TBL_USUARIO_OFERTA_AVALIACAO" ADD PRIMARY KEY ("ID_AVALIACAO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "FIAP_HEALTHTRACK"  ENABLE;
--------------------------------------------------------
--  Constraints for Table TBL_USUARIO_OFERTA_DISPONIBILIDADE
--------------------------------------------------------

  ALTER TABLE "HT_USER"."TBL_USUARIO_OFERTA_DISPONIBILIDADE" MODIFY ("ID_DISPONIBILIDADE" NOT NULL ENABLE);
  ALTER TABLE "HT_USER"."TBL_USUARIO_OFERTA_DISPONIBILIDADE" ADD PRIMARY KEY ("ID_DISPONIBILIDADE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "FIAP_HEALTHTRACK"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TBL_USUARIO_COMPRA_OFERTA
--------------------------------------------------------

  ALTER TABLE "HT_USER"."TBL_USUARIO_COMPRA_OFERTA" ADD CONSTRAINT "FKC4ITBEN4NH5S1J4OFR2HEKAEY" FOREIGN KEY ("ID_DISPONIBILIDADE")
	  REFERENCES "HT_USER"."TBL_USUARIO_OFERTA_DISPONIBILIDADE" ("ID_DISPONIBILIDADE") ENABLE;
  ALTER TABLE "HT_USER"."TBL_USUARIO_COMPRA_OFERTA" ADD CONSTRAINT "FKRMYHX51WRAF7AOK9IXOKQN2C" FOREIGN KEY ("ID_USUARIO")
	  REFERENCES "HT_USER"."TBL_USUARIO" ("ID_USUARIO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TBL_USUARIO_OFERTA
--------------------------------------------------------

  ALTER TABLE "HT_USER"."TBL_USUARIO_OFERTA" ADD CONSTRAINT "FKOWCO2EXOL8USUYV04EN9YDK47" FOREIGN KEY ("ID_CATEGORIASOFERTA")
	  REFERENCES "HT_USER"."TBL_CATEGORIA_OFERTA" ("ID_CATEGORIAOFERTA") ENABLE;
  ALTER TABLE "HT_USER"."TBL_USUARIO_OFERTA" ADD CONSTRAINT "FKPJ5JN63XVP04EA9EF60H8IR6D" FOREIGN KEY ("ID_USUARIO")
	  REFERENCES "HT_USER"."TBL_USUARIO" ("ID_USUARIO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TBL_USUARIO_OFERTA_AVALIACAO
--------------------------------------------------------

  ALTER TABLE "HT_USER"."TBL_USUARIO_OFERTA_AVALIACAO" ADD CONSTRAINT "FKLWQPVVWOVNP2TBM4K2OMJW49N" FOREIGN KEY ("ID_USUARIO")
	  REFERENCES "HT_USER"."TBL_USUARIO" ("ID_USUARIO") ENABLE;
  ALTER TABLE "HT_USER"."TBL_USUARIO_OFERTA_AVALIACAO" ADD CONSTRAINT "FK3BFAKY3JAY6LL1FA46EYVFPOJ" FOREIGN KEY ("ID_OFERTA")
	  REFERENCES "HT_USER"."TBL_USUARIO_OFERTA" ("ID_OFERTA") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TBL_USUARIO_OFERTA_DISPONIBILIDADE
--------------------------------------------------------

  ALTER TABLE "HT_USER"."TBL_USUARIO_OFERTA_DISPONIBILIDADE" ADD CONSTRAINT "FK8DKIIQVPIQJOLBHHBVL2L68S8" FOREIGN KEY ("ID_OFERTA")
	  REFERENCES "HT_USER"."TBL_USUARIO_OFERTA" ("ID_OFERTA") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TBL_USUARIO_PONTOS_HISTORICO
--------------------------------------------------------

  ALTER TABLE "HT_USER"."TBL_USUARIO_PONTOS_HISTORICO" ADD CONSTRAINT "FK5KOBMCK209LT94680W7UQ6OM2" FOREIGN KEY ("ID_MOVIMENTACAO_TIPO")
	  REFERENCES "HT_USER"."TBL_TIPO_MOVIMENTACAO_HISTORICO" ("ID_MOVIMENTACAO_TIPO") ENABLE;
  ALTER TABLE "HT_USER"."TBL_USUARIO_PONTOS_HISTORICO" ADD CONSTRAINT "FKEDVVBIVJCCNO2D4HF7D9QJ26W" FOREIGN KEY ("ID_USUARIO")
	  REFERENCES "HT_USER"."TBL_USUARIO" ("ID_USUARIO") ENABLE;
