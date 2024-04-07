/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class ReturnAct extends _i1.SerializableEntity {
  ReturnAct._({
    this.id,
    required this.date,
    required this.returnBasis,
    required this.employeeId,
    required this.integrity,
  });

  factory ReturnAct({
    int? id,
    required DateTime date,
    required String returnBasis,
    required int employeeId,
    required String integrity,
  }) = _ReturnActImpl;

  factory ReturnAct.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return ReturnAct(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      date:
          serializationManager.deserialize<DateTime>(jsonSerialization['date']),
      returnBasis: serializationManager
          .deserialize<String>(jsonSerialization['returnBasis']),
      employeeId: serializationManager
          .deserialize<int>(jsonSerialization['employeeId']),
      integrity: serializationManager
          .deserialize<String>(jsonSerialization['integrity']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  DateTime date;

  String returnBasis;

  int employeeId;

  String integrity;

  ReturnAct copyWith({
    int? id,
    DateTime? date,
    String? returnBasis,
    int? employeeId,
    String? integrity,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'date': date.toJson(),
      'returnBasis': returnBasis,
      'employeeId': employeeId,
      'integrity': integrity,
    };
  }
}

class _Undefined {}

class _ReturnActImpl extends ReturnAct {
  _ReturnActImpl({
    int? id,
    required DateTime date,
    required String returnBasis,
    required int employeeId,
    required String integrity,
  }) : super._(
          id: id,
          date: date,
          returnBasis: returnBasis,
          employeeId: employeeId,
          integrity: integrity,
        );

  @override
  ReturnAct copyWith({
    Object? id = _Undefined,
    DateTime? date,
    String? returnBasis,
    int? employeeId,
    String? integrity,
  }) {
    return ReturnAct(
      id: id is int? ? id : this.id,
      date: date ?? this.date,
      returnBasis: returnBasis ?? this.returnBasis,
      employeeId: employeeId ?? this.employeeId,
      integrity: integrity ?? this.integrity,
    );
  }
}
