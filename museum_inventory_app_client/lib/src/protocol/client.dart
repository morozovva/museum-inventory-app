/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'dart:async' as _i2;
import 'package:museum_inventory_app_client/src/protocol/act_vh_efzk.dart'
    as _i3;
import 'package:museum_inventory_app_client/src/protocol/employee.dart' as _i4;
import 'dart:typed_data' as _i5;
import 'package:museum_inventory_app_client/src/protocol/item.dart' as _i6;
import 'package:museum_inventory_app_client/src/protocol/owners_application.dart'
    as _i7;
import 'package:museum_inventory_app_client/src/protocol/owner.dart' as _i8;
import 'protocol.dart' as _i9;

/// {@category Endpoint}
class EndpointActVhEfzk extends _i1.EndpointRef {
  EndpointActVhEfzk(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'actVhEfzk';

  _i2.Future<List<_i3.ActVHEFZK>> getAllActVhEfzks() =>
      caller.callServerEndpoint<List<_i3.ActVHEFZK>>(
        'actVhEfzk',
        'getAllActVhEfzks',
        {},
      );

  _i2.Future<_i3.ActVHEFZK?> getActVhEfzk(int id) =>
      caller.callServerEndpoint<_i3.ActVHEFZK?>(
        'actVhEfzk',
        'getActVhEfzk',
        {'id': id},
      );

  _i2.Future<void> createActVhEfzk(_i3.ActVHEFZK actVhEfzk) =>
      caller.callServerEndpoint<void>(
        'actVhEfzk',
        'createActVhEfzk',
        {'actVhEfzk': actVhEfzk},
      );

  _i2.Future<void> updateActVhEfzk(_i3.ActVHEFZK actVhEfzk) =>
      caller.callServerEndpoint<void>(
        'actVhEfzk',
        'updateActVhEfzk',
        {'actVhEfzk': actVhEfzk},
      );

  _i2.Future<void> deleteActVhEfzk(int id) => caller.callServerEndpoint<void>(
        'actVhEfzk',
        'deleteActVhEfzk',
        {'id': id},
      );
}

/// {@category Endpoint}
class EndpointEmployee extends _i1.EndpointRef {
  EndpointEmployee(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'employee';

  _i2.Future<List<_i4.Employee>> getAllEmployees() =>
      caller.callServerEndpoint<List<_i4.Employee>>(
        'employee',
        'getAllEmployees',
        {},
      );

  _i2.Future<List<_i4.Employee>> getWorkingEmployees() =>
      caller.callServerEndpoint<List<_i4.Employee>>(
        'employee',
        'getWorkingEmployees',
        {},
      );

  _i2.Future<_i4.Employee?> getEmployee(int id) =>
      caller.callServerEndpoint<_i4.Employee?>(
        'employee',
        'getEmployee',
        {'id': id},
      );

  _i2.Future<void> createEmployee(_i4.Employee employee) =>
      caller.callServerEndpoint<void>(
        'employee',
        'createEmployee',
        {'employee': employee},
      );

  _i2.Future<void> updateEmployee(_i4.Employee employee) =>
      caller.callServerEndpoint<void>(
        'employee',
        'updateEmployee',
        {'employee': employee},
      );

  _i2.Future<void> deleteEmployee(int id) => caller.callServerEndpoint<void>(
        'employee',
        'deleteEmployee',
        {'id': id},
      );
}

/// {@category Endpoint}
class EndpointExample extends _i1.EndpointRef {
  EndpointExample(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'example';

  _i2.Future<String> hello(String name) => caller.callServerEndpoint<String>(
        'example',
        'hello',
        {'name': name},
      );
}

/// {@category Endpoint}
class EndpointFileManagement extends _i1.EndpointRef {
  EndpointFileManagement(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'fileManagement';

  _i2.Future<String?> getUploadDescription(String path) =>
      caller.callServerEndpoint<String?>(
        'fileManagement',
        'getUploadDescription',
        {'path': path},
      );

  _i2.Future<bool> verifyUpload(String path) => caller.callServerEndpoint<bool>(
        'fileManagement',
        'verifyUpload',
        {'path': path},
      );

  _i2.Future<void> deleteFile(String path) => caller.callServerEndpoint<void>(
        'fileManagement',
        'deleteFile',
        {'path': path},
      );

  _i2.Future<bool> checkIfFileExists(String path) =>
      caller.callServerEndpoint<bool>(
        'fileManagement',
        'checkIfFileExists',
        {'path': path},
      );

  _i2.Future<_i5.ByteData?> getFileUrl(String path) =>
      caller.callServerEndpoint<_i5.ByteData?>(
        'fileManagement',
        'getFileUrl',
        {'path': path},
      );
}

/// {@category Endpoint}
class EndpointItems extends _i1.EndpointRef {
  EndpointItems(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'items';

  _i2.Future<List<_i6.Item>> getAllItems() =>
      caller.callServerEndpoint<List<_i6.Item>>(
        'items',
        'getAllItems',
        {},
      );

  _i2.Future<List<_i6.Item>> getItemsWithNoOwnersApplication() =>
      caller.callServerEndpoint<List<_i6.Item>>(
        'items',
        'getItemsWithNoOwnersApplication',
        {},
      );

  _i2.Future<void> setItemsOwnersApplication(
    int id,
    int applicationId,
  ) =>
      caller.callServerEndpoint<void>(
        'items',
        'setItemsOwnersApplication',
        {
          'id': id,
          'applicationId': applicationId,
        },
      );

  _i2.Future<List<_i6.Item>> getItemsWithNoActVhEFZK() =>
      caller.callServerEndpoint<List<_i6.Item>>(
        'items',
        'getItemsWithNoActVhEFZK',
        {},
      );

  _i2.Future<List<_i6.Item>> getItemsWithNoReturnAct() =>
      caller.callServerEndpoint<List<_i6.Item>>(
        'items',
        'getItemsWithNoReturnAct',
        {},
      );

  _i2.Future<List<_i6.Item>> getItemsWithNoPermanentAcceptanceAct() =>
      caller.callServerEndpoint<List<_i6.Item>>(
        'items',
        'getItemsWithNoPermanentAcceptanceAct',
        {},
      );

  _i2.Future<List<_i6.Item>> getItemsWithNoDecomissionAct() =>
      caller.callServerEndpoint<List<_i6.Item>>(
        'items',
        'getItemsWithNoDecomissionAct',
        {},
      );

  _i2.Future<List<_i6.Item>> getItemsWithNoEntranceRecord() =>
      caller.callServerEndpoint<List<_i6.Item>>(
        'items',
        'getItemsWithNoEntranceRecord',
        {},
      );

  _i2.Future<List<_i6.Item>> getItemsWithNoInventoryRecord() =>
      caller.callServerEndpoint<List<_i6.Item>>(
        'items',
        'getItemsWithNoInventoryRecord',
        {},
      );

  _i2.Future<_i6.Item?> getItem(int id) => caller.callServerEndpoint<_i6.Item?>(
        'items',
        'getItem',
        {'id': id},
      );

  _i2.Future<void> createItem(_i6.Item item) => caller.callServerEndpoint<void>(
        'items',
        'createItem',
        {'item': item},
      );

  _i2.Future<void> updateItem(_i6.Item item) => caller.callServerEndpoint<void>(
        'items',
        'updateItem',
        {'item': item},
      );

  _i2.Future<void> deleteItem(int id) => caller.callServerEndpoint<void>(
        'items',
        'deleteItem',
        {'id': id},
      );
}

/// {@category Endpoint}
class EndpointOwnersApplication extends _i1.EndpointRef {
  EndpointOwnersApplication(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'ownersApplication';

  _i2.Future<List<_i7.OwnersApplication>> getAllOwnersApplications() =>
      caller.callServerEndpoint<List<_i7.OwnersApplication>>(
        'ownersApplication',
        'getAllOwnersApplications',
        {},
      );

  _i2.Future<_i7.OwnersApplication?> getOwnersApplication(int id) =>
      caller.callServerEndpoint<_i7.OwnersApplication?>(
        'ownersApplication',
        'getOwnersApplication',
        {'id': id},
      );

  _i2.Future<int> createOwnersApplication(
          _i7.OwnersApplication ownersApplication) =>
      caller.callServerEndpoint<int>(
        'ownersApplication',
        'createOwnersApplication',
        {'ownersApplication': ownersApplication},
      );

  _i2.Future<void> updateOwnersApplication(
          _i7.OwnersApplication ownersApplication) =>
      caller.callServerEndpoint<void>(
        'ownersApplication',
        'updateOwnersApplication',
        {'ownersApplication': ownersApplication},
      );

  _i2.Future<void> deleteOwnersApplication(int id) =>
      caller.callServerEndpoint<void>(
        'ownersApplication',
        'deleteOwnersApplication',
        {'id': id},
      );
}

/// {@category Endpoint}
class EndpointOwners extends _i1.EndpointRef {
  EndpointOwners(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'owners';

  _i2.Future<List<_i8.Owner>> getAllOwners() =>
      caller.callServerEndpoint<List<_i8.Owner>>(
        'owners',
        'getAllOwners',
        {},
      );

  _i2.Future<_i8.Owner?> getOwner(int id) =>
      caller.callServerEndpoint<_i8.Owner?>(
        'owners',
        'getOwner',
        {'id': id},
      );

  _i2.Future<void> createOwner(_i8.Owner owner) =>
      caller.callServerEndpoint<void>(
        'owners',
        'createOwner',
        {'owner': owner},
      );

  _i2.Future<void> updateOwner(_i8.Owner owner) =>
      caller.callServerEndpoint<void>(
        'owners',
        'updateOwner',
        {'owner': owner},
      );

  _i2.Future<void> deleteOwner(int id) => caller.callServerEndpoint<void>(
        'owners',
        'deleteOwner',
        {'id': id},
      );
}

class Client extends _i1.ServerpodClient {
  Client(
    String host, {
    dynamic securityContext,
    _i1.AuthenticationKeyManager? authenticationKeyManager,
    Duration? streamingConnectionTimeout,
    Duration? connectionTimeout,
  }) : super(
          host,
          _i9.Protocol(),
          securityContext: securityContext,
          authenticationKeyManager: authenticationKeyManager,
          streamingConnectionTimeout: streamingConnectionTimeout,
          connectionTimeout: connectionTimeout,
        ) {
    actVhEfzk = EndpointActVhEfzk(this);
    employee = EndpointEmployee(this);
    example = EndpointExample(this);
    fileManagement = EndpointFileManagement(this);
    items = EndpointItems(this);
    ownersApplication = EndpointOwnersApplication(this);
    owners = EndpointOwners(this);
  }

  late final EndpointActVhEfzk actVhEfzk;

  late final EndpointEmployee employee;

  late final EndpointExample example;

  late final EndpointFileManagement fileManagement;

  late final EndpointItems items;

  late final EndpointOwnersApplication ownersApplication;

  late final EndpointOwners owners;

  @override
  Map<String, _i1.EndpointRef> get endpointRefLookup => {
        'actVhEfzk': actVhEfzk,
        'employee': employee,
        'example': example,
        'fileManagement': fileManagement,
        'items': items,
        'ownersApplication': ownersApplication,
        'owners': owners,
      };

  @override
  Map<String, _i1.ModuleEndpointCaller> get moduleLookup => {};
}
