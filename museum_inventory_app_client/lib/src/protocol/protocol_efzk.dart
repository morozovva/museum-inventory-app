/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class ProtocolEFZK extends _i1.SerializableEntity {
  ProtocolEFZK._({
    this.id,
    required this.date,
    required this.discussion,
    required this.conclusion,
  });

  factory ProtocolEFZK({
    int? id,
    required DateTime date,
    required String discussion,
    required String conclusion,
  }) = _ProtocolEFZKImpl;

  factory ProtocolEFZK.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return ProtocolEFZK(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      date:
          serializationManager.deserialize<DateTime>(jsonSerialization['date']),
      discussion: serializationManager
          .deserialize<String>(jsonSerialization['discussion']),
      conclusion: serializationManager
          .deserialize<String>(jsonSerialization['conclusion']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  DateTime date;

  String discussion;

  String conclusion;

  ProtocolEFZK copyWith({
    int? id,
    DateTime? date,
    String? discussion,
    String? conclusion,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'date': date.toJson(),
      'discussion': discussion,
      'conclusion': conclusion,
    };
  }
}

class _Undefined {}

class _ProtocolEFZKImpl extends ProtocolEFZK {
  _ProtocolEFZKImpl({
    int? id,
    required DateTime date,
    required String discussion,
    required String conclusion,
  }) : super._(
          id: id,
          date: date,
          discussion: discussion,
          conclusion: conclusion,
        );

  @override
  ProtocolEFZK copyWith({
    Object? id = _Undefined,
    DateTime? date,
    String? discussion,
    String? conclusion,
  }) {
    return ProtocolEFZK(
      id: id is int? ? id : this.id,
      date: date ?? this.date,
      discussion: discussion ?? this.discussion,
      conclusion: conclusion ?? this.conclusion,
    );
  }
}
