/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import 'package:serverpod_serialization/serverpod_serialization.dart';

abstract class Owner extends _i1.TableRow {
  Owner._({
    int? id,
    required this.fio,
    required this.phoneNumber,
    required this.mail,
    required this.dateOfBirth,
    required this.homeAddress,
  }) : super(id);

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

  static final t = OwnerTable();

  static const db = OwnerRepository._();

  String fio;

  String phoneNumber;

  String mail;

  DateTime dateOfBirth;

  String homeAddress;

  @override
  _i1.Table get table => t;

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

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'fio': fio,
      'phoneNumber': phoneNumber,
      'mail': mail,
      'dateOfBirth': dateOfBirth,
      'homeAddress': homeAddress,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'fio': fio,
      'phoneNumber': phoneNumber,
      'mail': mail,
      'dateOfBirth': dateOfBirth.toJson(),
      'homeAddress': homeAddress,
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  void setColumn(
    String columnName,
    value,
  ) {
    switch (columnName) {
      case 'id':
        id = value;
        return;
      case 'fio':
        fio = value;
        return;
      case 'phoneNumber':
        phoneNumber = value;
        return;
      case 'mail':
        mail = value;
        return;
      case 'dateOfBirth':
        dateOfBirth = value;
        return;
      case 'homeAddress':
        homeAddress = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<Owner>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<OwnerTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Owner>(
      where: where != null ? where(Owner.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findRow instead.')
  static Future<Owner?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<OwnerTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Owner>(
      where: where != null ? where(Owner.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<Owner?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Owner>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<OwnerTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Owner>(
      where: where(Owner.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    Owner row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.update instead.')
  static Future<bool> update(
    _i1.Session session,
    Owner row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  @Deprecated(
      'Will be removed in 2.0.0. Use: db.insert instead. Important note: In db.insert, the object you pass in is no longer modified, instead a new copy with the added row is returned which contains the inserted id.')
  static Future<void> insert(
    _i1.Session session,
    Owner row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.count instead.')
  static Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<OwnerTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Owner>(
      where: where != null ? where(Owner.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static OwnerInclude include() {
    return OwnerInclude._();
  }

  static OwnerIncludeList includeList({
    _i1.WhereExpressionBuilder<OwnerTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<OwnerTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<OwnerTable>? orderByList,
    OwnerInclude? include,
  }) {
    return OwnerIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Owner.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Owner.t),
      include: include,
    );
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

class OwnerTable extends _i1.Table {
  OwnerTable({super.tableRelation}) : super(tableName: 'owner') {
    fio = _i1.ColumnString(
      'fio',
      this,
    );
    phoneNumber = _i1.ColumnString(
      'phoneNumber',
      this,
    );
    mail = _i1.ColumnString(
      'mail',
      this,
    );
    dateOfBirth = _i1.ColumnDateTime(
      'dateOfBirth',
      this,
    );
    homeAddress = _i1.ColumnString(
      'homeAddress',
      this,
    );
  }

  late final _i1.ColumnString fio;

  late final _i1.ColumnString phoneNumber;

  late final _i1.ColumnString mail;

  late final _i1.ColumnDateTime dateOfBirth;

  late final _i1.ColumnString homeAddress;

  @override
  List<_i1.Column> get columns => [
        id,
        fio,
        phoneNumber,
        mail,
        dateOfBirth,
        homeAddress,
      ];
}

@Deprecated('Use OwnerTable.t instead.')
OwnerTable tOwner = OwnerTable();

class OwnerInclude extends _i1.IncludeObject {
  OwnerInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => Owner.t;
}

class OwnerIncludeList extends _i1.IncludeList {
  OwnerIncludeList._({
    _i1.WhereExpressionBuilder<OwnerTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Owner.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Owner.t;
}

class OwnerRepository {
  const OwnerRepository._();

  Future<List<Owner>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<OwnerTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<OwnerTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<OwnerTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<Owner>(
      where: where?.call(Owner.t),
      orderBy: orderBy?.call(Owner.t),
      orderByList: orderByList?.call(Owner.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Owner?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<OwnerTable>? where,
    int? offset,
    _i1.OrderByBuilder<OwnerTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<OwnerTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<Owner>(
      where: where?.call(Owner.t),
      orderBy: orderBy?.call(Owner.t),
      orderByList: orderByList?.call(Owner.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Owner?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<Owner>(
      id,
      transaction: transaction,
    );
  }

  Future<List<Owner>> insert(
    _i1.Session session,
    List<Owner> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<Owner>(
      rows,
      transaction: transaction,
    );
  }

  Future<Owner> insertRow(
    _i1.Session session,
    Owner row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<Owner>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Owner>> update(
    _i1.Session session,
    List<Owner> rows, {
    _i1.ColumnSelections<OwnerTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<Owner>(
      rows,
      columns: columns?.call(Owner.t),
      transaction: transaction,
    );
  }

  Future<Owner> updateRow(
    _i1.Session session,
    Owner row, {
    _i1.ColumnSelections<OwnerTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<Owner>(
      row,
      columns: columns?.call(Owner.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<Owner> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<Owner>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    Owner row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<Owner>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<OwnerTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<Owner>(
      where: where(Owner.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<OwnerTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<Owner>(
      where: where?.call(Owner.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
