/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class ListeningEmployeeEfzk extends _i1.TableRow {
  ListeningEmployeeEfzk._({
    int? id,
    required this.protocolId,
    required this.employeeId,
  }) : super(id);

  factory ListeningEmployeeEfzk({
    int? id,
    required int protocolId,
    required int employeeId,
  }) = _ListeningEmployeeEfzkImpl;

  factory ListeningEmployeeEfzk.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return ListeningEmployeeEfzk(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      protocolId: serializationManager
          .deserialize<int>(jsonSerialization['protocolId']),
      employeeId: serializationManager
          .deserialize<int>(jsonSerialization['employeeId']),
    );
  }

  static final t = ListeningEmployeeEfzkTable();

  static const db = ListeningEmployeeEfzkRepository._();

  int protocolId;

  int employeeId;

  @override
  _i1.Table get table => t;

  ListeningEmployeeEfzk copyWith({
    int? id,
    int? protocolId,
    int? employeeId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'protocolId': protocolId,
      'employeeId': employeeId,
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'protocolId': protocolId,
      'employeeId': employeeId,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'protocolId': protocolId,
      'employeeId': employeeId,
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
      case 'protocolId':
        protocolId = value;
        return;
      case 'employeeId':
        employeeId = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<ListeningEmployeeEfzk>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ListeningEmployeeEfzkTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<ListeningEmployeeEfzk>(
      where: where != null ? where(ListeningEmployeeEfzk.t) : null,
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
  static Future<ListeningEmployeeEfzk?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ListeningEmployeeEfzkTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<ListeningEmployeeEfzk>(
      where: where != null ? where(ListeningEmployeeEfzk.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<ListeningEmployeeEfzk?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<ListeningEmployeeEfzk>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<ListeningEmployeeEfzkTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<ListeningEmployeeEfzk>(
      where: where(ListeningEmployeeEfzk.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    ListeningEmployeeEfzk row, {
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
    ListeningEmployeeEfzk row, {
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
    ListeningEmployeeEfzk row, {
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
    _i1.WhereExpressionBuilder<ListeningEmployeeEfzkTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<ListeningEmployeeEfzk>(
      where: where != null ? where(ListeningEmployeeEfzk.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static ListeningEmployeeEfzkInclude include() {
    return ListeningEmployeeEfzkInclude._();
  }

  static ListeningEmployeeEfzkIncludeList includeList({
    _i1.WhereExpressionBuilder<ListeningEmployeeEfzkTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ListeningEmployeeEfzkTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ListeningEmployeeEfzkTable>? orderByList,
    ListeningEmployeeEfzkInclude? include,
  }) {
    return ListeningEmployeeEfzkIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ListeningEmployeeEfzk.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(ListeningEmployeeEfzk.t),
      include: include,
    );
  }
}

class _Undefined {}

class _ListeningEmployeeEfzkImpl extends ListeningEmployeeEfzk {
  _ListeningEmployeeEfzkImpl({
    int? id,
    required int protocolId,
    required int employeeId,
  }) : super._(
          id: id,
          protocolId: protocolId,
          employeeId: employeeId,
        );

  @override
  ListeningEmployeeEfzk copyWith({
    Object? id = _Undefined,
    int? protocolId,
    int? employeeId,
  }) {
    return ListeningEmployeeEfzk(
      id: id is int? ? id : this.id,
      protocolId: protocolId ?? this.protocolId,
      employeeId: employeeId ?? this.employeeId,
    );
  }
}

class ListeningEmployeeEfzkTable extends _i1.Table {
  ListeningEmployeeEfzkTable({super.tableRelation})
      : super(tableName: 'listening_employee_efzk') {
    protocolId = _i1.ColumnInt(
      'protocolId',
      this,
    );
    employeeId = _i1.ColumnInt(
      'employeeId',
      this,
    );
  }

  late final _i1.ColumnInt protocolId;

  late final _i1.ColumnInt employeeId;

  @override
  List<_i1.Column> get columns => [
        id,
        protocolId,
        employeeId,
      ];
}

@Deprecated('Use ListeningEmployeeEfzkTable.t instead.')
ListeningEmployeeEfzkTable tListeningEmployeeEfzk =
    ListeningEmployeeEfzkTable();

class ListeningEmployeeEfzkInclude extends _i1.IncludeObject {
  ListeningEmployeeEfzkInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => ListeningEmployeeEfzk.t;
}

class ListeningEmployeeEfzkIncludeList extends _i1.IncludeList {
  ListeningEmployeeEfzkIncludeList._({
    _i1.WhereExpressionBuilder<ListeningEmployeeEfzkTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ListeningEmployeeEfzk.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => ListeningEmployeeEfzk.t;
}

class ListeningEmployeeEfzkRepository {
  const ListeningEmployeeEfzkRepository._();

  Future<List<ListeningEmployeeEfzk>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ListeningEmployeeEfzkTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ListeningEmployeeEfzkTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ListeningEmployeeEfzkTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<ListeningEmployeeEfzk>(
      where: where?.call(ListeningEmployeeEfzk.t),
      orderBy: orderBy?.call(ListeningEmployeeEfzk.t),
      orderByList: orderByList?.call(ListeningEmployeeEfzk.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<ListeningEmployeeEfzk?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ListeningEmployeeEfzkTable>? where,
    int? offset,
    _i1.OrderByBuilder<ListeningEmployeeEfzkTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ListeningEmployeeEfzkTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<ListeningEmployeeEfzk>(
      where: where?.call(ListeningEmployeeEfzk.t),
      orderBy: orderBy?.call(ListeningEmployeeEfzk.t),
      orderByList: orderByList?.call(ListeningEmployeeEfzk.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<ListeningEmployeeEfzk?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<ListeningEmployeeEfzk>(
      id,
      transaction: transaction,
    );
  }

  Future<List<ListeningEmployeeEfzk>> insert(
    _i1.Session session,
    List<ListeningEmployeeEfzk> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<ListeningEmployeeEfzk>(
      rows,
      transaction: transaction,
    );
  }

  Future<ListeningEmployeeEfzk> insertRow(
    _i1.Session session,
    ListeningEmployeeEfzk row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<ListeningEmployeeEfzk>(
      row,
      transaction: transaction,
    );
  }

  Future<List<ListeningEmployeeEfzk>> update(
    _i1.Session session,
    List<ListeningEmployeeEfzk> rows, {
    _i1.ColumnSelections<ListeningEmployeeEfzkTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<ListeningEmployeeEfzk>(
      rows,
      columns: columns?.call(ListeningEmployeeEfzk.t),
      transaction: transaction,
    );
  }

  Future<ListeningEmployeeEfzk> updateRow(
    _i1.Session session,
    ListeningEmployeeEfzk row, {
    _i1.ColumnSelections<ListeningEmployeeEfzkTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<ListeningEmployeeEfzk>(
      row,
      columns: columns?.call(ListeningEmployeeEfzk.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<ListeningEmployeeEfzk> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<ListeningEmployeeEfzk>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    ListeningEmployeeEfzk row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<ListeningEmployeeEfzk>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<ListeningEmployeeEfzkTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<ListeningEmployeeEfzk>(
      where: where(ListeningEmployeeEfzk.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ListeningEmployeeEfzkTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<ListeningEmployeeEfzk>(
      where: where?.call(ListeningEmployeeEfzk.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
