/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class Owner extends _i1.SerializableEntity {
  Owner._({
    this.id,
    required this.fio,
    required this.phoneNumber,
    required this.mail,
    required this.dateOfBirth,
    required this.homeAddress,
  });

  factory Owner({
    int? id,
    required String fio,
    required String phoneNumber,
    required String mail,
    required DateTime dateOfBirth,
    required String homeAddress,
  }) = _OwnerImpl;

  factory Owner.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Owner(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      fio: serializationManager.deserialize<String>(jsonSerialization['fio']),
      phoneNumber: serializationManager
          .deserialize<String>(jsonSerialization['phoneNumber']),
      mail: serializationManager.deserialize<String>(jsonSerialization['mail']),
      dateOfBirth: serializationManager
          .deserialize<DateTime>(jsonSerialization['dateOfBirth']),
      homeAddress: serializationManager
          .deserialize<String>(jsonSerialization['homeAddress']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String fio;

  String phoneNumber;

  String mail;

  DateTime dateOfBirth;

  String homeAddress;

  Owner copyWith({
    int? id,
    String? fio,
    String? phoneNumber,
    String? mail,
    DateTime? dateOfBirth,
    String? homeAddress,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'fio': fio,
      'phoneNumber': phoneNumber,
      'mail': mail,
      'dateOfBirth': dateOfBirth.toJson(),
      'homeAddress': homeAddress,
    };
  }
}

class _Undefined {}

class _OwnerImpl extends Owner {
  _OwnerImpl({
    int? id,
    required String fio,
    required String phoneNumber,
    required String mail,
    required DateTime dateOfBirth,
    required String homeAddress,
  }) : super._(
          id: id,
          fio: fio,
          phoneNumber: phoneNumber,
          mail: mail,
          dateOfBirth: dateOfBirth,
          homeAddress: homeAddress,
        );

  @override
  Owner copyWith({
    Object? id = _Undefined,
    String? fio,
    String? phoneNumber,
    String? mail,
    DateTime? dateOfBirth,
    String? homeAddress,
  }) {
    return Owner(
      id: id is int? ? id : this.id,
      fio: fio ?? this.fio,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      mail: mail ?? this.mail,
      dateOfBirth: dateOfBirth ?? this.dateOfBirth,
      homeAddress: homeAddress ?? this.homeAddress,
    );
  }
}
