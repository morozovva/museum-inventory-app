/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class InventoryBookRecord extends _i1.SerializableEntity {
  InventoryBookRecord._({
    this.id,
    required this.date,
    required this.name,
    this.longDescription,
    required this.origin,
    required this.history,
    required this.material,
    required this.technique,
    required this.size,
    required this.weight,
    required this.integrity,
    required this.admissionWay,
    this.note,
    required this.signed,
  });

  factory InventoryBookRecord({
    int? id,
    required DateTime date,
    required String name,
    String? longDescription,
    required String origin,
    required String history,
    required String material,
    required String technique,
    required String size,
    required String weight,
    required String integrity,
    required String admissionWay,
    String? note,
    required bool signed,
  }) = _InventoryBookRecordImpl;

  factory InventoryBookRecord.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return InventoryBookRecord(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      date:
          serializationManager.deserialize<DateTime>(jsonSerialization['date']),
      name: serializationManager.deserialize<String>(jsonSerialization['name']),
      longDescription: serializationManager
          .deserialize<String?>(jsonSerialization['longDescription']),
      origin:
          serializationManager.deserialize<String>(jsonSerialization['origin']),
      history: serializationManager
          .deserialize<String>(jsonSerialization['history']),
      material: serializationManager
          .deserialize<String>(jsonSerialization['material']),
      technique: serializationManager
          .deserialize<String>(jsonSerialization['technique']),
      size: serializationManager.deserialize<String>(jsonSerialization['size']),
      weight:
          serializationManager.deserialize<String>(jsonSerialization['weight']),
      integrity: serializationManager
          .deserialize<String>(jsonSerialization['integrity']),
      admissionWay: serializationManager
          .deserialize<String>(jsonSerialization['admissionWay']),
      note:
          serializationManager.deserialize<String?>(jsonSerialization['note']),
      signed:
          serializationManager.deserialize<bool>(jsonSerialization['signed']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  DateTime date;

  String name;

  String? longDescription;

  String origin;

  String history;

  String material;

  String technique;

  String size;

  String weight;

  String integrity;

  String admissionWay;

  String? note;

  bool signed;

  InventoryBookRecord copyWith({
    int? id,
    DateTime? date,
    String? name,
    String? longDescription,
    String? origin,
    String? history,
    String? material,
    String? technique,
    String? size,
    String? weight,
    String? integrity,
    String? admissionWay,
    String? note,
    bool? signed,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'date': date.toJson(),
      'name': name,
      if (longDescription != null) 'longDescription': longDescription,
      'origin': origin,
      'history': history,
      'material': material,
      'technique': technique,
      'size': size,
      'weight': weight,
      'integrity': integrity,
      'admissionWay': admissionWay,
      if (note != null) 'note': note,
      'signed': signed,
    };
  }
}

class _Undefined {}

class _InventoryBookRecordImpl extends InventoryBookRecord {
  _InventoryBookRecordImpl({
    int? id,
    required DateTime date,
    required String name,
    String? longDescription,
    required String origin,
    required String history,
    required String material,
    required String technique,
    required String size,
    required String weight,
    required String integrity,
    required String admissionWay,
    String? note,
    required bool signed,
  }) : super._(
          id: id,
          date: date,
          name: name,
          longDescription: longDescription,
          origin: origin,
          history: history,
          material: material,
          technique: technique,
          size: size,
          weight: weight,
          integrity: integrity,
          admissionWay: admissionWay,
          note: note,
          signed: signed,
        );

  @override
  InventoryBookRecord copyWith({
    Object? id = _Undefined,
    DateTime? date,
    String? name,
    Object? longDescription = _Undefined,
    String? origin,
    String? history,
    String? material,
    String? technique,
    String? size,
    String? weight,
    String? integrity,
    String? admissionWay,
    Object? note = _Undefined,
    bool? signed,
  }) {
    return InventoryBookRecord(
      id: id is int? ? id : this.id,
      date: date ?? this.date,
      name: name ?? this.name,
      longDescription:
          longDescription is String? ? longDescription : this.longDescription,
      origin: origin ?? this.origin,
      history: history ?? this.history,
      material: material ?? this.material,
      technique: technique ?? this.technique,
      size: size ?? this.size,
      weight: weight ?? this.weight,
      integrity: integrity ?? this.integrity,
      admissionWay: admissionWay ?? this.admissionWay,
      note: note is String? ? note : this.note,
      signed: signed ?? this.signed,
    );
  }
}
