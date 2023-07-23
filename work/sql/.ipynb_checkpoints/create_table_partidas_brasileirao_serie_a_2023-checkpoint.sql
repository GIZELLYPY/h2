DROP TABLE IF EXISTS "create_table_partidas_brasileirao_serie_a_2023";
DROP SEQUENCE IF EXISTS transactions_id_seq CASCADE;
CREATE SEQUENCE transactions_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1;

CREATE TABLE "public"."create_table_partidas_brasileirao_serie_a_2023"
(
    "transaction_id" integer DEFAULT nextval('transactions_id_seq')  NOT NULL,
    "data_acesso" DATE NOT NULL,
    "clientes_id"  BIGINT NOT NULL,
    "buyin" FLOAT,
    "rake"  DECIMAL,
    "winning" DECIMAL
) WITH (oids = false);
