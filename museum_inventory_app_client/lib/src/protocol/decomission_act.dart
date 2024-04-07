/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class DecomissionAct extends _i1.SerializableEntity {
  DecomissionAct._({
    this.id,
    required this.date,
    required this.basis,
    required this.orderId,
    required this.integrity,
    required this.employeeId,
  });

  factory DecomissionAct({
    int? id,
    required DateTime date,
    required String basis,
    required int orderId,
    required String integrity,
    required int employeeId,
  }) = _DecomissionActImpl;

  factory DecomissionAct.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return DecomissionAct(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      date:
          serializationManager.deserialize<DateTime>(jsonSerialization['date']),
      basis:
          serializationManager.deserialize<String>(jsonSerialization['basis']),
      orderId:
          serializationManager.deserialize<int>(jsonSerialization['orderId']),
      integrity: serializationManager
          .deserialize<String>(jsonSerialization['integrity']),
      employeeId: serializationManager
          .deserialize<int>(jsonSerialization['employeeId']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  DateTime date;

  String basis;

  int orderId;

  String integrity;

  int employeeId;

  DecomissionAct copyWith({
    int? id,
    DateTime? date,
    String? basis,
    int? orderId,
    String? integrity,
    int? employeeId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'date': date.toJson(),
      'basis': basis,
      'orderId': orderId,
      'integrity': integrity,
      'employeeId': employeeId,
    };
  }
}

class _Undefined {}

class _DecomissionActImpl extends DecomissionAct {
  _DecomissionActImpl({
    int? id,
    required DateTime date,
    required String basis,
    required int orderId,
    required String integrity,
    required int employeeId,
  }) : super._(
          id: id,
          date: date,
          basis: basis,
          orderId: orderId,
          integrity: integrity,
          employeeId: employeeId,
        );

  @override
  DecomissionAct copyWith({
    Object? id = _Undefined,
    DateTime? date,
    String? basis,
    int? orderId,
    String? integrity,
    int? employeeId,
  }) {
    return DecomissionAct(
      id: id is int? ? id : this.id,
      date: date ?? this.date,
      basis: basis ?? this.basis,
      orderId: orderId ?? this.orderId,
      integrity: integrity ?? this.integrity,
      employeeId: employeeId ?? this.employeeId,
    );
  }
}
