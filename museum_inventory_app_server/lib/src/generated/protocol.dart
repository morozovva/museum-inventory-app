/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

library protocol; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:serverpod/serverpod.dart' as _i1;
import 'package:serverpod/protocol.dart' as _i2;
import 'act_vh_efzk.dart' as _i3;
import 'decomission_act.dart' as _i4;
import 'decomission_order.dart' as _i5;
import 'employee.dart' as _i6;
import 'entrance_book.dart' as _i7;
import 'entrance_book_record.dart' as _i8;
import 'expertise.dart' as _i9;
import 'expertise_of_item.dart' as _i10;
import 'fund.dart' as _i11;
import 'fund_collection.dart' as _i12;
import 'inventory_book.dart' as _i13;
import 'inventory_book_record.dart' as _i14;
import 'item.dart' as _i15;
import 'item_on_efzk.dart' as _i16;
import 'item_on_efzk_protocol.dart' as _i17;
import 'listening_employee_efzk.dart' as _i18;
import 'owner.dart' as _i19;
import 'owners_application.dart' as _i20;
import 'permanent_acceptance_act.dart' as _i21;
import 'position.dart' as _i22;
import 'protocol_efzk.dart' as _i23;
import 'return_act.dart' as _i24;
import 'speaking_employee_efzk.dart' as _i25;
import 'package:museum_inventory_app_server/src/generated/employee.dart'
    as _i26;
import 'package:museum_inventory_app_server/src/generated/item.dart' as _i27;
import 'package:museum_inventory_app_server/src/generated/owners_application.dart'
    as _i28;
import 'package:museum_inventory_app_server/src/generated/owner.dart' as _i29;
export 'act_vh_efzk.dart';
export 'decomission_act.dart';
export 'decomission_order.dart';
export 'employee.dart';
export 'entrance_book.dart';
export 'entrance_book_record.dart';
export 'expertise.dart';
export 'expertise_of_item.dart';
export 'fund.dart';
export 'fund_collection.dart';
export 'inventory_book.dart';
export 'inventory_book_record.dart';
export 'item.dart';
export 'item_on_efzk.dart';
export 'item_on_efzk_protocol.dart';
export 'listening_employee_efzk.dart';
export 'owner.dart';
export 'owners_application.dart';
export 'permanent_acceptance_act.dart';
export 'position.dart';
export 'protocol_efzk.dart';
export 'return_act.dart';
export 'speaking_employee_efzk.dart';

class Protocol extends _i1.SerializationManagerServer {
  Protocol._();

  factory Protocol() => _instance;

  static final Map<Type, _i1.constructor> customConstructors = {};

  static final Protocol _instance = Protocol._();

