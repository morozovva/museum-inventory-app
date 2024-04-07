/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class DecomissionOrder extends _i1.TableRow {
  DecomissionOrder._({
    int? id,
    required this.file,
  }) : super(id);

  factory DecomissionOrder({
    int? id,
    required String file,
  }) = _DecomissionOrderImpl;

  factory DecomissionOrder.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return DecomissionOrder(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      file: serializationManager.deserialize<String>(jsonSerialization['file']),
    );
  }

  static final t = DecomissionOrderTable();

  static const db = DecomissionOrderRepository._();

  String file;

  @override
  _i1.Table get table => t;

  DecomissionOrder copyWith({
    int? id,
    String? file,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'file': file,
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'file': file,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'file': file,
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
      case 'file':
        file = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<DecomissionOrder>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<DecomissionOrderTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<DecomissionOrder>(
      where: where != null ? where(DecomissionOrder.t) : null,
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
  static Future<DecomissionOrder?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<DecomissionOrderTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<DecomissionOrder>(
      where: where != null ? where(DecomissionOrder.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<DecomissionOrder?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<DecomissionOrder>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<DecomissionOrderTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<DecomissionOrder>(
      where: where(DecomissionOrder.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    DecomissionOrder row, {
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
    DecomissionOrder row, {
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
    DecomissionOrder row, {
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
    _i1.WhereExpressionBuilder<DecomissionOrderTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<DecomissionOrder>(
      where: where != null ? where(DecomissionOrder.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static DecomissionOrderInclude include() {
    return DecomissionOrderInclude._();
  }

  static DecomissionOrderIncludeList includeList({
    _i1.WhereExpressionBuilder<DecomissionOrderTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<DecomissionOrderTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<DecomissionOrderTable>? orderByList,
    DecomissionOrderInclude? include,
  }) {
    return DecomissionOrderIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(DecomissionOrder.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(DecomissionOrder.t),
      include: include,
    );
  }
}

class _Undefined {}

class _DecomissionOrderImpl extends DecomissionOrder {
  _DecomissionOrderImpl({
    int? id,
    required String file,
  }) : super._(
          id: id,
          file: file,
        );

  @override
  DecomissionOrder copyWith({
    Object? id = _Undefined,
    String? file,
  }) {
    return DecomissionOrder(
      id: id is int? ? id : this.id,
      file: file ?? this.file,
    );
  }
}

class DecomissionOrderTable extends _i1.Table {
  DecomissionOrderTable({super.tableRelation})
      : super(tableName: 'decomission_order') {
    file = _i1.ColumnString(
      'file',
      this,
    );
  }

  late final _i1.ColumnString file;

  @override
  List<_i1.Column> get columns => [
        id,
        file,
      ];
}

@Deprecated('Use DecomissionOrderTable.t instead.')
DecomissionOrderTable tDecomissionOrder = DecomissionOrderTable();

class DecomissionOrderInclude extends _i1.IncludeObject {
  DecomissionOrderInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => DecomissionOrder.t;
}

class DecomissionOrderIncludeList extends _i1.IncludeList {
  DecomissionOrderIncludeList._({
    _i1.WhereExpressionBuilder<DecomissionOrderTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(DecomissionOrder.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => DecomissionOrder.t;
}

class DecomissionOrderRepository {
  const DecomissionOrderRepository._();

  Future<List<DecomissionOrder>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<DecomissionOrderTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<DecomissionOrderTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<DecomissionOrderTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<DecomissionOrder>(
      where: where?.call(DecomissionOrder.t),
      orderBy: orderBy?.call(DecomissionOrder.t),
      orderByList: orderByList?.call(DecomissionOrder.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<DecomissionOrder?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<DecomissionOrderTable>? where,
    int? offset,
    _i1.OrderByBuilder<DecomissionOrderTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<DecomissionOrderTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<DecomissionOrder>(
      where: where?.call(DecomissionOrder.t),
      orderBy: orderBy?.call(DecomissionOrder.t),
      orderByList: orderByList?.call(DecomissionOrder.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<DecomissionOrder?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<DecomissionOrder>(
      id,
      transaction: transaction,
    );
  }

  Future<List<DecomissionOrder>> insert(
    _i1.Session session,
    List<DecomissionOrder> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<DecomissionOrder>(
      rows,
      transaction: transaction,
    );
  }

  Future<DecomissionOrder> insertRow(
    _i1.Session session,
    DecomissionOrder row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<DecomissionOrder>(
      row,
      transaction: transaction,
    );
  }

  Future<List<DecomissionOrder>> update(
    _i1.Session session,
    List<DecomissionOrder> rows, {
    _i1.ColumnSelections<DecomissionOrderTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<DecomissionOrder>(
      rows,
      columns: columns?.call(DecomissionOrder.t),
      transaction: transaction,
    );
  }

  Future<DecomissionOrder> updateRow(
    _i1.Session session,
    DecomissionOrder row, {
    _i1.ColumnSelections<DecomissionOrderTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<DecomissionOrder>(
      row,
      columns: columns?.call(DecomissionOrder.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<DecomissionOrder> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<DecomissionOrder>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    DecomissionOrder row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<DecomissionOrder>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<DecomissionOrderTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<DecomissionOrder>(
      where: where(DecomissionOrder.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<DecomissionOrderTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<DecomissionOrder>(
      where: where?.call(DecomissionOrder.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
