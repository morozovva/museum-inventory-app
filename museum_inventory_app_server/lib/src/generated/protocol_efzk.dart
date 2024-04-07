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

abstract class ProtocolEFZK extends _i1.TableRow {
  ProtocolEFZK._({
    int? id,
    required this.date,
    required this.discussion,
    required this.conclusion,
  }) : super(id);

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

  static final t = ProtocolEFZKTable();

  static const db = ProtocolEFZKRepository._();

  DateTime date;

  String discussion;

  String conclusion;

  @override
  _i1.Table get table => t;

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

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'date': date,
      'discussion': discussion,
      'conclusion': conclusion,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'date': date.toJson(),
      'discussion': discussion,
      'conclusion': conclusion,
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
      case 'discussion':
        discussion = value;
        return;
      case 'conclusion':
        conclusion = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<ProtocolEFZK>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ProtocolEFZKTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<ProtocolEFZK>(
      where: where != null ? where(ProtocolEFZK.t) : null,
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
  static Future<ProtocolEFZK?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ProtocolEFZKTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<ProtocolEFZK>(
      where: where != null ? where(ProtocolEFZK.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<ProtocolEFZK?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<ProtocolEFZK>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<ProtocolEFZKTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<ProtocolEFZK>(
      where: where(ProtocolEFZK.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    ProtocolEFZK row, {
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
    ProtocolEFZK row, {
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
    ProtocolEFZK row, {
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
    _i1.WhereExpressionBuilder<ProtocolEFZKTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<ProtocolEFZK>(
      where: where != null ? where(ProtocolEFZK.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static ProtocolEFZKInclude include() {
    return ProtocolEFZKInclude._();
  }

  static ProtocolEFZKIncludeList includeList({
    _i1.WhereExpressionBuilder<ProtocolEFZKTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ProtocolEFZKTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ProtocolEFZKTable>? orderByList,
    ProtocolEFZKInclude? include,
  }) {
    return ProtocolEFZKIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ProtocolEFZK.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(ProtocolEFZK.t),
      include: include,
    );
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

class ProtocolEFZKTable extends _i1.Table {
  ProtocolEFZKTable({super.tableRelation}) : super(tableName: 'protocol_efzk') {
    date = _i1.ColumnDateTime(
      'date',
      this,
    );
    discussion = _i1.ColumnString(
      'discussion',
      this,
    );
    conclusion = _i1.ColumnString(
      'conclusion',
      this,
    );
  }

  late final _i1.ColumnDateTime date;

  late final _i1.ColumnString discussion;

  late final _i1.ColumnString conclusion;

  @override
  List<_i1.Column> get columns => [
        id,
        date,
        discussion,
        conclusion,
      ];
}

@Deprecated('Use ProtocolEFZKTable.t instead.')
ProtocolEFZKTable tProtocolEFZK = ProtocolEFZKTable();

class ProtocolEFZKInclude extends _i1.IncludeObject {
  ProtocolEFZKInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => ProtocolEFZK.t;
}

class ProtocolEFZKIncludeList extends _i1.IncludeList {
  ProtocolEFZKIncludeList._({
    _i1.WhereExpressionBuilder<ProtocolEFZKTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ProtocolEFZK.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => ProtocolEFZK.t;
}

class ProtocolEFZKRepository {
  const ProtocolEFZKRepository._();

  Future<List<ProtocolEFZK>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ProtocolEFZKTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ProtocolEFZKTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ProtocolEFZKTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<ProtocolEFZK>(
      where: where?.call(ProtocolEFZK.t),
      orderBy: orderBy?.call(ProtocolEFZK.t),
      orderByList: orderByList?.call(ProtocolEFZK.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<ProtocolEFZK?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ProtocolEFZKTable>? where,
    int? offset,
    _i1.OrderByBuilder<ProtocolEFZKTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ProtocolEFZKTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<ProtocolEFZK>(
      where: where?.call(ProtocolEFZK.t),
      orderBy: orderBy?.call(ProtocolEFZK.t),
      orderByList: orderByList?.call(ProtocolEFZK.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<ProtocolEFZK?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<ProtocolEFZK>(
      id,
      transaction: transaction,
    );
  }

  Future<List<ProtocolEFZK>> insert(
    _i1.Session session,
    List<ProtocolEFZK> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<ProtocolEFZK>(
      rows,
      transaction: transaction,
    );
  }

  Future<ProtocolEFZK> insertRow(
    _i1.Session session,
    ProtocolEFZK row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<ProtocolEFZK>(
      row,
      transaction: transaction,
    );
  }

  Future<List<ProtocolEFZK>> update(
    _i1.Session session,
    List<ProtocolEFZK> rows, {
    _i1.ColumnSelections<ProtocolEFZKTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<ProtocolEFZK>(
      rows,
      columns: columns?.call(ProtocolEFZK.t),
      transaction: transaction,
    );
  }

  Future<ProtocolEFZK> updateRow(
    _i1.Session session,
    ProtocolEFZK row, {
    _i1.ColumnSelections<ProtocolEFZKTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<ProtocolEFZK>(
      row,
      columns: columns?.call(ProtocolEFZK.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<ProtocolEFZK> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<ProtocolEFZK>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    ProtocolEFZK row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<ProtocolEFZK>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<ProtocolEFZKTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<ProtocolEFZK>(
      where: where(ProtocolEFZK.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ProtocolEFZKTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<ProtocolEFZK>(
      where: where?.call(ProtocolEFZK.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
