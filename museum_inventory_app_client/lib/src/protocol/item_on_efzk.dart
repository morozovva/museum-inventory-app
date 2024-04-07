/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class ItemOnEfzk extends _i1.SerializableEntity {
  ItemOnEfzk._({
    this.id,
    required this.itemId,
    required this.shortDesc,
    required this.integrity,
    required this.decision,
    required this.fundCollectionId,
  });

  factory ItemOnEfzk({
    int? id,
    required int itemId,
    required String shortDesc,
    required String integrity,
    required String decision,
    required int fundCollectionId,
  }) = _ItemOnEfzkImpl;

  factory ItemOnEfzk.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return ItemOnEfzk(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      itemId:
          serializationManager.deserialize<int>(jsonSerialization['itemId']),
      shortDesc: serializationManager
          .deserialize<String>(jsonSerialization['shortDesc']),
      integrity: serializationManager
          .deserialize<String>(jsonSerialization['integrity']),
      decision: serializationManager
          .deserialize<String>(jsonSerialization['decision']),
      fundCollectionId: serializationManager
          .deserialize<int>(jsonSerialization['fundCollectionId']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int itemId;

  String shortDesc;

  String integrity;

  String decision;

  int fundCollectionId;

  ItemOnEfzk copyWith({
    int? id,
    int? itemId,
    String? shortDesc,
    String? integrity,
    String? decision,
    int? fundCollectionId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'itemId': itemId,
      'shortDesc': shortDesc,
      'integrity': integrity,
      'decision': decision,
      'fundCollectionId': fundCollectionId,
    };
  }
}

class _Undefined {}

class _ItemOnEfzkImpl extends ItemOnEfzk {
  _ItemOnEfzkImpl({
    int? id,
    required int itemId,
    required String shortDesc,
    required String integrity,
    required String decision,
    required int fundCollectionId,
  }) : super._(
          id: id,
          itemId: itemId,
          shortDesc: shortDesc,
          integrity: integrity,
          decision: decision,
          fundCollectionId: fundCollectionId,
        );

  @override
  ItemOnEfzk copyWith({
    Object? id = _Undefined,
    int? itemId,
    String? shortDesc,
    String? integrity,
    String? decision,
    int? fundCollectionId,
  }) {
    return ItemOnEfzk(
      id: id is int? ? id : this.id,
      itemId: itemId ?? this.itemId,
      shortDesc: shortDesc ?? this.shortDesc,
      integrity: integrity ?? this.integrity,
      decision: decision ?? this.decision,
      fundCollectionId: fundCollectionId ?? this.fundCollectionId,
    );
  }
}
