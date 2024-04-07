/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class SpeakingEmployeeEfzk extends _i1.TableRow {
  SpeakingEmployeeEfzk._({
    int? id,
    required this.employeeId,
    required this.protocolId,
  }) : super(id);

  factory SpeakingEmployeeEfzk({
    int? id,
    required int employeeId,
    required int protocolId,
  }) = _SpeakingEmployeeEfzkImpl;

  factory SpeakingEmployeeEfzk.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return SpeakingEmployeeEfzk(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      employeeId: serializationManager
          .deserialize<int>(jsonSerialization['employeeId']),
      protocolId: serializationManager
          .deserialize<int>(jsonSerialization['protocolId']),
    );
  }

  static final t = SpeakingEmployeeEfzkTable();

  static const db = SpeakingEmployeeEfzkRepository._();

  int employeeId;

  int protocolId;

  @override
  _i1.Table get table => t;

  SpeakingEmployeeEfzk copyWith({
    int? id,
    int? employeeId,
    int? protocolId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'employeeId': employeeId,
      'protocolId': protocolId,
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'employeeId': employeeId,
      'protocolId': protocolId,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'employeeId': employeeId,
      'protocolId': protocolId,
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
      case 'employeeId':
        employeeId = value;
        return;
      case 'protocolId':
        protocolId = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<SpeakingEmployeeEfzk>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<SpeakingEmployeeEfzkTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<SpeakingEmployeeEfzk>(
      where: where != null ? where(SpeakingEmployeeEfzk.t) : null,
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
  static Future<SpeakingEmployeeEfzk?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<SpeakingEmployeeEfzkTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<SpeakingEmployeeEfzk>(
      where: where != null ? where(SpeakingEmployeeEfzk.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<SpeakingEmployeeEfzk?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<SpeakingEmployeeEfzk>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<SpeakingEmployeeEfzkTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<SpeakingEmployeeEfzk>(
      where: where(SpeakingEmployeeEfzk.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    SpeakingEmployeeEfzk row, {
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
    SpeakingEmployeeEfzk row, {
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
    SpeakingEmployeeEfzk row, {
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
    _i1.WhereExpressionBuilder<SpeakingEmployeeEfzkTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<SpeakingEmployeeEfzk>(
      where: where != null ? where(SpeakingEmployeeEfzk.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static SpeakingEmployeeEfzkInclude include() {
    return SpeakingEmployeeEfzkInclude._();
  }

  static SpeakingEmployeeEfzkIncludeList includeList({
    _i1.WhereExpressionBuilder<SpeakingEmployeeEfzkTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<SpeakingEmployeeEfzkTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<SpeakingEmployeeEfzkTable>? orderByList,
    SpeakingEmployeeEfzkInclude? include,
  }) {
    return SpeakingEmployeeEfzkIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(SpeakingEmployeeEfzk.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(SpeakingEmployeeEfzk.t),
      include: include,
    );
  }
}

class _Undefined {}

class _SpeakingEmployeeEfzkImpl extends SpeakingEmployeeEfzk {
  _SpeakingEmployeeEfzkImpl({
    int? id,
    required int employeeId,
    required int protocolId,
  }) : super._(
          id: id,
          employeeId: employeeId,
          protocolId: protocolId,
        );

  @override
  SpeakingEmployeeEfzk copyWith({
    Object? id = _Undefined,
    int? employeeId,
    int? protocolId,
  }) {
    return SpeakingEmployeeEfzk(
      id: id is int? ? id : this.id,
      employeeId: employeeId ?? this.employeeId,
      protocolId: protocolId ?? this.protocolId,
    );
  }
}

class SpeakingEmployeeEfzkTable extends _i1.Table {
  SpeakingEmployeeEfzkTable({super.tableRelation})
      : super(tableName: 'speaking_employee_efzk') {
    employeeId = _i1.ColumnInt(
      'employeeId',
      this,
    );
    protocolId = _i1.ColumnInt(
      'protocolId',
      this,
    );
  }

  late final _i1.ColumnInt employeeId;

  late final _i1.ColumnInt protocolId;

  @override
  List<_i1.Column> get columns => [
        id,
        employeeId,
        protocolId,
      ];
}

@Deprecated('Use SpeakingEmployeeEfzkTable.t instead.')
SpeakingEmployeeEfzkTable tSpeakingEmployeeEfzk = SpeakingEmployeeEfzkTable();

class SpeakingEmployeeEfzkInclude extends _i1.IncludeObject {
  SpeakingEmployeeEfzkInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => SpeakingEmployeeEfzk.t;
}

class SpeakingEmployeeEfzkIncludeList extends _i1.IncludeList {
  SpeakingEmployeeEfzkIncludeList._({
    _i1.WhereExpressionBuilder<SpeakingEmployeeEfzkTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(SpeakingEmployeeEfzk.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => SpeakingEmployeeEfzk.t;
}

class SpeakingEmployeeEfzkRepository {
  const SpeakingEmployeeEfzkRepository._();

  Future<List<SpeakingEmployeeEfzk>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<SpeakingEmployeeEfzkTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<SpeakingEmployeeEfzkTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<SpeakingEmployeeEfzkTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<SpeakingEmployeeEfzk>(
      where: where?.call(SpeakingEmployeeEfzk.t),
      orderBy: orderBy?.call(SpeakingEmployeeEfzk.t),
      orderByList: orderByList?.call(SpeakingEmployeeEfzk.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<SpeakingEmployeeEfzk?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<SpeakingEmployeeEfzkTable>? where,
    int? offset,
    _i1.OrderByBuilder<SpeakingEmployeeEfzkTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<SpeakingEmployeeEfzkTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<SpeakingEmployeeEfzk>(
      where: where?.call(SpeakingEmployeeEfzk.t),
      orderBy: orderBy?.call(SpeakingEmployeeEfzk.t),
      orderByList: orderByList?.call(SpeakingEmployeeEfzk.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<SpeakingEmployeeEfzk?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<SpeakingEmployeeEfzk>(
      id,
      transaction: transaction,
    );
  }

  Future<List<SpeakingEmployeeEfzk>> insert(
    _i1.Session session,
    List<SpeakingEmployeeEfzk> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<SpeakingEmployeeEfzk>(
      rows,
      transaction: transaction,
    );
  }

  Future<SpeakingEmployeeEfzk> insertRow(
    _i1.Session session,
    SpeakingEmployeeEfzk row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<SpeakingEmployeeEfzk>(
      row,
      transaction: transaction,
    );
  }

  Future<List<SpeakingEmployeeEfzk>> update(
    _i1.Session session,
    List<SpeakingEmployeeEfzk> rows, {
    _i1.ColumnSelections<SpeakingEmployeeEfzkTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<SpeakingEmployeeEfzk>(
      rows,
      columns: columns?.call(SpeakingEmployeeEfzk.t),
      transaction: transaction,
    );
  }

  Future<SpeakingEmployeeEfzk> updateRow(
    _i1.Session session,
    SpeakingEmployeeEfzk row, {
    _i1.ColumnSelections<SpeakingEmployeeEfzkTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<SpeakingEmployeeEfzk>(
      row,
      columns: columns?.call(SpeakingEmployeeEfzk.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<SpeakingEmployeeEfzk> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<SpeakingEmployeeEfzk>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    SpeakingEmployeeEfzk row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<SpeakingEmployeeEfzk>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<SpeakingEmployeeEfzkTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<SpeakingEmployeeEfzk>(
      where: where(SpeakingEmployeeEfzk.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<SpeakingEmployeeEfzkTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<SpeakingEmployeeEfzk>(
      where: where?.call(SpeakingEmployeeEfzk.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
