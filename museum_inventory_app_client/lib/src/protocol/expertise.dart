/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class Expertise extends _i1.SerializableEntity {
  Expertise._({
    this.id,
    required this.file,
  });

  factory Expertise({
    int? id,
    required String file,
  }) = _ExpertiseImpl;

  factory Expertise.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Expertise(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      file: serializationManager.deserialize<String>(jsonSerialization['file']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String file;

  Expertise copyWith({
    int? id,
    String? file,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'file': file,
    };
  }
}

class _Undefined {}

class _ExpertiseImpl extends Expertise {
  _ExpertiseImpl({
    int? id,
    required String file,
  }) : super._(
          id: id,
          file: file,
        );

  @override
  Expertise copyWith({
    Object? id = _Undefined,
    String? file,
  }) {
    return Expertise(
      id: id is int? ? id : this.id,
      file: file ?? this.file,
    );
  }
}
