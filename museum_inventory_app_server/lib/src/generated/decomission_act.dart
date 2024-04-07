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

abstract class DecomissionAct extends _i1.TableRow {
  DecomissionAct._({
    int? id,
    required this.date,
    required this.basis,
    required this.orderId,
    required this.integrity,
    required this.employeeId,
  }) : super(id);

  factory DecomissionAct({
    int? id,
    required DateTime date,
    required String basis,
    required int orderId,
    required String integrity,
    required int employeeId,
  }) = _DecomissionActImpl;

  factory DecomissionAct.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return DecomissionAct(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      date:
          serializationManager.deserialize<DateTime>(jsonSerialization['date']),
      basis:
          serializationManager.deserialize<String>(jsonSerialization['basis']),
      orderId:
          serializationManager.deserialize<int>(jsonSerialization['orderId']),
      integrity: serializationManager
          .deserialize<String>(jsonSerialization['integrity']),
      employeeId: serializationManager
          .deserialize<int>(jsonSerialization['employeeId']),
    );
  }

  static final t = DecomissionActTable();

  static const db = DecomissionActRepository._();

  DateTime date;

  String basis;

  int orderId;

  String integrity;

  int employeeId;

  @override
  _i1.Table get table => t;

  DecomissionAct copyWith({
    int? id,
    DateTime? date,
    String? basis,
    int? orderId,
    String? integrity,
    int? employeeId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'date': date.toJson(),
      'basis': basis,
      'orderId': orderId,
      'integrity': integrity,
      'employeeId': employeeId,
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'date': date,
      'basis': basis,
      'orderId': orderId,
      'integrity': integrity,
      'employeeId': employeeId,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'date': date.toJson(),
      'basis': basis,
      'orderId': orderId,
      'integrity': integrity,
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
      case 'date':
        date = value;
        return;
      case 'basis':
        basis = value;
        return;
      case 'orderId':
        orderId = value;
        return;
      case 'integrity':
        integrity = value;
        return;
      case 'employeeId':
        employeeId = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<DecomissionAct>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<DecomissionActTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<DecomissionAct>(
      where: where != null ? where(DecomissionAct.t) : null,
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
  static Future<DecomissionAct?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<DecomissionActTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<DecomissionAct>(
      where: where != null ? where(DecomissionAct.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<DecomissionAct?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<DecomissionAct>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<DecomissionActTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<DecomissionAct>(
      where: where(DecomissionAct.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    DecomissionAct row, {
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
    DecomissionAct row, {
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
    DecomissionAct row, {
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
    _i1.WhereExpressionBuilder<DecomissionActTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<DecomissionAct>(
      where: where != null ? where(DecomissionAct.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static DecomissionActInclude include() {
    return DecomissionActInclude._();
  }

  static DecomissionActIncludeList includeList({
    _i1.WhereExpressionBuilder<DecomissionActTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<DecomissionActTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<DecomissionActTable>? orderByList,
    DecomissionActInclude? include,
  }) {
    return DecomissionActIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(DecomissionAct.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(DecomissionAct.t),
      include: include,
    );
  }
}

class _Undefined {}

class _DecomissionActImpl extends DecomissionAct {
  _DecomissionActImpl({
    int? id,
    required DateTime date,
    required String basis,
    required int orderId,
    required String integrity,
    required int employeeId,
  }) : super._(
          id: id,
          date: date,
          basis: basis,
          orderId: orderId,
          integrity: integrity,
          employeeId: employeeId,
        );

  @override
  DecomissionAct copyWith({
    Object? id = _Undefined,
    DateTime? date,
    String? basis,
    int? orderId,
    String? integrity,
    int? employeeId,
  }) {
    return DecomissionAct(
      id: id is int? ? id : this.id,
      date: date ?? this.date,
      basis: basis ?? this.basis,
      orderId: orderId ?? this.orderId,
      integrity: integrity ?? this.integrity,
      employeeId: employeeId ?? this.employeeId,
    );
  }
}

class DecomissionActTable extends _i1.Table {
  DecomissionActTable({super.tableRelation})
      : super(tableName: 'decomission_act') {
    date = _i1.ColumnDateTime(
      'date',
      this,
    );
    basis = _i1.ColumnString(
      'basis',
      this,
    );
    orderId = _i1.ColumnInt(
      'orderId',
      this,
    );
    integrity = _i1.ColumnString(
      'integrity',
      this,
    );
    employeeId = _i1.ColumnInt(
      'employeeId',
      this,
    );
  }

  late final _i1.ColumnDateTime date;

  late final _i1.ColumnString basis;

  late final _i1.ColumnInt orderId;

  late final _i1.ColumnString integrity;

  late final _i1.ColumnInt employeeId;

  @override
  List<_i1.Column> get columns => [
        id,
        date,
        basis,
        orderId,
        integrity,
        employeeId,
      ];
}

@Deprecated('Use DecomissionActTable.t instead.')
DecomissionActTable tDecomissionAct = DecomissionActTable();

class DecomissionActInclude extends _i1.IncludeObject {
  DecomissionActInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => DecomissionAct.t;
}

class DecomissionActIncludeList extends _i1.IncludeList {
  DecomissionActIncludeList._({
    _i1.WhereExpressionBuilder<DecomissionActTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(DecomissionAct.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => DecomissionAct.t;
}

class DecomissionActRepository {
  const DecomissionActRepository._();

  Future<List<DecomissionAct>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<DecomissionActTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<DecomissionActTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<DecomissionActTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<DecomissionAct>(
      where: where?.call(DecomissionAct.t),
      orderBy: orderBy?.call(DecomissionAct.t),
      orderByList: orderByList?.call(DecomissionAct.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<DecomissionAct?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<DecomissionActTable>? where,
    int? offset,
    _i1.OrderByBuilder<DecomissionActTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<DecomissionActTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<DecomissionAct>(
      where: where?.call(DecomissionAct.t),
      orderBy: orderBy?.call(DecomissionAct.t),
      orderByList: orderByList?.call(DecomissionAct.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<DecomissionAct?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<DecomissionAct>(
      id,
      transaction: transaction,
    );
  }

  Future<List<DecomissionAct>> insert(
    _i1.Session session,
    List<DecomissionAct> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<DecomissionAct>(
      rows,
      transaction: transaction,
    );
  }

  Future<DecomissionAct> insertRow(
    _i1.Session session,
    DecomissionAct row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<DecomissionAct>(
      row,
      transaction: transaction,
    );
  }

  Future<List<DecomissionAct>> update(
    _i1.Session session,
    List<DecomissionAct> rows, {
    _i1.ColumnSelections<DecomissionActTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<DecomissionAct>(
      rows,
      columns: columns?.call(DecomissionAct.t),
      transaction: transaction,
    );
  }

  Future<DecomissionAct> updateRow(
    _i1.Session session,
    DecomissionAct row, {
    _i1.ColumnSelections<DecomissionActTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<DecomissionAct>(
      row,
      columns: columns?.call(DecomissionAct.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<DecomissionAct> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<DecomissionAct>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    DecomissionAct row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<DecomissionAct>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<DecomissionActTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<DecomissionAct>(
      where: where(DecomissionAct.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<DecomissionActTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<DecomissionAct>(
      where: where?.call(DecomissionAct.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
