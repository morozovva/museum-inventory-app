/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class PermanentAcceptanceAct extends _i1.SerializableEntity {
  PermanentAcceptanceAct._({
    this.id,
    required this.date,
    required this.acceptanceBasis,
    required this.employeeId,
    required this.signed,
  });

  factory PermanentAcceptanceAct({
    int? id,
    required DateTime date,
    required String acceptanceBasis,
    required int employeeId,
    required bool signed,
  }) = _PermanentAcceptanceActImpl;

  factory PermanentAcceptanceAct.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return PermanentAcceptanceAct(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      date:
          serializationManager.deserialize<DateTime>(jsonSerialization['date']),
      acceptanceBasis: serializationManager
          .deserialize<String>(jsonSerialization['acceptanceBasis']),
      employeeId: serializationManager
          .deserialize<int>(jsonSerialization['employeeId']),
      signed:
          serializationManager.deserialize<bool>(jsonSerialization['signed']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  DateTime date;

  String acceptanceBasis;

  int employeeId;

  bool signed;

  PermanentAcceptanceAct copyWith({
    int? id,
    DateTime? date,
    String? acceptanceBasis,
    int? employeeId,
    bool? signed,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'date': date.toJson(),
      'acceptanceBasis': acceptanceBasis,
      'employeeId': employeeId,
      'signed': signed,
    };
  }
}

class _Undefined {}

class _PermanentAcceptanceActImpl extends PermanentAcceptanceAct {
  _PermanentAcceptanceActImpl({
    int? id,
    required DateTime date,
    required String acceptanceBasis,
    required int employeeId,
    required bool signed,
  }) : super._(
          id: id,
          date: date,
          acceptanceBasis: acceptanceBasis,
          employeeId: employeeId,
          signed: signed,
        );

  @override
  PermanentAcceptanceAct copyWith({
    Object? id = _Undefined,
    DateTime? date,
    String? acceptanceBasis,
    int? employeeId,
    bool? signed,
  }) {
    return PermanentAcceptanceAct(
      id: id is int? ? id : this.id,
      date: date ?? this.date,
      acceptanceBasis: acceptanceBasis ?? this.acceptanceBasis,
      employeeId: employeeId ?? this.employeeId,
      signed: signed ?? this.signed,
    );
  }
}
