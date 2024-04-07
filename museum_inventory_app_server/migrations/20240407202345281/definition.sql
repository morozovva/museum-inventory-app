BEGIN;

--
-- Class ActVHEFZK as table act_vh_efzk
--
CREATE TABLE "act_vh_efzk" (
    "id" serial PRIMARY KEY,
    "date" timestamp without time zone NOT NULL,
    "note" text NOT NULL,
    "employeeId" integer NOT NULL,
    "signed" boolean NOT NULL
);

--
-- Class DecomissionAct as table decomission_act
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
-- Class DecomissionOrder as table decomission_order
--
CREATE TABLE "decomission_order" (
    "id" serial PRIMARY KEY,
    "file" text NOT NULL
);

--
-- Class Employee as table employee
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
-- Class EntranceBook as table entrance_book
--
CREATE TABLE "entrance_book" (
    "id" serial PRIMARY KEY,
    "recordId" integer NOT NULL
);

--
-- Class EntranceBookRecord as table entrance_book_record
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
-- Class Expertise as table expertise
--
CREATE TABLE "expertise" (
    "id" serial PRIMARY KEY,
    "file" text NOT NULL
);

--
-- Class ExpertiseOfItem as table expertise_of_item
--
CREATE TABLE "expertise_of_item" (
    "id" serial PRIMARY KEY,
    "itemId" integer NOT NULL,
    "expertiseId" integer NOT NULL
);

--
-- Class Fund as table fund
--
CREATE TABLE "fund" (
    "id" serial PRIMARY KEY,
    "fundCollectionId" integer NOT NULL,
    "shortName" text
);

--
-- Class FundCollection as table fund_collection
--
CREATE TABLE "fund_collection" (
    "id" serial PRIMARY KEY,
    "name" text NOT NULL,
    "shortName" text
);

--
-- Class InventoryBook as table inventory_book
--
CREATE TABLE "inventory_book" (
    "id" serial PRIMARY KEY,
    "recordId" integer NOT NULL
);

--
-- Class InventoryBookRecord as table inventory_book_record
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
-- Class Item as table item
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
-- Class ItemInEfzkProtocol as table item_in_efzk_protocol
--
CREATE TABLE "item_in_efzk_protocol" (
    "id" serial PRIMARY KEY,
    "itemOnEfzkId" integer NOT NULL,
    "protocolId" integer NOT NULL
);

--
-- Class ItemOnEfzk as table item_on_efzk
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
-- Class ListeningEmployeeEfzk as table listening_employee_efzk
--
CREATE TABLE "listening_employee_efzk" (
    "id" serial PRIMARY KEY,
    "protocolId" integer NOT NULL,
    "employeeId" integer NOT NULL
);

--
-- Class Owner as table owner
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
-- Class OwnersApplication as table owners_application
--
CREATE TABLE "owners_application" (
    "id" serial PRIMARY KEY,
    "file" text NOT NULL,
    "ownerId" integer NOT NULL
);

--
-- Class PermanentAcceptanceAct as table permanent_acceptance_act
--
CREATE TABLE "permanent_acceptance_act" (
    "id" serial PRIMARY KEY,
    "date" timestamp without time zone NOT NULL,
    "acceptanceBasis" text NOT NULL,
    "employeeId" integer NOT NULL,
    "signed" boolean NOT NULL
);

--
-- Class Position as table position
--
CREATE TABLE "position" (
    "id" serial PRIMARY KEY,
    "name" text NOT NULL
);

--
-- Class ProtocolEFZK as table protocol_efzk
--
CREATE TABLE "protocol_efzk" (
    "id" serial PRIMARY KEY,
    "date" timestamp without time zone NOT NULL,
    "discussion" text NOT NULL,
    "conclusion" text NOT NULL
);

--
-- Class ReturnAct as table return_act
--
CREATE TABLE "return_act" (
    "id" serial PRIMARY KEY,
    "date" timestamp without time zone NOT NULL,
    "returnBasis" text NOT NULL,
    "employeeId" integer NOT NULL,
    "integrity" text NOT NULL
);

--
-- Class SpeakingEmployeeEfzk as table speaking_employee_efzk
--
CREATE TABLE "speaking_employee_efzk" (
    "id" serial PRIMARY KEY,
    "employeeId" integer NOT NULL,
    "protocolId" integer NOT NULL
);

--
-- Class AuthKey as table serverpod_auth_key
--
CREATE TABLE "serverpod_auth_key" (
    "id" serial PRIMARY KEY,
    "userId" integer NOT NULL,
    "hash" text NOT NULL,
    "scopeNames" json NOT NULL,
    "method" text NOT NULL
);

-- Indexes
CREATE INDEX "serverpod_auth_key_userId_idx" ON "serverpod_auth_key" USING btree ("userId");

