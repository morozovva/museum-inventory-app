/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class Fund extends _i1.SerializableEntity {
  Fund._({
    this.id,
    required this.fundCollectionId,
    this.shortName,
  });

  factory Fund({
    int? id,
    required int fundCollectionId,
    String? shortName,
  }) = _FundImpl;

  factory Fund.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Fund(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      fundCollectionId: serializationManager
          .deserialize<int>(jsonSerialization['fundCollectionId']),
      shortName: serializationManager
          .deserialize<String?>(jsonSerialization['shortName']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int fundCollectionId;

  String? shortName;

  Fund copyWith({
    int? id,
    int? fundCollectionId,
    String? shortName,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'fundCollectionId': fundCollectionId,
      if (shortName != null) 'shortName': shortName,
    };
  }
}

class _Undefined {}

class _FundImpl extends Fund {
  _FundImpl({
    int? id,
    required int fundCollectionId,
    String? shortName,
  }) : super._(
          id: id,
          fundCollectionId: fundCollectionId,
          shortName: shortName,
        );

  @override
  Fund copyWith({
    Object? id = _Undefined,
    int? fundCollectionId,
    Object? shortName = _Undefined,
  }) {
    return Fund(
      id: id is int? ? id : this.id,
      fundCollectionId: fundCollectionId ?? this.fundCollectionId,
      shortName: shortName is String? ? shortName : this.shortName,
    );
  }
}
