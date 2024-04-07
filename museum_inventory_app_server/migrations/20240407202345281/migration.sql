BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "act_vh_efzk" (
    "id" serial PRIMARY KEY,
    "date" timestamp without time zone NOT NULL,
    "note" text NOT NULL,
    "employeeId" integer NOT NULL,
    "signed" boolean NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "decomission_act" (
    "id" serial PRIMARY KEY,
    "date" timestamp without time zone NOT NULL,
    "basis" text NOT NULL,
    "orderId" integer NOT NULL,
    "integrity" text NOT NULL,
    "employeeId" integer NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "decomission_order" (
    "id" serial PRIMARY KEY,
    "file" text NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "employee" (
    "id" serial PRIMARY KEY,
    "name" text NOT NULL,
    "surname" text NOT NULL,
    "patronymic" text NOT NULL,
    "dateOfBirth" timestamp without time zone NOT NULL,
    "phoneNumber" text NOT NULL,
    "password" text NOT NULL,
    "mail" text,
    "acceptanceDate" timestamp without time zone NOT NULL,
    "dismissalDate" timestamp without time zone,
    "positionId" integer NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "entrance_book" (
    "id" serial PRIMARY KEY,
    "recordId" integer NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "entrance_book_record" (
    "id" serial PRIMARY KEY,
    "date" timestamp without time zone NOT NULL,
    "admissionWay" text NOT NULL,
    "name" text NOT NULL,
    "shortDescription" text,
    "numberOfItems" integer NOT NULL,
    "material" text NOT NULL,
    "fundCollectionId" integer NOT NULL,
    "integrity" text NOT NULL,
    "note" text,
    "location" text NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "expertise" (
    "id" serial PRIMARY KEY,
    "file" text NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "expertise_of_item" (
    "id" serial PRIMARY KEY,
    "itemId" integer NOT NULL,
    "expertiseId" integer NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "fund" (
    "id" serial PRIMARY KEY,
    "fundCollectionId" integer NOT NULL,
    "shortName" text
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "fund_collection" (
    "id" serial PRIMARY KEY,
    "name" text NOT NULL,
    "shortName" text
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "inventory_book" (
    "id" serial PRIMARY KEY,
    "recordId" integer NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "inventory_book_record" (
    "id" serial PRIMARY KEY,
    "date" timestamp without time zone NOT NULL,
    "name" text NOT NULL,
    "longDescription" text,
    "origin" text NOT NULL,
    "history" text NOT NULL,
    "material" text NOT NULL,
    "technique" text NOT NULL,
    "size" text NOT NULL,
    "weight" text NOT NULL,
    "integrity" text NOT NULL,
    "admissionWay" text NOT NULL,
    "note" text,
    "signed" boolean NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "item" (
    "id" serial PRIMARY KEY,
    "name" text NOT NULL,
    "integrity" text,
    "appearance" text,
    "origin" text,
    "ownerApplicationId" integer,
    "actVhEfzkId" integer,
    "returnActId" integer,
    "permanentAcceptanceActId" integer,
    "decomissionActId" integer,
    "entranceBookRecordId" integer,
    "inventoryBookRecordId" integer
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "item_in_efzk_protocol" (
    "id" serial PRIMARY KEY,
    "itemOnEfzkId" integer NOT NULL,
    "protocolId" integer NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "item_on_efzk" (
    "id" serial PRIMARY KEY,
    "itemId" integer NOT NULL,
    "shortDesc" text NOT NULL,
    "integrity" text NOT NULL,
    "decision" text NOT NULL,
    "fundCollectionId" integer NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "listening_employee_efzk" (
    "id" serial PRIMARY KEY,
    "protocolId" integer NOT NULL,
    "employeeId" integer NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "owner" (
    "id" serial PRIMARY KEY,
    "fio" text NOT NULL,
    "phoneNumber" text NOT NULL,
    "mail" text NOT NULL,
    "dateOfBirth" timestamp without time zone NOT NULL,
    "homeAddress" text NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "owners_application" (
    "id" serial PRIMARY KEY,
    "file" text NOT NULL,
    "ownerId" integer NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "permanent_acceptance_act" (
    "id" serial PRIMARY KEY,
    "date" timestamp without time zone NOT NULL,
    "acceptanceBasis" text NOT NULL,
    "employeeId" integer NOT NULL,
    "signed" boolean NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "position" (
    "id" serial PRIMARY KEY,
    "name" text NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "protocol_efzk" (
    "id" serial PRIMARY KEY,
    "date" timestamp without time zone NOT NULL,
    "discussion" text NOT NULL,
    "conclusion" text NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "return_act" (
    "id" serial PRIMARY KEY,
    "date" timestamp without time zone NOT NULL,
    "returnBasis" text NOT NULL,
    "employeeId" integer NOT NULL,
    "integrity" text NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "speaking_employee_efzk" (
    "id" serial PRIMARY KEY,
    "employeeId" integer NOT NULL,
    "protocolId" integer NOT NULL
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
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "decomission_act"
    ADD CONSTRAINT "decomission_act_fk_0"
    FOREIGN KEY("orderId")
    REFERENCES "decomission_order"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "decomission_act"
    ADD CONSTRAINT "decomission_act_fk_1"
    FOREIGN KEY("employeeId")
    REFERENCES "employee"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "employee"
    ADD CONSTRAINT "employee_fk_0"
    FOREIGN KEY("positionId")
    REFERENCES "position"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "entrance_book"
    ADD CONSTRAINT "entrance_book_fk_0"
    FOREIGN KEY("recordId")
    REFERENCES "entrance_book_record"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "entrance_book_record"
    ADD CONSTRAINT "entrance_book_record_fk_0"
    FOREIGN KEY("fundCollectionId")
    REFERENCES "fund_collection"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "expertise_of_item"
    ADD CONSTRAINT "expertise_of_item_fk_0"
    FOREIGN KEY("itemId")
    REFERENCES "item"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "expertise_of_item"
    ADD CONSTRAINT "expertise_of_item_fk_1"
    FOREIGN KEY("expertiseId")
    REFERENCES "expertise"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "fund"
    ADD CONSTRAINT "fund_fk_0"
    FOREIGN KEY("fundCollectionId")
    REFERENCES "fund_collection"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "inventory_book"
    ADD CONSTRAINT "inventory_book_fk_0"
    FOREIGN KEY("recordId")
    REFERENCES "inventory_book_record"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "item"
    ADD CONSTRAINT "item_fk_0"
    FOREIGN KEY("ownerApplicationId")
    REFERENCES "owners_application"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "item"
    ADD CONSTRAINT "item_fk_1"
    FOREIGN KEY("actVhEfzkId")
    REFERENCES "act_vh_efzk"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "item"
    ADD CONSTRAINT "item_fk_2"
    FOREIGN KEY("returnActId")
    REFERENCES "return_act"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "item"
    ADD CONSTRAINT "item_fk_3"
    FOREIGN KEY("permanentAcceptanceActId")
    REFERENCES "permanent_acceptance_act"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "item"
    ADD CONSTRAINT "item_fk_4"
    FOREIGN KEY("decomissionActId")
    REFERENCES "decomission_act"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "item"
    ADD CONSTRAINT "item_fk_5"
    FOREIGN KEY("entranceBookRecordId")
    REFERENCES "entrance_book_record"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "item"
    ADD CONSTRAINT "item_fk_6"
    FOREIGN KEY("inventoryBookRecordId")
    REFERENCES "inventory_book_record"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "item_in_efzk_protocol"
    ADD CONSTRAINT "item_in_efzk_protocol_fk_0"
    FOREIGN KEY("itemOnEfzkId")
    REFERENCES "item_on_efzk"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "item_in_efzk_protocol"
    ADD CONSTRAINT "item_in_efzk_protocol_fk_1"
    FOREIGN KEY("protocolId")
    REFERENCES "protocol_efzk"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "item_on_efzk"
    ADD CONSTRAINT "item_on_efzk_fk_0"
    FOREIGN KEY("itemId")
    REFERENCES "item"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "item_on_efzk"
    ADD CONSTRAINT "item_on_efzk_fk_1"
    FOREIGN KEY("fundCollectionId")
    REFERENCES "fund_collection"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "listening_employee_efzk"
    ADD CONSTRAINT "listening_employee_efzk_fk_0"
    FOREIGN KEY("protocolId")
    REFERENCES "protocol_efzk"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "listening_employee_efzk"
    ADD CONSTRAINT "listening_employee_efzk_fk_1"
    FOREIGN KEY("employeeId")
    REFERENCES "employee"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "owners_application"
    ADD CONSTRAINT "owners_application_fk_0"
    FOREIGN KEY("ownerId")
    REFERENCES "owner"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "permanent_acceptance_act"
    ADD CONSTRAINT "permanent_acceptance_act_fk_0"
    FOREIGN KEY("employeeId")
    REFERENCES "employee"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "return_act"
    ADD CONSTRAINT "return_act_fk_0"
    FOREIGN KEY("employeeId")
    REFERENCES "employee"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "speaking_employee_efzk"
    ADD CONSTRAINT "speaking_employee_efzk_fk_0"
    FOREIGN KEY("employeeId")
    REFERENCES "employee"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "speaking_employee_efzk"
    ADD CONSTRAINT "speaking_employee_efzk_fk_1"
    FOREIGN KEY("protocolId")
    REFERENCES "protocol_efzk"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;


--
-- MIGRATION VERSION FOR museum_inventory_app
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('museum_inventory_app', '20240407202345281', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240407202345281', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240115074235544', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240115074235544', "timestamp" = now();


COMMIT;