--
-- Class CloudStorageEntry as table serverpod_cloud_storage
--
CREATE TABLE "serverpod_cloud_storage" (
    "id" serial PRIMARY KEY,
    "storageId" text NOT NULL,
    "path" text NOT NULL,
    "addedTime" timestamp without time zone NOT NULL,
    "expiration" timestamp without time zone,
    "byteData" bytea NOT NULL,
    "verified" boolean NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_cloud_storage_path_idx" ON "serverpod_cloud_storage" USING btree ("storageId", "path");
CREATE INDEX "serverpod_cloud_storage_expiration" ON "serverpod_cloud_storage" USING btree ("expiration");

--
-- Class CloudStorageDirectUploadEntry as table serverpod_cloud_storage_direct_upload
--
CREATE TABLE "serverpod_cloud_storage_direct_upload" (
    "id" serial PRIMARY KEY,
    "storageId" text NOT NULL,
    "path" text NOT NULL,
    "expiration" timestamp without time zone NOT NULL,
    "authKey" text NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_cloud_storage_direct_upload_storage_path" ON "serverpod_cloud_storage_direct_upload" USING btree ("storageId", "path");

--
-- Class FutureCallEntry as table serverpod_future_call
--
CREATE TABLE "serverpod_future_call" (
    "id" serial PRIMARY KEY,
    "name" text NOT NULL,
    "time" timestamp without time zone NOT NULL,
    "serializedObject" text,
    "serverId" text NOT NULL,
    "identifier" text
);

-- Indexes
CREATE INDEX "serverpod_future_call_time_idx" ON "serverpod_future_call" USING btree ("time");
CREATE INDEX "serverpod_future_call_serverId_idx" ON "serverpod_future_call" USING btree ("serverId");
CREATE INDEX "serverpod_future_call_identifier_idx" ON "serverpod_future_call" USING btree ("identifier");

--
-- Class ServerHealthConnectionInfo as table serverpod_health_connection_info
--
CREATE TABLE "serverpod_health_connection_info" (
    "id" serial PRIMARY KEY,
    "serverId" text NOT NULL,
    "timestamp" timestamp without time zone NOT NULL,
    "active" integer NOT NULL,
    "closing" integer NOT NULL,
    "idle" integer NOT NULL,
    "granularity" integer NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_health_connection_info_timestamp_idx" ON "serverpod_health_connection_info" USING btree ("timestamp", "serverId", "granularity");

--
-- Class ServerHealthMetric as table serverpod_health_metric
--
CREATE TABLE "serverpod_health_metric" (
    "id" serial PRIMARY KEY,
    "name" text NOT NULL,
    "serverId" text NOT NULL,
    "timestamp" timestamp without time zone NOT NULL,
    "isHealthy" boolean NOT NULL,
    "value" double precision NOT NULL,
    "granularity" integer NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_health_metric_timestamp_idx" ON "serverpod_health_metric" USING btree ("timestamp", "serverId", "name", "granularity");

--
-- Class LogEntry as table serverpod_log
--
CREATE TABLE "serverpod_log" (
    "id" serial PRIMARY KEY,
    "sessionLogId" integer NOT NULL,
    "messageId" integer,
    "reference" text,
    "serverId" text NOT NULL,
    "time" timestamp without time zone NOT NULL,
    "logLevel" integer NOT NULL,
    "message" text NOT NULL,
    "error" text,
    "stackTrace" text,
    "order" integer NOT NULL
);

-- Indexes
CREATE INDEX "serverpod_log_sessionLogId_idx" ON "serverpod_log" USING btree ("sessionLogId");

--
-- Class MessageLogEntry as table serverpod_message_log
--
CREATE TABLE "serverpod_message_log" (
    "id" serial PRIMARY KEY,
    "sessionLogId" integer NOT NULL,
    "serverId" text NOT NULL,
    "messageId" integer NOT NULL,
    "endpoint" text NOT NULL,
    "messageName" text NOT NULL,
    "duration" double precision NOT NULL,
    "error" text,
    "stackTrace" text,
    "slow" boolean NOT NULL,
    "order" integer NOT NULL
);

--
-- Class MethodInfo as table serverpod_method
--
CREATE TABLE "serverpod_method" (
    "id" serial PRIMARY KEY,
    "endpoint" text NOT NULL,
    "method" text NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_method_endpoint_method_idx" ON "serverpod_method" USING btree ("endpoint", "method");

--
-- Class DatabaseMigrationVersion as table serverpod_migrations
--
CREATE TABLE "serverpod_migrations" (
    "id" serial PRIMARY KEY,
    "module" text NOT NULL,
    "version" text NOT NULL,
    "timestamp" timestamp without time zone
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_migrations_ids" ON "serverpod_migrations" USING btree ("module");

--
-- Class QueryLogEntry as table serverpod_query_log
--
CREATE TABLE "serverpod_query_log" (
    "id" serial PRIMARY KEY,
    "serverId" text NOT NULL,
    "sessionLogId" integer NOT NULL,
    "messageId" integer,
    "query" text NOT NULL,
    "duration" double precision NOT NULL,
    "numRows" integer,
    "error" text,
    "stackTrace" text,
    "slow" boolean NOT NULL,
    "order" integer NOT NULL
);

-- Indexes
CREATE INDEX "serverpod_query_log_sessionLogId_idx" ON "serverpod_query_log" USING btree ("sessionLogId");

--
-- Class ReadWriteTestEntry as table serverpod_readwrite_test
--
CREATE TABLE "serverpod_readwrite_test" (
    "id" serial PRIMARY KEY,
    "number" integer NOT NULL
);

--
-- Class RuntimeSettings as table serverpod_runtime_settings
--
CREATE TABLE "serverpod_runtime_settings" (
    "id" serial PRIMARY KEY,
    "logSettings" json NOT NULL,
    "logSettingsOverrides" json NOT NULL,
    "logServiceCalls" boolean NOT NULL,
    "logMalformedCalls" boolean NOT NULL
);

--
-- Class SessionLogEntry as table serverpod_session_log
--
CREATE TABLE "serverpod_session_log" (
    "id" serial PRIMARY KEY,
    "serverId" text NOT NULL,
    "time" timestamp without time zone NOT NULL,
    "module" text,
    "endpoint" text,
    "method" text,
    "duration" double precision,
    "numQueries" integer,
    "slow" boolean,
    "error" text,
    "stackTrace" text,
    "authenticatedUserId" integer,
    "isOpen" boolean,
    "touched" timestamp without time zone NOT NULL
);

-- Indexes
CREATE INDEX "serverpod_session_log_serverid_idx" ON "serverpod_session_log" USING btree ("serverId");
CREATE INDEX "serverpod_session_log_touched_idx" ON "serverpod_session_log" USING btree ("touched");
CREATE INDEX "serverpod_session_log_isopen_idx" ON "serverpod_session_log" USING btree ("isOpen");

--
-- Foreign relations for "act_vh_efzk" table
--
ALTER TABLE ONLY "act_vh_efzk"
    ADD CONSTRAINT "act_vh_efzk_fk_0"
    FOREIGN KEY("employeeId")
    REFERENCES "employee"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- Foreign relations for "decomission_act" table
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
-- Foreign relations for "employee" table
--
ALTER TABLE ONLY "employee"
    ADD CONSTRAINT "employee_fk_0"
    FOREIGN KEY("positionId")
    REFERENCES "position"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- Foreign relations for "entrance_book" table
--
ALTER TABLE ONLY "entrance_book"
    ADD CONSTRAINT "entrance_book_fk_0"
    FOREIGN KEY("recordId")
    REFERENCES "entrance_book_record"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- Foreign relations for "entrance_book_record" table
--
ALTER TABLE ONLY "entrance_book_record"
    ADD CONSTRAINT "entrance_book_record_fk_0"
    FOREIGN KEY("fundCollectionId")
    REFERENCES "fund_collection"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- Foreign relations for "expertise_of_item" table
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
-- Foreign relations for "fund" table
--
ALTER TABLE ONLY "fund"
    ADD CONSTRAINT "fund_fk_0"
    FOREIGN KEY("fundCollectionId")
    REFERENCES "fund_collection"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- Foreign relations for "inventory_book" table
--
ALTER TABLE ONLY "inventory_book"
    ADD CONSTRAINT "inventory_book_fk_0"
    FOREIGN KEY("recordId")
    REFERENCES "inventory_book_record"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- Foreign relations for "item" table
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
-- Foreign relations for "item_in_efzk_protocol" table
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
-- Foreign relations for "item_on_efzk" table
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
-- Foreign relations for "listening_employee_efzk" table
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
-- Foreign relations for "owners_application" table
--
ALTER TABLE ONLY "owners_application"
    ADD CONSTRAINT "owners_application_fk_0"
    FOREIGN KEY("ownerId")
    REFERENCES "owner"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- Foreign relations for "permanent_acceptance_act" table
--
ALTER TABLE ONLY "permanent_acceptance_act"
    ADD CONSTRAINT "permanent_acceptance_act_fk_0"
    FOREIGN KEY("employeeId")
    REFERENCES "employee"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- Foreign relations for "return_act" table
--
ALTER TABLE ONLY "return_act"
    ADD CONSTRAINT "return_act_fk_0"
    FOREIGN KEY("employeeId")
    REFERENCES "employee"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- Foreign relations for "speaking_employee_efzk" table
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
-- Foreign relations for "serverpod_log" table
--
ALTER TABLE ONLY "serverpod_log"
    ADD CONSTRAINT "serverpod_log_fk_0"
    FOREIGN KEY("sessionLogId")
    REFERENCES "serverpod_session_log"("id")
    ON DELETE CASCADE
    ON UPDATE NO ACTION;

--
-- Foreign relations for "serverpod_message_log" table
--
ALTER TABLE ONLY "serverpod_message_log"
    ADD CONSTRAINT "serverpod_message_log_fk_0"
    FOREIGN KEY("sessionLogId")
    REFERENCES "serverpod_session_log"("id")
    ON DELETE CASCADE
    ON UPDATE NO ACTION;

--
-- Foreign relations for "serverpod_query_log" table
--
ALTER TABLE ONLY "serverpod_query_log"
    ADD CONSTRAINT "serverpod_query_log_fk_0"
    FOREIGN KEY("sessionLogId")
    REFERENCES "serverpod_session_log"("id")
    ON DELETE CASCADE
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
