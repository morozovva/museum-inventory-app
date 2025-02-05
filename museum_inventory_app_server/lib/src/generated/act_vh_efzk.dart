/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import 'protocol.dart' as _i2;
import 'package:serverpod_serialization/serverpod_serialization.dart';

abstract class ActVHEFZK extends _i1.TableRow {
  ActVHEFZK._({
    int? id,
    required this.date,
    required this.basis,
    required this.note,
    required this.employeeId,
    this.employee,
    required this.signed,
  }) : super(id);

  factory ActVHEFZK({
    int? id,
    required DateTime date,
    required String basis,
    required String note,
    required int employeeId,
    _i2.Employee? employee,
    required bool signed,
  }) = _ActVHEFZKImpl;

  factory ActVHEFZK.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return ActVHEFZK(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      date:
          serializationManager.deserialize<DateTime>(jsonSerialization['date']),
      basis:
          serializationManager.deserialize<String>(jsonSerialization['basis']),
      note: serializationManager.deserialize<String>(jsonSerialization['note']),
      employeeId: serializationManager
          .deserialize<int>(jsonSerialization['employeeId']),
      employee: serializationManager
          .deserialize<_i2.Employee?>(jsonSerialization['employee']),
      signed:
          serializationManager.deserialize<bool>(jsonSerialization['signed']),
    );
  }

  static final t = ActVHEFZKTable();

  static const db = ActVHEFZKRepository._();

  DateTime date;

  String basis;

  String note;

  int employeeId;

  _i2.Employee? employee;

  bool signed;

  @override
  _i1.Table get table => t;

  ActVHEFZK copyWith({
    int? id,
    DateTime? date,
    String? basis,
    String? note,
    int? employeeId,
    _i2.Employee? employee,
    bool? signed,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'date': date.toJson(),
      'basis': basis,
      'note': note,
      'employeeId': employeeId,
      if (employee != null) 'employee': employee?.toJson(),
      'signed': signed,
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'date': date,
      'basis': basis,
      'note': note,
      'employeeId': employeeId,
      'signed': signed,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'date': date.toJson(),
      'basis': basis,
      'note': note,
      'employeeId': employeeId,
      if (employee != null) 'employee': employee?.allToJson(),
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
      case 'basis':
        basis = value;
        return;
      case 'note':
        note = value;
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
  static Future<List<ActVHEFZK>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ActVHEFZKTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    ActVHEFZKInclude? include,
  }) async {
    return session.db.find<ActVHEFZK>(
      where: where != null ? where(ActVHEFZK.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findRow instead.')
  static Future<ActVHEFZK?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ActVHEFZKTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    ActVHEFZKInclude? include,
  }) async {
    return session.db.findSingleRow<ActVHEFZK>(
      where: where != null ? where(ActVHEFZK.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<ActVHEFZK?> findById(
    _i1.Session session,
    int id, {
    ActVHEFZKInclude? include,
  }) async {
    return session.db.findById<ActVHEFZK>(
      id,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<ActVHEFZKTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<ActVHEFZK>(
      where: where(ActVHEFZK.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    ActVHEFZK row, {
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
    ActVHEFZK row, {
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
    ActVHEFZK row, {
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
    _i1.WhereExpressionBuilder<ActVHEFZKTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<ActVHEFZK>(
      where: where != null ? where(ActVHEFZK.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static ActVHEFZKInclude include({_i2.EmployeeInclude? employee}) {
    return ActVHEFZKInclude._(employee: employee);
  }

  static ActVHEFZKIncludeList includeList({
    _i1.WhereExpressionBuilder<ActVHEFZKTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ActVHEFZKTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ActVHEFZKTable>? orderByList,
    ActVHEFZKInclude? include,
  }) {
    return ActVHEFZKIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ActVHEFZK.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(ActVHEFZK.t),
      include: include,
    );
  }
}

class _Undefined {}

class _ActVHEFZKImpl extends ActVHEFZK {
  _ActVHEFZKImpl({
    int? id,
    required DateTime date,
    required String basis,
    required String note,
    required int employeeId,
    _i2.Employee? employee,
    required bool signed,
  }) : super._(
          id: id,
          date: date,
          basis: basis,
          note: note,
          employeeId: employeeId,
          employee: employee,
          signed: signed,
        );

  @override
  ActVHEFZK copyWith({
    Object? id = _Undefined,
    DateTime? date,
    String? basis,
    String? note,
    int? employeeId,
    Object? employee = _Undefined,
    bool? signed,
  }) {
    return ActVHEFZK(
      id: id is int? ? id : this.id,
      date: date ?? this.date,
      basis: basis ?? this.basis,
      note: note ?? this.note,
      employeeId: employeeId ?? this.employeeId,
      employee:
          employee is _i2.Employee? ? employee : this.employee?.copyWith(),
      signed: signed ?? this.signed,
    );
  }
}

class ActVHEFZKTable extends _i1.Table {
  ActVHEFZKTable({super.tableRelation}) : super(tableName: 'act_vh_efzk') {
    date = _i1.ColumnDateTime(
      'date',
      this,
    );
    basis = _i1.ColumnString(
      'basis',
      this,
    );
    note = _i1.ColumnString(
      'note',
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

  late final _i1.ColumnString basis;

  late final _i1.ColumnString note;

  late final _i1.ColumnInt employeeId;

  _i2.EmployeeTable? _employee;

  late final _i1.ColumnBool signed;

  _i2.EmployeeTable get employee {
    if (_employee != null) return _employee!;
    _employee = _i1.createRelationTable(
      relationFieldName: 'employee',
      field: ActVHEFZK.t.employeeId,
      foreignField: _i2.Employee.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.EmployeeTable(tableRelation: foreignTableRelation),
    );
    return _employee!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        date,
        basis,
        note,
        employeeId,
        signed,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'employee') {
      return employee;
    }
    return null;
  }
}

@Deprecated('Use ActVHEFZKTable.t instead.')
ActVHEFZKTable tActVHEFZK = ActVHEFZKTable();

class ActVHEFZKInclude extends _i1.IncludeObject {
  ActVHEFZKInclude._({_i2.EmployeeInclude? employee}) {
    _employee = employee;
  }

  _i2.EmployeeInclude? _employee;

  @override
  Map<String, _i1.Include?> get includes => {'employee': _employee};

  @override
  _i1.Table get table => ActVHEFZK.t;
}

class ActVHEFZKIncludeList extends _i1.IncludeList {
  ActVHEFZKIncludeList._({
    _i1.WhereExpressionBuilder<ActVHEFZKTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ActVHEFZK.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => ActVHEFZK.t;
}

class ActVHEFZKRepository {
  const ActVHEFZKRepository._();

  final attachRow = const ActVHEFZKAttachRowRepository._();

  Future<List<ActVHEFZK>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ActVHEFZKTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ActVHEFZKTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ActVHEFZKTable>? orderByList,
    _i1.Transaction? transaction,
    ActVHEFZKInclude? include,
  }) async {
    return session.dbNext.find<ActVHEFZK>(
      where: where?.call(ActVHEFZK.t),
      orderBy: orderBy?.call(ActVHEFZK.t),
      orderByList: orderByList?.call(ActVHEFZK.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<ActVHEFZK?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ActVHEFZKTable>? where,
    int? offset,
    _i1.OrderByBuilder<ActVHEFZKTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ActVHEFZKTable>? orderByList,
    _i1.Transaction? transaction,
    ActVHEFZKInclude? include,
  }) async {
    return session.dbNext.findFirstRow<ActVHEFZK>(
      where: where?.call(ActVHEFZK.t),
      orderBy: orderBy?.call(ActVHEFZK.t),
      orderByList: orderByList?.call(ActVHEFZK.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<ActVHEFZK?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    ActVHEFZKInclude? include,
  }) async {
    return session.dbNext.findById<ActVHEFZK>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  Future<List<ActVHEFZK>> insert(
    _i1.Session session,
    List<ActVHEFZK> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<ActVHEFZK>(
      rows,
      transaction: transaction,
    );
  }

  Future<ActVHEFZK> insertRow(
    _i1.Session session,
    ActVHEFZK row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<ActVHEFZK>(
      row,
      transaction: transaction,
    );
  }

  Future<List<ActVHEFZK>> update(
    _i1.Session session,
    List<ActVHEFZK> rows, {
    _i1.ColumnSelections<ActVHEFZKTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<ActVHEFZK>(
      rows,
      columns: columns?.call(ActVHEFZK.t),
      transaction: transaction,
    );
  }

  Future<ActVHEFZK> updateRow(
    _i1.Session session,
    ActVHEFZK row, {
    _i1.ColumnSelections<ActVHEFZKTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<ActVHEFZK>(
      row,
      columns: columns?.call(ActVHEFZK.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<ActVHEFZK> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<ActVHEFZK>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    ActVHEFZK row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<ActVHEFZK>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<ActVHEFZKTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<ActVHEFZK>(
      where: where(ActVHEFZK.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ActVHEFZKTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<ActVHEFZK>(
      where: where?.call(ActVHEFZK.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class ActVHEFZKAttachRowRepository {
  const ActVHEFZKAttachRowRepository._();

  Future<void> employee(
    _i1.Session session,
    ActVHEFZK actVHEFZK,
    _i2.Employee employee,
  ) async {
    if (actVHEFZK.id == null) {
      throw ArgumentError.notNull('actVHEFZK.id');
    }
    if (employee.id == null) {
      throw ArgumentError.notNull('employee.id');
    }

    var $actVHEFZK = actVHEFZK.copyWith(employeeId: employee.id);
    await session.dbNext.updateRow<ActVHEFZK>(
      $actVHEFZK,
      columns: [ActVHEFZK.t.employeeId],
    );
  }
}
