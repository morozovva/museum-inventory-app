/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class OwnersApplication extends _i1.SerializableEntity {
  OwnersApplication._({
    this.id,
    required this.file,
    required this.ownerId,
  });

  factory OwnersApplication({
    int? id,
    required String file,
    required int ownerId,
  }) = _OwnersApplicationImpl;

  factory OwnersApplication.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return OwnersApplication(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      file: serializationManager.deserialize<String>(jsonSerialization['file']),
      ownerId:
          serializationManager.deserialize<int>(jsonSerialization['ownerId']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String file;

  int ownerId;

  OwnersApplication copyWith({
    int? id,
    String? file,
    int? ownerId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'file': file,
      'ownerId': ownerId,
    };
  }
}

class _Undefined {}

class _OwnersApplicationImpl extends OwnersApplication {
  _OwnersApplicationImpl({
    int? id,
    required String file,
    required int ownerId,
  }) : super._(
          id: id,
          file: file,
          ownerId: ownerId,
        );

  @override
  OwnersApplication copyWith({
    Object? id = _Undefined,
    String? file,
    int? ownerId,
  }) {
    return OwnersApplication(
      id: id is int? ? id : this.id,
      file: file ?? this.file,
      ownerId: ownerId ?? this.ownerId,
    );
  }
}
