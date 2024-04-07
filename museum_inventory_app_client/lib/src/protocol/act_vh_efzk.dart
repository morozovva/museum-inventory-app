/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class ActVHEFZK extends _i1.SerializableEntity {
  ActVHEFZK._({
    this.id,
    required this.date,
    required this.note,
    required this.employeeId,
    required this.signed,
  });

  factory ActVHEFZK({
    int? id,
    required DateTime date,
    required String note,
    required int employeeId,
    required bool signed,
  }) = _ActVHEFZKImpl;

  factory ActVHEFZK.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return ActVHEFZK(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      date:
          serializationManager.deserialize<DateTime>(jsonSerialization['date']),
      note: serializationManager.deserialize<String>(jsonSerialization['note']),
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

  String note;

  int employeeId;

  bool signed;

  ActVHEFZK copyWith({
    int? id,
    DateTime? date,
    String? note,
    int? employeeId,
    bool? signed,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'date': date.toJson(),
      'note': note,
      'employeeId': employeeId,
      'signed': signed,
    };
  }
}

class _Undefined {}

class _ActVHEFZKImpl extends ActVHEFZK {
  _ActVHEFZKImpl({
    int? id,
    required DateTime date,
    required String note,
    required int employeeId,
    required bool signed,
  }) : super._(
          id: id,
          date: date,
          note: note,
          employeeId: employeeId,
          signed: signed,
        );

  @override
  ActVHEFZK copyWith({
    Object? id = _Undefined,
    DateTime? date,
    String? note,
    int? employeeId,
    bool? signed,
  }) {
    return ActVHEFZK(
      id: id is int? ? id : this.id,
      date: date ?? this.date,
      note: note ?? this.note,
      employeeId: employeeId ?? this.employeeId,
      signed: signed ?? this.signed,
    );
  }
}
