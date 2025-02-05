/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'protocol.dart' as _i2;

abstract class Employee extends _i1.SerializableEntity {
  Employee._({
    this.id,
    required this.name,
    required this.surname,
    required this.patronymic,
    required this.dateOfBirth,
    required this.phoneNumber,
    this.password,
    this.mail,
    required this.acceptanceDate,
    this.dismissalDate,
    required this.positionId,
    this.position,
  });

  factory Employee({
    int? id,
    required String name,
    required String surname,
    required String patronymic,
    required DateTime dateOfBirth,
    required String phoneNumber,
    String? password,
    String? mail,
    required DateTime acceptanceDate,
    DateTime? dismissalDate,
    required int positionId,
    _i2.Position? position,
  }) = _EmployeeImpl;

  factory Employee.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Employee(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      name: serializationManager.deserialize<String>(jsonSerialization['name']),
      surname: serializationManager
          .deserialize<String>(jsonSerialization['surname']),
      patronymic: serializationManager
          .deserialize<String>(jsonSerialization['patronymic']),
      dateOfBirth: serializationManager
          .deserialize<DateTime>(jsonSerialization['dateOfBirth']),
      phoneNumber: serializationManager
          .deserialize<String>(jsonSerialization['phoneNumber']),
      password: serializationManager
          .deserialize<String?>(jsonSerialization['password']),
      mail:
          serializationManager.deserialize<String?>(jsonSerialization['mail']),
      acceptanceDate: serializationManager
          .deserialize<DateTime>(jsonSerialization['acceptanceDate']),
      dismissalDate: serializationManager
          .deserialize<DateTime?>(jsonSerialization['dismissalDate']),
      positionId: serializationManager
          .deserialize<int>(jsonSerialization['positionId']),
      position: serializationManager
          .deserialize<_i2.Position?>(jsonSerialization['position']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String name;

  String surname;

  String patronymic;

  DateTime dateOfBirth;

  String phoneNumber;

  String? password;

  String? mail;

  DateTime acceptanceDate;

  DateTime? dismissalDate;

  int positionId;

  _i2.Position? position;

  Employee copyWith({
    int? id,
    String? name,
    String? surname,
    String? patronymic,
    DateTime? dateOfBirth,
    String? phoneNumber,
    String? password,
    String? mail,
    DateTime? acceptanceDate,
    DateTime? dismissalDate,
    int? positionId,
    _i2.Position? position,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'name': name,
      'surname': surname,
      'patronymic': patronymic,
      'dateOfBirth': dateOfBirth.toJson(),
      'phoneNumber': phoneNumber,
      if (password != null) 'password': password,
      if (mail != null) 'mail': mail,
      'acceptanceDate': acceptanceDate.toJson(),
      if (dismissalDate != null) 'dismissalDate': dismissalDate?.toJson(),
      'positionId': positionId,
      if (position != null) 'position': position?.toJson(),
    };
  }
}

class _Undefined {}

class _EmployeeImpl extends Employee {
  _EmployeeImpl({
    int? id,
    required String name,
    required String surname,
    required String patronymic,
    required DateTime dateOfBirth,
    required String phoneNumber,
    String? password,
    String? mail,
    required DateTime acceptanceDate,
    DateTime? dismissalDate,
    required int positionId,
    _i2.Position? position,
  }) : super._(
          id: id,
          name: name,
          surname: surname,
          patronymic: patronymic,
          dateOfBirth: dateOfBirth,
          phoneNumber: phoneNumber,
          password: password,
          mail: mail,
          acceptanceDate: acceptanceDate,
          dismissalDate: dismissalDate,
          positionId: positionId,
          position: position,
        );

  @override
  Employee copyWith({
    Object? id = _Undefined,
    String? name,
    String? surname,
    String? patronymic,
    DateTime? dateOfBirth,
    String? phoneNumber,
    Object? password = _Undefined,
    Object? mail = _Undefined,
    DateTime? acceptanceDate,
    Object? dismissalDate = _Undefined,
    int? positionId,
    Object? position = _Undefined,
  }) {
    return Employee(
      id: id is int? ? id : this.id,
      name: name ?? this.name,
      surname: surname ?? this.surname,
      patronymic: patronymic ?? this.patronymic,
      dateOfBirth: dateOfBirth ?? this.dateOfBirth,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      password: password is String? ? password : this.password,
      mail: mail is String? ? mail : this.mail,
      acceptanceDate: acceptanceDate ?? this.acceptanceDate,
      dismissalDate:
          dismissalDate is DateTime? ? dismissalDate : this.dismissalDate,
      positionId: positionId ?? this.positionId,
      position:
          position is _i2.Position? ? position : this.position?.copyWith(),
    );
  }
}
