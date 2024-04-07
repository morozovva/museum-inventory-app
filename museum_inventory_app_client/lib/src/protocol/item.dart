/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class Item extends _i1.SerializableEntity {
  Item._({
    this.id,
    required this.name,
    this.integrity,
    this.appearance,
    this.origin,
    this.ownerApplicationId,
    this.actVhEfzkId,
    this.returnActId,
    this.permanentAcceptanceActId,
    this.decomissionActId,
    this.entranceBookRecordId,
    this.inventoryBookRecordId,
  });

  factory Item({
    int? id,
    required String name,
    String? integrity,
    String? appearance,
    String? origin,
    int? ownerApplicationId,
    int? actVhEfzkId,
    int? returnActId,
    int? permanentAcceptanceActId,
    int? decomissionActId,
    int? entranceBookRecordId,
    int? inventoryBookRecordId,
  }) = _ItemImpl;

  factory Item.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Item(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      name: serializationManager.deserialize<String>(jsonSerialization['name']),
      integrity: serializationManager
          .deserialize<String?>(jsonSerialization['integrity']),
      appearance: serializationManager
          .deserialize<String?>(jsonSerialization['appearance']),
      origin: serializationManager
          .deserialize<String?>(jsonSerialization['origin']),
      ownerApplicationId: serializationManager
          .deserialize<int?>(jsonSerialization['ownerApplicationId']),
      actVhEfzkId: serializationManager
          .deserialize<int?>(jsonSerialization['actVhEfzkId']),
      returnActId: serializationManager
          .deserialize<int?>(jsonSerialization['returnActId']),
      permanentAcceptanceActId: serializationManager
          .deserialize<int?>(jsonSerialization['permanentAcceptanceActId']),
      decomissionActId: serializationManager
          .deserialize<int?>(jsonSerialization['decomissionActId']),
      entranceBookRecordId: serializationManager
          .deserialize<int?>(jsonSerialization['entranceBookRecordId']),
      inventoryBookRecordId: serializationManager
          .deserialize<int?>(jsonSerialization['inventoryBookRecordId']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String name;

  String? integrity;

  String? appearance;

  String? origin;

  int? ownerApplicationId;

  int? actVhEfzkId;

  int? returnActId;

  int? permanentAcceptanceActId;

  int? decomissionActId;

  int? entranceBookRecordId;

  int? inventoryBookRecordId;

  Item copyWith({
    int? id,
    String? name,
    String? integrity,
    String? appearance,
    String? origin,
    int? ownerApplicationId,
    int? actVhEfzkId,
    int? returnActId,
    int? permanentAcceptanceActId,
    int? decomissionActId,
    int? entranceBookRecordId,
    int? inventoryBookRecordId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'name': name,
      if (integrity != null) 'integrity': integrity,
      if (appearance != null) 'appearance': appearance,
      if (origin != null) 'origin': origin,
      if (ownerApplicationId != null) 'ownerApplicationId': ownerApplicationId,
      if (actVhEfzkId != null) 'actVhEfzkId': actVhEfzkId,
      if (returnActId != null) 'returnActId': returnActId,
      if (permanentAcceptanceActId != null)
        'permanentAcceptanceActId': permanentAcceptanceActId,
      if (decomissionActId != null) 'decomissionActId': decomissionActId,
      if (entranceBookRecordId != null)
        'entranceBookRecordId': entranceBookRecordId,
      if (inventoryBookRecordId != null)
        'inventoryBookRecordId': inventoryBookRecordId,
    };
  }
}

class _Undefined {}

class _ItemImpl extends Item {
  _ItemImpl({
    int? id,
    required String name,
    String? integrity,
    String? appearance,
    String? origin,
    int? ownerApplicationId,
    int? actVhEfzkId,
    int? returnActId,
    int? permanentAcceptanceActId,
    int? decomissionActId,
    int? entranceBookRecordId,
    int? inventoryBookRecordId,
  }) : super._(
          id: id,
          name: name,
          integrity: integrity,
          appearance: appearance,
          origin: origin,
          ownerApplicationId: ownerApplicationId,
          actVhEfzkId: actVhEfzkId,
          returnActId: returnActId,
          permanentAcceptanceActId: permanentAcceptanceActId,
          decomissionActId: decomissionActId,
          entranceBookRecordId: entranceBookRecordId,
          inventoryBookRecordId: inventoryBookRecordId,
        );

  @override
  Item copyWith({
    Object? id = _Undefined,
    String? name,
    Object? integrity = _Undefined,
    Object? appearance = _Undefined,
    Object? origin = _Undefined,
    Object? ownerApplicationId = _Undefined,
    Object? actVhEfzkId = _Undefined,
    Object? returnActId = _Undefined,
    Object? permanentAcceptanceActId = _Undefined,
    Object? decomissionActId = _Undefined,
    Object? entranceBookRecordId = _Undefined,
    Object? inventoryBookRecordId = _Undefined,
  }) {
    return Item(
      id: id is int? ? id : this.id,
      name: name ?? this.name,
      integrity: integrity is String? ? integrity : this.integrity,
      appearance: appearance is String? ? appearance : this.appearance,
      origin: origin is String? ? origin : this.origin,
      ownerApplicationId: ownerApplicationId is int?
          ? ownerApplicationId
          : this.ownerApplicationId,
      actVhEfzkId: actVhEfzkId is int? ? actVhEfzkId : this.actVhEfzkId,
      returnActId: returnActId is int? ? returnActId : this.returnActId,
      permanentAcceptanceActId: permanentAcceptanceActId is int?
          ? permanentAcceptanceActId
          : this.permanentAcceptanceActId,
      decomissionActId:
          decomissionActId is int? ? decomissionActId : this.decomissionActId,
      entranceBookRecordId: entranceBookRecordId is int?
          ? entranceBookRecordId
          : this.entranceBookRecordId,
      inventoryBookRecordId: inventoryBookRecordId is int?
          ? inventoryBookRecordId
          : this.inventoryBookRecordId,
    );
  }
}
