/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class EntranceBookRecord extends _i1.SerializableEntity {
  EntranceBookRecord._({
    this.id,
    required this.date,
    required this.admissionWay,
    required this.name,
    this.shortDescription,
    required this.numberOfItems,
    required this.material,
    required this.fundCollectionId,
    required this.integrity,
    this.note,
    required this.location,
  });

  factory EntranceBookRecord({
    int? id,
    required DateTime date,
    required String admissionWay,
    required String name,
    String? shortDescription,
    required int numberOfItems,
    required String material,
    required int fundCollectionId,
    required String integrity,
    String? note,
    required String location,
  }) = _EntranceBookRecordImpl;

  factory EntranceBookRecord.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return EntranceBookRecord(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      date:
          serializationManager.deserialize<DateTime>(jsonSerialization['date']),
      admissionWay: serializationManager
          .deserialize<String>(jsonSerialization['admissionWay']),
      name: serializationManager.deserialize<String>(jsonSerialization['name']),
      shortDescription: serializationManager
          .deserialize<String?>(jsonSerialization['shortDescription']),
      numberOfItems: serializationManager
          .deserialize<int>(jsonSerialization['numberOfItems']),
      material: serializationManager
          .deserialize<String>(jsonSerialization['material']),
      fundCollectionId: serializationManager
          .deserialize<int>(jsonSerialization['fundCollectionId']),
      integrity: serializationManager
          .deserialize<String>(jsonSerialization['integrity']),
      note:
          serializationManager.deserialize<String?>(jsonSerialization['note']),
      location: serializationManager
          .deserialize<String>(jsonSerialization['location']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  DateTime date;

  String admissionWay;

  String name;

  String? shortDescription;

  int numberOfItems;

  String material;

  int fundCollectionId;

  String integrity;

  String? note;

  String location;

  EntranceBookRecord copyWith({
    int? id,
    DateTime? date,
    String? admissionWay,
    String? name,
    String? shortDescription,
    int? numberOfItems,
    String? material,
    int? fundCollectionId,
    String? integrity,
    String? note,
    String? location,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'date': date.toJson(),
      'admissionWay': admissionWay,
      'name': name,
      if (shortDescription != null) 'shortDescription': shortDescription,
      'numberOfItems': numberOfItems,
      'material': material,
      'fundCollectionId': fundCollectionId,
      'integrity': integrity,
      if (note != null) 'note': note,
      'location': location,
    };
  }
}

class _Undefined {}

class _EntranceBookRecordImpl extends EntranceBookRecord {
  _EntranceBookRecordImpl({
    int? id,
    required DateTime date,
    required String admissionWay,
    required String name,
    String? shortDescription,
    required int numberOfItems,
    required String material,
    required int fundCollectionId,
    required String integrity,
    String? note,
    required String location,
  }) : super._(
          id: id,
          date: date,
          admissionWay: admissionWay,
          name: name,
          shortDescription: shortDescription,
          numberOfItems: numberOfItems,
          material: material,
          fundCollectionId: fundCollectionId,
          integrity: integrity,
          note: note,
          location: location,
        );

  @override
  EntranceBookRecord copyWith({
    Object? id = _Undefined,
    DateTime? date,
    String? admissionWay,
    String? name,
    Object? shortDescription = _Undefined,
    int? numberOfItems,
    String? material,
    int? fundCollectionId,
    String? integrity,
    Object? note = _Undefined,
    String? location,
  }) {
    return EntranceBookRecord(
      id: id is int? ? id : this.id,
      date: date ?? this.date,
      admissionWay: admissionWay ?? this.admissionWay,
      name: name ?? this.name,
      shortDescription: shortDescription is String?
          ? shortDescription
          : this.shortDescription,
      numberOfItems: numberOfItems ?? this.numberOfItems,
      material: material ?? this.material,
      fundCollectionId: fundCollectionId ?? this.fundCollectionId,
      integrity: integrity ?? this.integrity,
      note: note is String? ? note : this.note,
      location: location ?? this.location,
    );
  }
}
