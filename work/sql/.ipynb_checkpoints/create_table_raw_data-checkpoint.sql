DROP TABLE IF EXISTS "raw_data";
DROP SEQUENCE IF EXISTS transactions_id_seq CASCADE;
CREATE SEQUENCE transactions_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1;

CREATE TABLE "public"."raw_data"
(
    "transaction_id" integer DEFAULT nextval('transactions_id_seq')  NOT NULL,
    "ano" INT NOT NULL,
    "mes" INT NOT NULL,
    "rake_tt" DECIMAL NOT NULL,
    "tt_rake_cash_game" DECIMAL NOT NULL,
    "tt_rake_torneio" DECIMAL NOT NULL,
    "tt_jog_distintos" BIGINT NOT NULL,
    "tt_jog_cash_game" BIGINT NOT NULL,
    "tt_jog_torneio" BIGINT NOT NULL
) WITH (oids = false);
