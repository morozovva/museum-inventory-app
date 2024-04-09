/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import '../endpoints/employee_endpoint.dart' as _i2;
import '../endpoints/example_endpoint.dart' as _i3;
import '../endpoints/file_management_endpoint.dart' as _i4;
import '../endpoints/item_endpoint.dart' as _i5;
import '../endpoints/owner_application_endpoint.dart' as _i6;
import '../endpoints/owner_endpoint.dart' as _i7;
import 'package:museum_inventory_app_server/src/generated/employee.dart' as _i8;
import 'package:museum_inventory_app_server/src/generated/item.dart' as _i9;
import 'package:museum_inventory_app_server/src/generated/owners_application.dart'
    as _i10;
import 'package:museum_inventory_app_server/src/generated/owner.dart' as _i11;

class Endpoints extends _i1.EndpointDispatch {
  @override
  void initializeEndpoints(_i1.Server server) {
    var endpoints = <String, _i1.Endpoint>{
      'employee': _i2.EmployeeEndpoint()
        ..initialize(
          server,
          'employee',
          null,
        ),
      'example': _i3.ExampleEndpoint()
        ..initialize(
          server,
          'example',
          null,
        ),
      'fileManagement': _i4.FileManagementEndpoint()
        ..initialize(
          server,
          'fileManagement',
          null,
        ),
      'items': _i5.ItemsEndpoint()
        ..initialize(
          server,
          'items',
          null,
        ),
      'ownersApplication': _i6.OwnersApplicationEndpoint()
        ..initialize(
          server,
          'ownersApplication',
          null,
        ),
      'owners': _i7.OwnersEndpoint()
        ..initialize(
          server,
          'owners',
          null,
        ),
    };
    connectors['employee'] = _i1.EndpointConnector(
      name: 'employee',
      endpoint: endpoints['employee']!,
      methodConnectors: {
        'getAllEmployees': _i1.MethodConnector(
          name: 'getAllEmployees',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['employee'] as _i2.EmployeeEndpoint)
                  .getAllEmployees(session),
        ),
        'getEmployee': _i1.MethodConnector(
          name: 'getEmployee',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['employee'] as _i2.EmployeeEndpoint).getEmployee(
            session,
            params['id'],
          ),
        ),
        'createEmployee': _i1.MethodConnector(
          name: 'createEmployee',
          params: {
            'employee': _i1.ParameterDescription(
              name: 'employee',
              type: _i1.getType<_i8.Employee>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['employee'] as _i2.EmployeeEndpoint).createEmployee(
            session,
            params['employee'],
          ),
        ),
        'updateEmployee': _i1.MethodConnector(
          name: 'updateEmployee',
          params: {
            'employee': _i1.ParameterDescription(
              name: 'employee',
              type: _i1.getType<_i8.Employee>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['employee'] as _i2.EmployeeEndpoint).updateEmployee(
            session,
            params['employee'],
          ),
        ),
        'deleteEmployee': _i1.MethodConnector(
          name: 'deleteEmployee',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['employee'] as _i2.EmployeeEndpoint).deleteEmployee(
            session,
            params['id'],
          ),
        ),
      },
    );
    connectors['example'] = _i1.EndpointConnector(
      name: 'example',
      endpoint: endpoints['example']!,
      methodConnectors: {
        'hello': _i1.MethodConnector(
          name: 'hello',
          params: {
            'name': _i1.ParameterDescription(
              name: 'name',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['example'] as _i3.ExampleEndpoint).hello(
            session,
            params['name'],
          ),
        )
      },
    );
    connectors['fileManagement'] = _i1.EndpointConnector(
      name: 'fileManagement',
      endpoint: endpoints['fileManagement']!,
      methodConnectors: {
        'getUploadDescription': _i1.MethodConnector(
          name: 'getUploadDescription',
          params: {
            'path': _i1.ParameterDescription(
              name: 'path',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['fileManagement'] as _i4.FileManagementEndpoint)
                  .getUploadDescription(
            session,
            params['path'],
          ),
        ),
        'verifyUpload': _i1.MethodConnector(
          name: 'verifyUpload',
          params: {
            'path': _i1.ParameterDescription(
              name: 'path',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['fileManagement'] as _i4.FileManagementEndpoint)
                  .verifyUpload(
            session,
            params['path'],
          ),
        ),
        'deleteFile': _i1.MethodConnector(
          name: 'deleteFile',
          params: {
            'path': _i1.ParameterDescription(
              name: 'path',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['fileManagement'] as _i4.FileManagementEndpoint)
                  .deleteFile(
            session,
            params['path'],
          ),
        ),
        'checkIfFileExists': _i1.MethodConnector(
          name: 'checkIfFileExists',
          params: {
            'path': _i1.ParameterDescription(
              name: 'path',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['fileManagement'] as _i4.FileManagementEndpoint)
                  .checkIfFileExists(
            session,
            params['path'],
          ),
        ),
        'getFileUrl': _i1.MethodConnector(
          name: 'getFileUrl',
          params: {
            'path': _i1.ParameterDescription(
              name: 'path',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['fileManagement'] as _i4.FileManagementEndpoint)
                  .getFileUrl(
            session,
            params['path'],
          ),
        ),
      },
    );
    connectors['items'] = _i1.EndpointConnector(
      name: 'items',
      endpoint: endpoints['items']!,
      methodConnectors: {
        'getAllItems': _i1.MethodConnector(
          name: 'getAllItems',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['items'] as _i5.ItemsEndpoint).getAllItems(session),
        ),
        'getItem': _i1.MethodConnector(
          name: 'getItem',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['items'] as _i5.ItemsEndpoint).getItem(
            session,
            params['id'],
          ),
        ),
        'createItem': _i1.MethodConnector(
          name: 'createItem',
          params: {
            'item': _i1.ParameterDescription(
              name: 'item',
              type: _i1.getType<_i9.Item>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['items'] as _i5.ItemsEndpoint).createItem(
            session,
            params['item'],
          ),
        ),
        'updateItem': _i1.MethodConnector(
          name: 'updateItem',
          params: {
            'item': _i1.ParameterDescription(
              name: 'item',
              type: _i1.getType<_i9.Item>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['items'] as _i5.ItemsEndpoint).updateItem(
            session,
            params['item'],
          ),
        ),
        'deleteItem': _i1.MethodConnector(
          name: 'deleteItem',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['items'] as _i5.ItemsEndpoint).deleteItem(
            session,
            params['id'],
          ),
        ),
      },
    );
    connectors['ownersApplication'] = _i1.EndpointConnector(
      name: 'ownersApplication',
      endpoint: endpoints['ownersApplication']!,
      methodConnectors: {
        'getAllOwnersApplications': _i1.MethodConnector(
          name: 'getAllOwnersApplications',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['ownersApplication'] as _i6.OwnersApplicationEndpoint)
                  .getAllOwnersApplications(session),
        ),
        'getOwnersApplication': _i1.MethodConnector(
          name: 'getOwnersApplication',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['ownersApplication'] as _i6.OwnersApplicationEndpoint)
                  .getOwnersApplication(
            session,
            params['id'],
          ),
        ),
        'createOwnersApplication': _i1.MethodConnector(
          name: 'createOwnersApplication',
          params: {
            'ownersApplication': _i1.ParameterDescription(
              name: 'ownersApplication',
              type: _i1.getType<_i10.OwnersApplication>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['ownersApplication'] as _i6.OwnersApplicationEndpoint)
                  .createOwnersApplication(
            session,
            params['ownersApplication'],
          ),
        ),
        'updateOwnersApplication': _i1.MethodConnector(
          name: 'updateOwnersApplication',
          params: {
            'ownersApplication': _i1.ParameterDescription(
              name: 'ownersApplication',
              type: _i1.getType<_i10.OwnersApplication>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['ownersApplication'] as _i6.OwnersApplicationEndpoint)
                  .updateOwnersApplication(
            session,
            params['ownersApplication'],
          ),
        ),
        'deleteOwnersApplication': _i1.MethodConnector(
          name: 'deleteOwnersApplication',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['ownersApplication'] as _i6.OwnersApplicationEndpoint)
                  .deleteOwnersApplication(
            session,
            params['id'],
          ),
        ),
      },
    );
    connectors['owners'] = _i1.EndpointConnector(
      name: 'owners',
      endpoint: endpoints['owners']!,
      methodConnectors: {
        'getAllOwners': _i1.MethodConnector(
          name: 'getAllOwners',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['owners'] as _i7.OwnersEndpoint).getAllOwners(session),
        ),
        'getOwner': _i1.MethodConnector(
          name: 'getOwner',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['owners'] as _i7.OwnersEndpoint).getOwner(
            session,
            params['id'],
          ),
        ),
        'createOwner': _i1.MethodConnector(
          name: 'createOwner',
          params: {
            'owner': _i1.ParameterDescription(
              name: 'owner',
              type: _i1.getType<_i11.Owner>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['owners'] as _i7.OwnersEndpoint).createOwner(
            session,
            params['owner'],
          ),
        ),
        'updateOwner': _i1.MethodConnector(
          name: 'updateOwner',
          params: {
            'owner': _i1.ParameterDescription(
              name: 'owner',
              type: _i1.getType<_i11.Owner>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['owners'] as _i7.OwnersEndpoint).updateOwner(
            session,
            params['owner'],
          ),
        ),
        'deleteOwner': _i1.MethodConnector(
          name: 'deleteOwner',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['owners'] as _i7.OwnersEndpoint).deleteOwner(
            session,
            params['id'],
          ),
        ),
      },
    );
  }
}
