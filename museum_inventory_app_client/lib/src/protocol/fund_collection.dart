/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class FundCollection extends _i1.SerializableEntity {
  FundCollection._({
    this.id,
    required this.name,
    this.shortName,
  });

  factory FundCollection({
    int? id,
    required String name,
    String? shortName,
  }) = _FundCollectionImpl;

  factory FundCollection.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return FundCollection(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      name: serializationManager.deserialize<String>(jsonSerialization['name']),
      shortName: serializationManager
          .deserialize<String?>(jsonSerialization['shortName']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String name;

  String? shortName;

  FundCollection copyWith({
    int? id,
    String? name,
    String? shortName,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'name': name,
      if (shortName != null) 'shortName': shortName,
    };
  }
}

class _Undefined {}

class _FundCollectionImpl extends FundCollection {
  _FundCollectionImpl({
    int? id,
    required String name,
    String? shortName,
  }) : super._(
          id: id,
          name: name,
          shortName: shortName,
        );

  @override
  FundCollection copyWith({
    Object? id = _Undefined,
    String? name,
    Object? shortName = _Undefined,
  }) {
    return FundCollection(
      id: id is int? ? id : this.id,
      name: name ?? this.name,
      shortName: shortName is String? ? shortName : this.shortName,
    );
  }
}
