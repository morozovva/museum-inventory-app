/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class InventoryBook extends _i1.TableRow {
  InventoryBook._({
    int? id,
    required this.recordId,
  }) : super(id);

  factory InventoryBook({
    int? id,
    required int recordId,
  }) = _InventoryBookImpl;

  factory InventoryBook.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return InventoryBook(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      recordId:
          serializationManager.deserialize<int>(jsonSerialization['recordId']),
    );
  }

  static final t = InventoryBookTable();

  static const db = InventoryBookRepository._();

  int recordId;

  @override
  _i1.Table get table => t;

  InventoryBook copyWith({
    int? id,
    int? recordId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'recordId': recordId,
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'recordId': recordId,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'recordId': recordId,
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
      case 'recordId':
        recordId = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<InventoryBook>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<InventoryBookTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<InventoryBook>(
      where: where != null ? where(InventoryBook.t) : null,
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
  static Future<InventoryBook?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<InventoryBookTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<InventoryBook>(
      where: where != null ? where(InventoryBook.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<InventoryBook?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<InventoryBook>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<InventoryBookTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<InventoryBook>(
      where: where(InventoryBook.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    InventoryBook row, {
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
    InventoryBook row, {
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
    InventoryBook row, {
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
    _i1.WhereExpressionBuilder<InventoryBookTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<InventoryBook>(
      where: where != null ? where(InventoryBook.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static InventoryBookInclude include() {
    return InventoryBookInclude._();
  }

  static InventoryBookIncludeList includeList({
    _i1.WhereExpressionBuilder<InventoryBookTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<InventoryBookTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<InventoryBookTable>? orderByList,
    InventoryBookInclude? include,
  }) {
    return InventoryBookIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(InventoryBook.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(InventoryBook.t),
      include: include,
    );
  }
}

class _Undefined {}

class _InventoryBookImpl extends InventoryBook {
  _InventoryBookImpl({
    int? id,
    required int recordId,
  }) : super._(
          id: id,
          recordId: recordId,
        );

  @override
  InventoryBook copyWith({
    Object? id = _Undefined,
    int? recordId,
  }) {
    return InventoryBook(
      id: id is int? ? id : this.id,
      recordId: recordId ?? this.recordId,
    );
  }
}

class InventoryBookTable extends _i1.Table {
  InventoryBookTable({super.tableRelation})
      : super(tableName: 'inventory_book') {
    recordId = _i1.ColumnInt(
      'recordId',
      this,
    );
  }

  late final _i1.ColumnInt recordId;

  @override
  List<_i1.Column> get columns => [
        id,
        recordId,
      ];
}

@Deprecated('Use InventoryBookTable.t instead.')
InventoryBookTable tInventoryBook = InventoryBookTable();

class InventoryBookInclude extends _i1.IncludeObject {
  InventoryBookInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => InventoryBook.t;
}

class InventoryBookIncludeList extends _i1.IncludeList {
  InventoryBookIncludeList._({
    _i1.WhereExpressionBuilder<InventoryBookTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(InventoryBook.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => InventoryBook.t;
}

class InventoryBookRepository {
  const InventoryBookRepository._();

  Future<List<InventoryBook>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<InventoryBookTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<InventoryBookTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<InventoryBookTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<InventoryBook>(
      where: where?.call(InventoryBook.t),
      orderBy: orderBy?.call(InventoryBook.t),
      orderByList: orderByList?.call(InventoryBook.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<InventoryBook?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<InventoryBookTable>? where,
    int? offset,
    _i1.OrderByBuilder<InventoryBookTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<InventoryBookTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<InventoryBook>(
      where: where?.call(InventoryBook.t),
      orderBy: orderBy?.call(InventoryBook.t),
      orderByList: orderByList?.call(InventoryBook.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<InventoryBook?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<InventoryBook>(
      id,
      transaction: transaction,
    );
  }

  Future<List<InventoryBook>> insert(
    _i1.Session session,
    List<InventoryBook> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<InventoryBook>(
      rows,
      transaction: transaction,
    );
  }

  Future<InventoryBook> insertRow(
    _i1.Session session,
    InventoryBook row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<InventoryBook>(
      row,
      transaction: transaction,
    );
  }

  Future<List<InventoryBook>> update(
    _i1.Session session,
    List<InventoryBook> rows, {
    _i1.ColumnSelections<InventoryBookTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<InventoryBook>(
      rows,
      columns: columns?.call(InventoryBook.t),
      transaction: transaction,
    );
  }

  Future<InventoryBook> updateRow(
    _i1.Session session,
    InventoryBook row, {
    _i1.ColumnSelections<InventoryBookTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<InventoryBook>(
      row,
      columns: columns?.call(InventoryBook.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<InventoryBook> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<InventoryBook>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    InventoryBook row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<InventoryBook>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<InventoryBookTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<InventoryBook>(
      where: where(InventoryBook.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<InventoryBookTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<InventoryBook>(
      where: where?.call(InventoryBook.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
