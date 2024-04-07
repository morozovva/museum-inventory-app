/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class InventoryBook extends _i1.SerializableEntity {
  InventoryBook._({
    this.id,
    required this.recordId,
  });

  factory InventoryBook({
    int? id,
    required int recordId,
  }) = _InventoryBookImpl;

  factory InventoryBook.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return InventoryBook(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      recordId:
          serializationManager.deserialize<int>(jsonSerialization['recordId']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int recordId;

  InventoryBook copyWith({
    int? id,
    int? recordId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'recordId': recordId,
    };
  }
}

class _Undefined {}

class _InventoryBookImpl extends InventoryBook {
  _InventoryBookImpl({
    int? id,
    required int recordId,
  }) : super._(
          id: id,
          recordId: recordId,
        );

  @override
  InventoryBook copyWith({
    Object? id = _Undefined,
    int? recordId,
  }) {
    return InventoryBook(
      id: id is int? ? id : this.id,
      recordId: recordId ?? this.recordId,
    );
  }
}