  static final List<_i2.TableDefinition> targetTableDefinitions = [
    _i2.TableDefinition(
      name: 'act_vh_efzk',
      dartName: 'ActVHEFZK',
      schema: 'public',
      module: 'museum_inventory_app',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'act_vh_efzk_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'date',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _i2.ColumnDefinition(
          name: 'note',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'employeeId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'signed',
          columnType: _i2.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'act_vh_efzk_fk_0',
          columns: ['employeeId'],
          referenceTable: 'employee',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        )
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'act_vh_efzk_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'decomission_act',
      dartName: 'DecomissionAct',
      schema: 'public',
      module: 'museum_inventory_app',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'decomission_act_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'date',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _i2.ColumnDefinition(
          name: 'basis',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'orderId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'integrity',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'employeeId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'decomission_act_fk_0',
          columns: ['orderId'],
          referenceTable: 'decomission_order',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'decomission_act_fk_1',
          columns: ['employeeId'],
          referenceTable: 'employee',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'decomission_act_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'decomission_order',
      dartName: 'DecomissionOrder',
      schema: 'public',
      module: 'museum_inventory_app',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'decomission_order_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'file',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'decomission_order_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'employee',
      dartName: 'Employee',
      schema: 'public',
      module: 'museum_inventory_app',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'employee_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'name',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'surname',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'patronymic',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'dateOfBirth',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _i2.ColumnDefinition(
          name: 'phoneNumber',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'password',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'mail',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'acceptanceDate',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _i2.ColumnDefinition(
          name: 'dismissalDate',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _i2.ColumnDefinition(
          name: 'positionId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'employee_fk_0',
          columns: ['positionId'],
          referenceTable: 'position',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        )
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'employee_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'entrance_book',
      dartName: 'EntranceBook',
      schema: 'public',
      module: 'museum_inventory_app',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'entrance_book_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'recordId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'entrance_book_fk_0',
          columns: ['recordId'],
          referenceTable: 'entrance_book_record',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        )
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'entrance_book_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'entrance_book_record',
      dartName: 'EntranceBookRecord',
      schema: 'public',
      module: 'museum_inventory_app',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'entrance_book_record_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'date',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _i2.ColumnDefinition(
          name: 'admissionWay',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'name',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'shortDescription',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'numberOfItems',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'material',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'fundCollectionId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'integrity',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'note',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'location',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'entrance_book_record_fk_0',
          columns: ['fundCollectionId'],
          referenceTable: 'fund_collection',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        )
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'entrance_book_record_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'expertise',
      dartName: 'Expertise',
      schema: 'public',
      module: 'museum_inventory_app',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'expertise_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'file',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'expertise_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'expertise_of_item',
      dartName: 'ExpertiseOfItem',
      schema: 'public',
      module: 'museum_inventory_app',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'expertise_of_item_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'itemId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'expertiseId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'expertise_of_item_fk_0',
          columns: ['itemId'],
          referenceTable: 'item',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'expertise_of_item_fk_1',
          columns: ['expertiseId'],
          referenceTable: 'expertise',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'expertise_of_item_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'fund',
      dartName: 'Fund',
      schema: 'public',
      module: 'museum_inventory_app',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'fund_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'fundCollectionId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'shortName',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'fund_fk_0',
          columns: ['fundCollectionId'],
          referenceTable: 'fund_collection',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        )
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'fund_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'fund_collection',
      dartName: 'FundCollection',
      schema: 'public',
      module: 'museum_inventory_app',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'fund_collection_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'name',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'shortName',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'fund_collection_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'inventory_book',
      dartName: 'InventoryBook',
      schema: 'public',
      module: 'museum_inventory_app',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'inventory_book_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'recordId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'inventory_book_fk_0',
          columns: ['recordId'],
          referenceTable: 'inventory_book_record',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        )
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'inventory_book_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'inventory_book_record',
      dartName: 'InventoryBookRecord',
      schema: 'public',
      module: 'museum_inventory_app',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'inventory_book_record_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'date',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _i2.ColumnDefinition(
          name: 'name',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'longDescription',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'origin',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'history',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'material',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'technique',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'size',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'weight',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'integrity',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'admissionWay',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'note',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'signed',
          columnType: _i2.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'inventory_book_record_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'item',
      dartName: 'Item',
      schema: 'public',
      module: 'museum_inventory_app',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'item_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'name',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'integrity',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'appearance',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'origin',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'ownerApplicationId',
          columnType: _i2.ColumnType.integer,
          isNullable: true,
          dartType: 'int?',
        ),
        _i2.ColumnDefinition(
          name: 'actVhEfzkId',
          columnType: _i2.ColumnType.integer,
          isNullable: true,
          dartType: 'int?',
        ),
        _i2.ColumnDefinition(
          name: 'returnActId',
          columnType: _i2.ColumnType.integer,
          isNullable: true,
          dartType: 'int?',
        ),
        _i2.ColumnDefinition(
          name: 'permanentAcceptanceActId',
          columnType: _i2.ColumnType.integer,
          isNullable: true,
          dartType: 'int?',
        ),
        _i2.ColumnDefinition(
          name: 'decomissionActId',
          columnType: _i2.ColumnType.integer,
          isNullable: true,
          dartType: 'int?',
        ),
        _i2.ColumnDefinition(
          name: 'entranceBookRecordId',
          columnType: _i2.ColumnType.integer,
          isNullable: true,
          dartType: 'int?',
        ),
        _i2.ColumnDefinition(
          name: 'inventoryBookRecordId',
          columnType: _i2.ColumnType.integer,
          isNullable: true,
          dartType: 'int?',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'item_fk_0',
          columns: ['ownerApplicationId'],
          referenceTable: 'owners_application',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'item_fk_1',
          columns: ['actVhEfzkId'],
          referenceTable: 'act_vh_efzk',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'item_fk_2',
          columns: ['returnActId'],
          referenceTable: 'return_act',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'item_fk_3',
          columns: ['permanentAcceptanceActId'],
          referenceTable: 'permanent_acceptance_act',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'item_fk_4',
          columns: ['decomissionActId'],
          referenceTable: 'decomission_act',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'item_fk_5',
          columns: ['entranceBookRecordId'],
          referenceTable: 'entrance_book_record',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'item_fk_6',
          columns: ['inventoryBookRecordId'],
          referenceTable: 'inventory_book_record',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'item_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'item_in_efzk_protocol',
      dartName: 'ItemInEfzkProtocol',
      schema: 'public',
      module: 'museum_inventory_app',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'item_in_efzk_protocol_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'itemOnEfzkId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'protocolId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'item_in_efzk_protocol_fk_0',
          columns: ['itemOnEfzkId'],
          referenceTable: 'item_on_efzk',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'item_in_efzk_protocol_fk_1',
          columns: ['protocolId'],
          referenceTable: 'protocol_efzk',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'item_in_efzk_protocol_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'item_on_efzk',
      dartName: 'ItemOnEfzk',
      schema: 'public',
      module: 'museum_inventory_app',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'item_on_efzk_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'itemId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'shortDesc',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'integrity',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'decision',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'fundCollectionId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'item_on_efzk_fk_0',
          columns: ['itemId'],
          referenceTable: 'item',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'item_on_efzk_fk_1',
          columns: ['fundCollectionId'],
          referenceTable: 'fund_collection',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'item_on_efzk_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'listening_employee_efzk',
      dartName: 'ListeningEmployeeEfzk',
      schema: 'public',
      module: 'museum_inventory_app',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault:
              'nextval(\'listening_employee_efzk_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'protocolId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'employeeId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'listening_employee_efzk_fk_0',
          columns: ['protocolId'],
          referenceTable: 'protocol_efzk',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'listening_employee_efzk_fk_1',
          columns: ['employeeId'],
          referenceTable: 'employee',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'listening_employee_efzk_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'owner',
      dartName: 'Owner',
      schema: 'public',
      module: 'museum_inventory_app',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'owner_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'fio',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'phoneNumber',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'mail',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'dateOfBirth',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _i2.ColumnDefinition(
          name: 'homeAddress',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'owner_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'owners_application',
      dartName: 'OwnersApplication',
      schema: 'public',
      module: 'museum_inventory_app',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'owners_application_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'file',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'ownerId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'owners_application_fk_0',
          columns: ['ownerId'],
          referenceTable: 'owner',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        )
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'owners_application_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'permanent_acceptance_act',
      dartName: 'PermanentAcceptanceAct',
      schema: 'public',
      module: 'museum_inventory_app',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault:
              'nextval(\'permanent_acceptance_act_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'date',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _i2.ColumnDefinition(
          name: 'acceptanceBasis',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'employeeId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'signed',
          columnType: _i2.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'permanent_acceptance_act_fk_0',
          columns: ['employeeId'],
          referenceTable: 'employee',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        )
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'permanent_acceptance_act_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'position',
      dartName: 'Position',
      schema: 'public',
      module: 'museum_inventory_app',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'position_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'name',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'position_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'protocol_efzk',
      dartName: 'ProtocolEFZK',
      schema: 'public',
      module: 'museum_inventory_app',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'protocol_efzk_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'date',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _i2.ColumnDefinition(
          name: 'discussion',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'conclusion',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'protocol_efzk_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'return_act',
      dartName: 'ReturnAct',
      schema: 'public',
      module: 'museum_inventory_app',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'return_act_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'date',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _i2.ColumnDefinition(
          name: 'returnBasis',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'employeeId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'integrity',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'return_act_fk_0',
          columns: ['employeeId'],
          referenceTable: 'employee',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        )
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'return_act_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'speaking_employee_efzk',
      dartName: 'SpeakingEmployeeEfzk',
      schema: 'public',
      module: 'museum_inventory_app',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'speaking_employee_efzk_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'employeeId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'protocolId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'speaking_employee_efzk_fk_0',
          columns: ['employeeId'],
          referenceTable: 'employee',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'speaking_employee_efzk_fk_1',
          columns: ['protocolId'],
          referenceTable: 'protocol_efzk',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'speaking_employee_efzk_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    ..._i2.Protocol.targetTableDefinitions,
  ];

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;
    if (customConstructors.containsKey(t)) {
      return customConstructors[t]!(data, this) as T;
    }
    if (t == _i3.ActVHEFZK) {
      return _i3.ActVHEFZK.fromJson(data, this) as T;
    }
    if (t == _i4.DecomissionAct) {
      return _i4.DecomissionAct.fromJson(data, this) as T;
    }
    if (t == _i5.DecomissionOrder) {
      return _i5.DecomissionOrder.fromJson(data, this) as T;
    }
    if (t == _i6.Employee) {
      return _i6.Employee.fromJson(data, this) as T;
    }
    if (t == _i7.EntranceBook) {
      return _i7.EntranceBook.fromJson(data, this) as T;
    }
    if (t == _i8.EntranceBookRecord) {
      return _i8.EntranceBookRecord.fromJson(data, this) as T;
    }
    if (t == _i9.Expertise) {
      return _i9.Expertise.fromJson(data, this) as T;
    }
    if (t == _i10.ExpertiseOfItem) {
      return _i10.ExpertiseOfItem.fromJson(data, this) as T;
    }
    if (t == _i11.Fund) {
      return _i11.Fund.fromJson(data, this) as T;
    }
    if (t == _i12.FundCollection) {
      return _i12.FundCollection.fromJson(data, this) as T;
    }
    if (t == _i13.InventoryBook) {
      return _i13.InventoryBook.fromJson(data, this) as T;
    }
    if (t == _i14.InventoryBookRecord) {
      return _i14.InventoryBookRecord.fromJson(data, this) as T;
    }
    if (t == _i15.Item) {
      return _i15.Item.fromJson(data, this) as T;
    }
    if (t == _i16.ItemOnEfzk) {
      return _i16.ItemOnEfzk.fromJson(data, this) as T;
    }
    if (t == _i17.ItemInEfzkProtocol) {
      return _i17.ItemInEfzkProtocol.fromJson(data, this) as T;
    }
    if (t == _i18.ListeningEmployeeEfzk) {
      return _i18.ListeningEmployeeEfzk.fromJson(data, this) as T;
    }
    if (t == _i19.Owner) {
      return _i19.Owner.fromJson(data, this) as T;
    }
    if (t == _i20.OwnersApplication) {
      return _i20.OwnersApplication.fromJson(data, this) as T;
    }
    if (t == _i21.PermanentAcceptanceAct) {
      return _i21.PermanentAcceptanceAct.fromJson(data, this) as T;
    }
    if (t == _i22.Position) {
      return _i22.Position.fromJson(data, this) as T;
    }
    if (t == _i23.ProtocolEFZK) {
      return _i23.ProtocolEFZK.fromJson(data, this) as T;
    }
    if (t == _i24.ReturnAct) {
      return _i24.ReturnAct.fromJson(data, this) as T;
    }
    if (t == _i25.SpeakingEmployeeEfzk) {
      return _i25.SpeakingEmployeeEfzk.fromJson(data, this) as T;
    }
    if (t == _i1.getType<_i3.ActVHEFZK?>()) {
      return (data != null ? _i3.ActVHEFZK.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i4.DecomissionAct?>()) {
      return (data != null ? _i4.DecomissionAct.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i5.DecomissionOrder?>()) {
      return (data != null ? _i5.DecomissionOrder.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i6.Employee?>()) {
      return (data != null ? _i6.Employee.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i7.EntranceBook?>()) {
      return (data != null ? _i7.EntranceBook.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i8.EntranceBookRecord?>()) {
      return (data != null ? _i8.EntranceBookRecord.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i9.Expertise?>()) {
      return (data != null ? _i9.Expertise.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i10.ExpertiseOfItem?>()) {
      return (data != null ? _i10.ExpertiseOfItem.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i11.Fund?>()) {
      return (data != null ? _i11.Fund.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i12.FundCollection?>()) {
      return (data != null ? _i12.FundCollection.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i13.InventoryBook?>()) {
      return (data != null ? _i13.InventoryBook.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i14.InventoryBookRecord?>()) {
      return (data != null
          ? _i14.InventoryBookRecord.fromJson(data, this)
          : null) as T;
    }
    if (t == _i1.getType<_i15.Item?>()) {
      return (data != null ? _i15.Item.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i16.ItemOnEfzk?>()) {
      return (data != null ? _i16.ItemOnEfzk.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i17.ItemInEfzkProtocol?>()) {
      return (data != null
          ? _i17.ItemInEfzkProtocol.fromJson(data, this)
          : null) as T;
    }
    if (t == _i1.getType<_i18.ListeningEmployeeEfzk?>()) {
      return (data != null
          ? _i18.ListeningEmployeeEfzk.fromJson(data, this)
          : null) as T;
    }
    if (t == _i1.getType<_i19.Owner?>()) {
      return (data != null ? _i19.Owner.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i20.OwnersApplication?>()) {
      return (data != null ? _i20.OwnersApplication.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i21.PermanentAcceptanceAct?>()) {
      return (data != null
          ? _i21.PermanentAcceptanceAct.fromJson(data, this)
          : null) as T;
    }
    if (t == _i1.getType<_i22.Position?>()) {
      return (data != null ? _i22.Position.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i23.ProtocolEFZK?>()) {
      return (data != null ? _i23.ProtocolEFZK.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i24.ReturnAct?>()) {
      return (data != null ? _i24.ReturnAct.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i25.SpeakingEmployeeEfzk?>()) {
      return (data != null
          ? _i25.SpeakingEmployeeEfzk.fromJson(data, this)
          : null) as T;
    }
    if (t == List<_i26.Employee>) {
      return (data as List).map((e) => deserialize<_i26.Employee>(e)).toList()
          as dynamic;
    }
    if (t == List<_i27.Item>) {
      return (data as List).map((e) => deserialize<_i27.Item>(e)).toList()
          as dynamic;
    }
    if (t == List<_i28.OwnersApplication>) {
      return (data as List)
          .map((e) => deserialize<_i28.OwnersApplication>(e))
          .toList() as dynamic;
    }
    if (t == List<_i29.Owner>) {
      return (data as List).map((e) => deserialize<_i29.Owner>(e)).toList()
          as dynamic;
    }
    try {
      return _i2.Protocol().deserialize<T>(data, t);
    } catch (_) {}
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object data) {
    if (data is _i3.ActVHEFZK) {
      return 'ActVHEFZK';
    }
    if (data is _i4.DecomissionAct) {
      return 'DecomissionAct';
    }
    if (data is _i5.DecomissionOrder) {
      return 'DecomissionOrder';
    }
    if (data is _i6.Employee) {
      return 'Employee';
    }
    if (data is _i7.EntranceBook) {
      return 'EntranceBook';
    }
    if (data is _i8.EntranceBookRecord) {
      return 'EntranceBookRecord';
    }
    if (data is _i9.Expertise) {
      return 'Expertise';
    }
    if (data is _i10.ExpertiseOfItem) {
      return 'ExpertiseOfItem';
    }
    if (data is _i11.Fund) {
      return 'Fund';
    }
    if (data is _i12.FundCollection) {
      return 'FundCollection';
    }
    if (data is _i13.InventoryBook) {
      return 'InventoryBook';
    }
    if (data is _i14.InventoryBookRecord) {
      return 'InventoryBookRecord';
    }
    if (data is _i15.Item) {
      return 'Item';
    }
    if (data is _i16.ItemOnEfzk) {
      return 'ItemOnEfzk';
    }
    if (data is _i17.ItemInEfzkProtocol) {
      return 'ItemInEfzkProtocol';
    }
    if (data is _i18.ListeningEmployeeEfzk) {
      return 'ListeningEmployeeEfzk';
    }
    if (data is _i19.Owner) {
      return 'Owner';
    }
    if (data is _i20.OwnersApplication) {
      return 'OwnersApplication';
    }
    if (data is _i21.PermanentAcceptanceAct) {
      return 'PermanentAcceptanceAct';
    }
    if (data is _i22.Position) {
      return 'Position';
    }
    if (data is _i23.ProtocolEFZK) {
      return 'ProtocolEFZK';
    }
    if (data is _i24.ReturnAct) {
      return 'ReturnAct';
    }
    if (data is _i25.SpeakingEmployeeEfzk) {
      return 'SpeakingEmployeeEfzk';
    }
    return super.getClassNameForObject(data);
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    if (data['className'] == 'ActVHEFZK') {
      return deserialize<_i3.ActVHEFZK>(data['data']);
    }
    if (data['className'] == 'DecomissionAct') {
      return deserialize<_i4.DecomissionAct>(data['data']);
    }
    if (data['className'] == 'DecomissionOrder') {
      return deserialize<_i5.DecomissionOrder>(data['data']);
    }
    if (data['className'] == 'Employee') {
      return deserialize<_i6.Employee>(data['data']);
    }
    if (data['className'] == 'EntranceBook') {
      return deserialize<_i7.EntranceBook>(data['data']);
    }
    if (data['className'] == 'EntranceBookRecord') {
      return deserialize<_i8.EntranceBookRecord>(data['data']);
    }
    if (data['className'] == 'Expertise') {
      return deserialize<_i9.Expertise>(data['data']);
    }
    if (data['className'] == 'ExpertiseOfItem') {
      return deserialize<_i10.ExpertiseOfItem>(data['data']);
    }
    if (data['className'] == 'Fund') {
      return deserialize<_i11.Fund>(data['data']);
    }
    if (data['className'] == 'FundCollection') {
      return deserialize<_i12.FundCollection>(data['data']);
    }
    if (data['className'] == 'InventoryBook') {
      return deserialize<_i13.InventoryBook>(data['data']);
    }
    if (data['className'] == 'InventoryBookRecord') {
      return deserialize<_i14.InventoryBookRecord>(data['data']);
    }
    if (data['className'] == 'Item') {
      return deserialize<_i15.Item>(data['data']);
    }
    if (data['className'] == 'ItemOnEfzk') {
      return deserialize<_i16.ItemOnEfzk>(data['data']);
    }
    if (data['className'] == 'ItemInEfzkProtocol') {
      return deserialize<_i17.ItemInEfzkProtocol>(data['data']);
    }
    if (data['className'] == 'ListeningEmployeeEfzk') {
      return deserialize<_i18.ListeningEmployeeEfzk>(data['data']);
    }
    if (data['className'] == 'Owner') {
      return deserialize<_i19.Owner>(data['data']);
    }
    if (data['className'] == 'OwnersApplication') {
      return deserialize<_i20.OwnersApplication>(data['data']);
    }
    if (data['className'] == 'PermanentAcceptanceAct') {
      return deserialize<_i21.PermanentAcceptanceAct>(data['data']);
    }
    if (data['className'] == 'Position') {
      return deserialize<_i22.Position>(data['data']);
    }
    if (data['className'] == 'ProtocolEFZK') {
      return deserialize<_i23.ProtocolEFZK>(data['data']);
    }
    if (data['className'] == 'ReturnAct') {
      return deserialize<_i24.ReturnAct>(data['data']);
    }
    if (data['className'] == 'SpeakingEmployeeEfzk') {
      return deserialize<_i25.SpeakingEmployeeEfzk>(data['data']);
    }
    return super.deserializeByClassName(data);
  }

  @override
  _i1.Table? getTableForType(Type t) {
    {
      var table = _i2.Protocol().getTableForType(t);
      if (table != null) {
        return table;
      }
    }
    switch (t) {
      case _i3.ActVHEFZK:
        return _i3.ActVHEFZK.t;
      case _i4.DecomissionAct:
        return _i4.DecomissionAct.t;
      case _i5.DecomissionOrder:
        return _i5.DecomissionOrder.t;
      case _i6.Employee:
        return _i6.Employee.t;
      case _i7.EntranceBook:
        return _i7.EntranceBook.t;
      case _i8.EntranceBookRecord:
        return _i8.EntranceBookRecord.t;
      case _i9.Expertise:
        return _i9.Expertise.t;
      case _i10.ExpertiseOfItem:
        return _i10.ExpertiseOfItem.t;
      case _i11.Fund:
        return _i11.Fund.t;
      case _i12.FundCollection:
        return _i12.FundCollection.t;
      case _i13.InventoryBook:
        return _i13.InventoryBook.t;
      case _i14.InventoryBookRecord:
        return _i14.InventoryBookRecord.t;
      case _i15.Item:
        return _i15.Item.t;
      case _i16.ItemOnEfzk:
        return _i16.ItemOnEfzk.t;
      case _i17.ItemInEfzkProtocol:
        return _i17.ItemInEfzkProtocol.t;
      case _i18.ListeningEmployeeEfzk:
        return _i18.ListeningEmployeeEfzk.t;
      case _i19.Owner:
        return _i19.Owner.t;
      case _i20.OwnersApplication:
        return _i20.OwnersApplication.t;
      case _i21.PermanentAcceptanceAct:
        return _i21.PermanentAcceptanceAct.t;
      case _i22.Position:
        return _i22.Position.t;
      case _i23.ProtocolEFZK:
        return _i23.ProtocolEFZK.t;
      case _i24.ReturnAct:
        return _i24.ReturnAct.t;
      case _i25.SpeakingEmployeeEfzk:
        return _i25.SpeakingEmployeeEfzk.t;
    }
    return null;
  }

  @override
  List<_i2.TableDefinition> getTargetTableDefinitions() =>
      targetTableDefinitions;

  @override
  String getModuleName() => 'museum_inventory_app';
}
