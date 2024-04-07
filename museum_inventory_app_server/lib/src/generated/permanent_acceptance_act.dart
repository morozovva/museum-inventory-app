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

abstract class PermanentAcceptanceAct extends _i1.TableRow {
  PermanentAcceptanceAct._({
    int? id,
    required this.date,
    required this.acceptanceBasis,
    required this.employeeId,
    required this.signed,
  }) : super(id);

  factory PermanentAcceptanceAct({
    int? id,
    required DateTime date,
    required String acceptanceBasis,
    required int employeeId,
    required bool signed,
  }) = _PermanentAcceptanceActImpl;

  factory PermanentAcceptanceAct.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return PermanentAcceptanceAct(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      date:
          serializationManager.deserialize<DateTime>(jsonSerialization['date']),
      acceptanceBasis: serializationManager
          .deserialize<String>(jsonSerialization['acceptanceBasis']),
      employeeId: serializationManager
          .deserialize<int>(jsonSerialization['employeeId']),
      signed:
          serializationManager.deserialize<bool>(jsonSerialization['signed']),
    );
  }

  static final t = PermanentAcceptanceActTable();

  static const db = PermanentAcceptanceActRepository._();

  DateTime date;

  String acceptanceBasis;

  int employeeId;

  bool signed;

  @override
  _i1.Table get table => t;

  PermanentAcceptanceAct copyWith({
    int? id,
    DateTime? date,
    String? acceptanceBasis,
    int? employeeId,
    bool? signed,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'date': date.toJson(),
      'acceptanceBasis': acceptanceBasis,
      'employeeId': employeeId,
      'signed': signed,
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'date': date,
      'acceptanceBasis': acceptanceBasis,
      'employeeId': employeeId,
      'signed': signed,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'date': date.toJson(),
      'acceptanceBasis': acceptanceBasis,
      'employeeId': employeeId,
      'signed': signed,
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
      case 'acceptanceBasis':
        acceptanceBasis = value;
        return;
      case 'employeeId':
        employeeId = value;
        return;
      case 'signed':
        signed = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<PermanentAcceptanceAct>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PermanentAcceptanceActTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<PermanentAcceptanceAct>(
      where: where != null ? where(PermanentAcceptanceAct.t) : null,
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
  static Future<PermanentAcceptanceAct?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PermanentAcceptanceActTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<PermanentAcceptanceAct>(
      where: where != null ? where(PermanentAcceptanceAct.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<PermanentAcceptanceAct?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<PermanentAcceptanceAct>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<PermanentAcceptanceActTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<PermanentAcceptanceAct>(
      where: where(PermanentAcceptanceAct.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    PermanentAcceptanceAct row, {
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
    PermanentAcceptanceAct row, {
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
    PermanentAcceptanceAct row, {
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
    _i1.WhereExpressionBuilder<PermanentAcceptanceActTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<PermanentAcceptanceAct>(
      where: where != null ? where(PermanentAcceptanceAct.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static PermanentAcceptanceActInclude include() {
    return PermanentAcceptanceActInclude._();
  }

  static PermanentAcceptanceActIncludeList includeList({
    _i1.WhereExpressionBuilder<PermanentAcceptanceActTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PermanentAcceptanceActTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PermanentAcceptanceActTable>? orderByList,
    PermanentAcceptanceActInclude? include,
  }) {
    return PermanentAcceptanceActIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(PermanentAcceptanceAct.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(PermanentAcceptanceAct.t),
      include: include,
    );
  }
}

class _Undefined {}

class _PermanentAcceptanceActImpl extends PermanentAcceptanceAct {
  _PermanentAcceptanceActImpl({
    int? id,
    required DateTime date,
    required String acceptanceBasis,
    required int employeeId,
    required bool signed,
  }) : super._(
          id: id,
          date: date,
          acceptanceBasis: acceptanceBasis,
          employeeId: employeeId,
          signed: signed,
        );

  @override
  PermanentAcceptanceAct copyWith({
    Object? id = _Undefined,
    DateTime? date,
    String? acceptanceBasis,
    int? employeeId,
    bool? signed,
  }) {
    return PermanentAcceptanceAct(
      id: id is int? ? id : this.id,
      date: date ?? this.date,
      acceptanceBasis: acceptanceBasis ?? this.acceptanceBasis,
      employeeId: employeeId ?? this.employeeId,
      signed: signed ?? this.signed,
    );
  }
}

class PermanentAcceptanceActTable extends _i1.Table {
  PermanentAcceptanceActTable({super.tableRelation})
      : super(tableName: 'permanent_acceptance_act') {
    date = _i1.ColumnDateTime(
      'date',
      this,
    );
    acceptanceBasis = _i1.ColumnString(
      'acceptanceBasis',
      this,
    );
    employeeId = _i1.ColumnInt(
      'employeeId',
      this,
    );
    signed = _i1.ColumnBool(
      'signed',
      this,
    );
  }

  late final _i1.ColumnDateTime date;

  late final _i1.ColumnString acceptanceBasis;

  late final _i1.ColumnInt employeeId;

  late final _i1.ColumnBool signed;

  @override
  List<_i1.Column> get columns => [
        id,
        date,
        acceptanceBasis,
        employeeId,
        signed,
      ];
}

@Deprecated('Use PermanentAcceptanceActTable.t instead.')
PermanentAcceptanceActTable tPermanentAcceptanceAct =
    PermanentAcceptanceActTable();

class PermanentAcceptanceActInclude extends _i1.IncludeObject {
  PermanentAcceptanceActInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => PermanentAcceptanceAct.t;
}

class PermanentAcceptanceActIncludeList extends _i1.IncludeList {
  PermanentAcceptanceActIncludeList._({
    _i1.WhereExpressionBuilder<PermanentAcceptanceActTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(PermanentAcceptanceAct.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => PermanentAcceptanceAct.t;
}

class PermanentAcceptanceActRepository {
  const PermanentAcceptanceActRepository._();

  Future<List<PermanentAcceptanceAct>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PermanentAcceptanceActTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PermanentAcceptanceActTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PermanentAcceptanceActTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<PermanentAcceptanceAct>(
      where: where?.call(PermanentAcceptanceAct.t),
      orderBy: orderBy?.call(PermanentAcceptanceAct.t),
      orderByList: orderByList?.call(PermanentAcceptanceAct.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<PermanentAcceptanceAct?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PermanentAcceptanceActTable>? where,
    int? offset,
    _i1.OrderByBuilder<PermanentAcceptanceActTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PermanentAcceptanceActTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<PermanentAcceptanceAct>(
      where: where?.call(PermanentAcceptanceAct.t),
      orderBy: orderBy?.call(PermanentAcceptanceAct.t),
      orderByList: orderByList?.call(PermanentAcceptanceAct.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<PermanentAcceptanceAct?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<PermanentAcceptanceAct>(
      id,
      transaction: transaction,
    );
  }

  Future<List<PermanentAcceptanceAct>> insert(
    _i1.Session session,
    List<PermanentAcceptanceAct> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<PermanentAcceptanceAct>(
      rows,
      transaction: transaction,
    );
  }

  Future<PermanentAcceptanceAct> insertRow(
    _i1.Session session,
    PermanentAcceptanceAct row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<PermanentAcceptanceAct>(
      row,
      transaction: transaction,
    );
  }

  Future<List<PermanentAcceptanceAct>> update(
    _i1.Session session,
    List<PermanentAcceptanceAct> rows, {
    _i1.ColumnSelections<PermanentAcceptanceActTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<PermanentAcceptanceAct>(
      rows,
      columns: columns?.call(PermanentAcceptanceAct.t),
      transaction: transaction,
    );
  }

  Future<PermanentAcceptanceAct> updateRow(
    _i1.Session session,
    PermanentAcceptanceAct row, {
    _i1.ColumnSelections<PermanentAcceptanceActTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<PermanentAcceptanceAct>(
      row,
      columns: columns?.call(PermanentAcceptanceAct.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<PermanentAcceptanceAct> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<PermanentAcceptanceAct>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    PermanentAcceptanceAct row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<PermanentAcceptanceAct>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<PermanentAcceptanceActTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<PermanentAcceptanceAct>(
      where: where(PermanentAcceptanceAct.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PermanentAcceptanceActTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<PermanentAcceptanceAct>(
      where: where?.call(PermanentAcceptanceAct.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
