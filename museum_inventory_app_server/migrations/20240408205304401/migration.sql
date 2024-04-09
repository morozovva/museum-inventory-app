BEGIN;

--
-- ACTION ALTER TABLE
--
ALTER TABLE "employee" ALTER COLUMN "password" DROP NOT NULL;

--
-- MIGRATION VERSION FOR museum_inventory_app
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('museum_inventory_app', '20240408205304401', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240408205304401', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240115074235544', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240115074235544', "timestamp" = now();


COMMIT;
