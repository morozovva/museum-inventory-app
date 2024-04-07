/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class SpeakingEmployeeEfzk extends _i1.SerializableEntity {
  SpeakingEmployeeEfzk._({
    this.id,
    required this.employeeId,
    required this.protocolId,
  });

  factory SpeakingEmployeeEfzk({
    int? id,
    required int employeeId,
    required int protocolId,
  }) = _SpeakingEmployeeEfzkImpl;

  factory SpeakingEmployeeEfzk.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return SpeakingEmployeeEfzk(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      employeeId: serializationManager
          .deserialize<int>(jsonSerialization['employeeId']),
      protocolId: serializationManager
          .deserialize<int>(jsonSerialization['protocolId']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int employeeId;

  int protocolId;

  SpeakingEmployeeEfzk copyWith({
    int? id,
    int? employeeId,
    int? protocolId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'employeeId': employeeId,
      'protocolId': protocolId,
    };
  }
}

class _Undefined {}

class _SpeakingEmployeeEfzkImpl extends SpeakingEmployeeEfzk {
  _SpeakingEmployeeEfzkImpl({
    int? id,
    required int employeeId,
    required int protocolId,
  }) : super._(
          id: id,
          employeeId: employeeId,
          protocolId: protocolId,
        );

  @override
  SpeakingEmployeeEfzk copyWith({
    Object? id = _Undefined,
    int? employeeId,
    int? protocolId,
  }) {
    return SpeakingEmployeeEfzk(
      id: id is int? ? id : this.id,
      employeeId: employeeId ?? this.employeeId,
      protocolId: protocolId ?? this.protocolId,
    );
  }
}
