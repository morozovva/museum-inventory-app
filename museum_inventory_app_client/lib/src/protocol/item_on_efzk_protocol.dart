/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class ItemInEfzkProtocol extends _i1.SerializableEntity {
  ItemInEfzkProtocol._({
    this.id,
    required this.itemOnEfzkId,
    required this.protocolId,
  });

  factory ItemInEfzkProtocol({
    int? id,
    required int itemOnEfzkId,
    required int protocolId,
  }) = _ItemInEfzkProtocolImpl;

  factory ItemInEfzkProtocol.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return ItemInEfzkProtocol(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      itemOnEfzkId: serializationManager
          .deserialize<int>(jsonSerialization['itemOnEfzkId']),
      protocolId: serializationManager
          .deserialize<int>(jsonSerialization['protocolId']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int itemOnEfzkId;

  int protocolId;

  ItemInEfzkProtocol copyWith({
    int? id,
    int? itemOnEfzkId,
    int? protocolId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'itemOnEfzkId': itemOnEfzkId,
      'protocolId': protocolId,
    };
  }
}

class _Undefined {}

class _ItemInEfzkProtocolImpl extends ItemInEfzkProtocol {
  _ItemInEfzkProtocolImpl({
    int? id,
    required int itemOnEfzkId,
    required int protocolId,
  }) : super._(
          id: id,
          itemOnEfzkId: itemOnEfzkId,
          protocolId: protocolId,
        );

  @override
  ItemInEfzkProtocol copyWith({
    Object? id = _Undefined,
    int? itemOnEfzkId,
    int? protocolId,
  }) {
    return ItemInEfzkProtocol(
      id: id is int? ? id : this.id,
      itemOnEfzkId: itemOnEfzkId ?? this.itemOnEfzkId,
      protocolId: protocolId ?? this.protocolId,
    );
  }
}
