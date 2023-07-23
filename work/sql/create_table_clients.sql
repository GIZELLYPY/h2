DROP TABLE IF EXISTS "clientes";
CREATE TABLE "public"."clientes"
(
    "id"          BIGINT NOT NULL,
    "sexo"        VARCHAR(1),                        
    "data_nascimento"  DATE,   
    "data_cadastro" TIMESTAMP NOT NULL,
    "cidade" VARCHAR(80) NOT NULL,
    "sigla"  VARCHAR(2) NOT NULL           
) WITH (oids = false);
