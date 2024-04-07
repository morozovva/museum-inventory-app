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

abstract class ReturnAct extends _i1.TableRow {
  ReturnAct._({
    int? id,
    required this.date,
    required this.returnBasis,
    required this.employeeId,
    required this.integrity,
  }) : super(id);

  factory ReturnAct({
    int? id,
    required DateTime date,
    required String returnBasis,
    required int employeeId,
    required String integrity,
  }) = _ReturnActImpl;

  factory ReturnAct.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return ReturnAct(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      date:
          serializationManager.deserialize<DateTime>(jsonSerialization['date']),
      returnBasis: serializationManager
          .deserialize<String>(jsonSerialization['returnBasis']),
      employeeId: serializationManager
          .deserialize<int>(jsonSerialization['employeeId']),
      integrity: serializationManager
          .deserialize<String>(jsonSerialization['integrity']),
    );
  }

  static final t = ReturnActTable();

  static const db = ReturnActRepository._();

  DateTime date;

  String returnBasis;

  int employeeId;

  String integrity;

  @override
  _i1.Table get table => t;

  ReturnAct copyWith({
    int? id,
    DateTime? date,
    String? returnBasis,
    int? employeeId,
    String? integrity,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'date': date.toJson(),
      'returnBasis': returnBasis,
      'employeeId': employeeId,
      'integrity': integrity,
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'date': date,
      'returnBasis': returnBasis,
      'employeeId': employeeId,
      'integrity': integrity,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'date': date.toJson(),
      'returnBasis': returnBasis,
      'employeeId': employeeId,
      'integrity': integrity,
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
      case 'date':
        date = value;
        return;
      case 'returnBasis':
        returnBasis = value;
        return;
      case 'employeeId':
        employeeId = value;
        return;
      case 'integrity':
        integrity = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<ReturnAct>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ReturnActTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<ReturnAct>(
      where: where != null ? where(ReturnAct.t) : null,
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
  static Future<ReturnAct?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ReturnActTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<ReturnAct>(
      where: where != null ? where(ReturnAct.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<ReturnAct?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<ReturnAct>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<ReturnActTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<ReturnAct>(
      where: where(ReturnAct.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    ReturnAct row, {
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
    ReturnAct row, {
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
    ReturnAct row, {
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
    _i1.WhereExpressionBuilder<ReturnActTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<ReturnAct>(
      where: where != null ? where(ReturnAct.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static ReturnActInclude include() {
    return ReturnActInclude._();
  }

  static ReturnActIncludeList includeList({
    _i1.WhereExpressionBuilder<ReturnActTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ReturnActTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ReturnActTable>? orderByList,
    ReturnActInclude? include,
  }) {
    return ReturnActIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ReturnAct.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(ReturnAct.t),
      include: include,
    );
  }
}

class _Undefined {}

class _ReturnActImpl extends ReturnAct {
  _ReturnActImpl({
    int? id,
    required DateTime date,
    required String returnBasis,
    required int employeeId,
    required String integrity,
  }) : super._(
          id: id,
          date: date,
          returnBasis: returnBasis,
          employeeId: employeeId,
          integrity: integrity,
        );

  @override
  ReturnAct copyWith({
    Object? id = _Undefined,
    DateTime? date,
    String? returnBasis,
    int? employeeId,
    String? integrity,
  }) {
    return ReturnAct(
      id: id is int? ? id : this.id,
      date: date ?? this.date,
      returnBasis: returnBasis ?? this.returnBasis,
      employeeId: employeeId ?? this.employeeId,
      integrity: integrity ?? this.integrity,
    );
  }
}

class ReturnActTable extends _i1.Table {
  ReturnActTable({super.tableRelation}) : super(tableName: 'return_act') {
    date = _i1.ColumnDateTime(
      'date',
      this,
    );
    returnBasis = _i1.ColumnString(
      'returnBasis',
      this,
    );
    employeeId = _i1.ColumnInt(
      'employeeId',
      this,
    );
    integrity = _i1.ColumnString(
      'integrity',
      this,
    );
  }

  late final _i1.ColumnDateTime date;

  late final _i1.ColumnString returnBasis;

  late final _i1.ColumnInt employeeId;

  late final _i1.ColumnString integrity;

  @override
  List<_i1.Column> get columns => [
        id,
        date,
        returnBasis,
        employeeId,
        integrity,
      ];
}

@Deprecated('Use ReturnActTable.t instead.')
ReturnActTable tReturnAct = ReturnActTable();

class ReturnActInclude extends _i1.IncludeObject {
  ReturnActInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => ReturnAct.t;
}

class ReturnActIncludeList extends _i1.IncludeList {
  ReturnActIncludeList._({
    _i1.WhereExpressionBuilder<ReturnActTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ReturnAct.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => ReturnAct.t;
}

class ReturnActRepository {
  const ReturnActRepository._();

  Future<List<ReturnAct>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ReturnActTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ReturnActTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ReturnActTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<ReturnAct>(
      where: where?.call(ReturnAct.t),
      orderBy: orderBy?.call(ReturnAct.t),
      orderByList: orderByList?.call(ReturnAct.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<ReturnAct?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ReturnActTable>? where,
    int? offset,
    _i1.OrderByBuilder<ReturnActTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ReturnActTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<ReturnAct>(
      where: where?.call(ReturnAct.t),
      orderBy: orderBy?.call(ReturnAct.t),
      orderByList: orderByList?.call(ReturnAct.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<ReturnAct?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<ReturnAct>(
      id,
      transaction: transaction,
    );
  }

  Future<List<ReturnAct>> insert(
    _i1.Session session,
    List<ReturnAct> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<ReturnAct>(
      rows,
      transaction: transaction,
    );
  }

  Future<ReturnAct> insertRow(
    _i1.Session session,
    ReturnAct row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<ReturnAct>(
      row,
      transaction: transaction,
    );
  }

  Future<List<ReturnAct>> update(
    _i1.Session session,
    List<ReturnAct> rows, {
    _i1.ColumnSelections<ReturnActTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<ReturnAct>(
      rows,
      columns: columns?.call(ReturnAct.t),
      transaction: transaction,
    );
  }

  Future<ReturnAct> updateRow(
    _i1.Session session,
    ReturnAct row, {
    _i1.ColumnSelections<ReturnActTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<ReturnAct>(
      row,
      columns: columns?.call(ReturnAct.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<ReturnAct> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<ReturnAct>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    ReturnAct row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<ReturnAct>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<ReturnActTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<ReturnAct>(
      where: where(ReturnAct.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ReturnActTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<ReturnAct>(
      where: where?.call(ReturnAct.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
