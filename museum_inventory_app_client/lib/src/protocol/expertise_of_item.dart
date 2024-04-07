/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class ExpertiseOfItem extends _i1.SerializableEntity {
  ExpertiseOfItem._({
    this.id,
    required this.itemId,
    required this.expertiseId,
  });

  factory ExpertiseOfItem({
    int? id,
    required int itemId,
    required int expertiseId,
  }) = _ExpertiseOfItemImpl;

  factory ExpertiseOfItem.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return ExpertiseOfItem(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      itemId:
          serializationManager.deserialize<int>(jsonSerialization['itemId']),
      expertiseId: serializationManager
          .deserialize<int>(jsonSerialization['expertiseId']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int itemId;

  int expertiseId;

  ExpertiseOfItem copyWith({
    int? id,
    int? itemId,
    int? expertiseId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'itemId': itemId,
      'expertiseId': expertiseId,
    };
  }
}

class _Undefined {}

class _ExpertiseOfItemImpl extends ExpertiseOfItem {
  _ExpertiseOfItemImpl({
    int? id,
    required int itemId,
    required int expertiseId,
  }) : super._(
          id: id,
          itemId: itemId,
          expertiseId: expertiseId,
        );

  @override
  ExpertiseOfItem copyWith({
    Object? id = _Undefined,
    int? itemId,
    int? expertiseId,
  }) {
    return ExpertiseOfItem(
      id: id is int? ? id : this.id,
      itemId: itemId ?? this.itemId,
      expertiseId: expertiseId ?? this.expertiseId,
    );
  }
}
