BEGIN;

--
-- ACTION DROP TABLE
--
DROP TABLE "act_vh_efzk" CASCADE;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "act_vh_efzk" (
    "id" serial PRIMARY KEY,
    "date" timestamp without time zone NOT NULL,
    "basis" text NOT NULL,
    "note" text NOT NULL,
    "employeeId" integer NOT NULL,
    "signed" boolean NOT NULL
);

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "act_vh_efzk"
    ADD CONSTRAINT "act_vh_efzk_fk_0"
    FOREIGN KEY("employeeId")
    REFERENCES "employee"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;


--
-- MIGRATION VERSION FOR museum_inventory_app
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('museum_inventory_app', '20240410215428826', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240410215428826', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240115074235544', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240115074235544', "timestamp" = now();


COMMIT;
