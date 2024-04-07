/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class ListeningEmployeeEfzk extends _i1.SerializableEntity {
  ListeningEmployeeEfzk._({
    this.id,
    required this.protocolId,
    required this.employeeId,
  });

  factory ListeningEmployeeEfzk({
    int? id,
    required int protocolId,
    required int employeeId,
  }) = _ListeningEmployeeEfzkImpl;

  factory ListeningEmployeeEfzk.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return ListeningEmployeeEfzk(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      protocolId: serializationManager
          .deserialize<int>(jsonSerialization['protocolId']),
      employeeId: serializationManager
          .deserialize<int>(jsonSerialization['employeeId']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int protocolId;

  int employeeId;

  ListeningEmployeeEfzk copyWith({
    int? id,
    int? protocolId,
    int? employeeId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'protocolId': protocolId,
      'employeeId': employeeId,
    };
  }
}

class _Undefined {}

class _ListeningEmployeeEfzkImpl extends ListeningEmployeeEfzk {
  _ListeningEmployeeEfzkImpl({
    int? id,
    required int protocolId,
    required int employeeId,
  }) : super._(
          id: id,
          protocolId: protocolId,
          employeeId: employeeId,
        );

  @override
  ListeningEmployeeEfzk copyWith({
    Object? id = _Undefined,
    int? protocolId,
    int? employeeId,
  }) {
    return ListeningEmployeeEfzk(
      id: id is int? ? id : this.id,
      protocolId: protocolId ?? this.protocolId,
      employeeId: employeeId ?? this.employeeId,
    );
  }
}
