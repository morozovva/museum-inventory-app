/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class EntranceBook extends _i1.TableRow {
  EntranceBook._({
    int? id,
    required this.recordId,
  }) : super(id);

  factory EntranceBook({
    int? id,
    required int recordId,
  }) = _EntranceBookImpl;

  factory EntranceBook.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return EntranceBook(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      recordId:
          serializationManager.deserialize<int>(jsonSerialization['recordId']),
    );
  }

  static final t = EntranceBookTable();

  static const db = EntranceBookRepository._();

  int recordId;

  @override
  _i1.Table get table => t;

  EntranceBook copyWith({
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
  static Future<List<EntranceBook>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<EntranceBookTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<EntranceBook>(
      where: where != null ? where(EntranceBook.t) : null,
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
  static Future<EntranceBook?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<EntranceBookTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<EntranceBook>(
      where: where != null ? where(EntranceBook.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<EntranceBook?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<EntranceBook>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<EntranceBookTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<EntranceBook>(
      where: where(EntranceBook.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    EntranceBook row, {
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
    EntranceBook row, {
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
    EntranceBook row, {
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
    _i1.WhereExpressionBuilder<EntranceBookTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<EntranceBook>(
      where: where != null ? where(EntranceBook.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static EntranceBookInclude include() {
    return EntranceBookInclude._();
  }

  static EntranceBookIncludeList includeList({
    _i1.WhereExpressionBuilder<EntranceBookTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<EntranceBookTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<EntranceBookTable>? orderByList,
    EntranceBookInclude? include,
  }) {
    return EntranceBookIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(EntranceBook.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(EntranceBook.t),
      include: include,
    );
  }
}

class _Undefined {}

class _EntranceBookImpl extends EntranceBook {
  _EntranceBookImpl({
    int? id,
    required int recordId,
  }) : super._(
          id: id,
          recordId: recordId,
        );

  @override
  EntranceBook copyWith({
    Object? id = _Undefined,
    int? recordId,
  }) {
    return EntranceBook(
      id: id is int? ? id : this.id,
      recordId: recordId ?? this.recordId,
    );
  }
}

class EntranceBookTable extends _i1.Table {
  EntranceBookTable({super.tableRelation}) : super(tableName: 'entrance_book') {
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

@Deprecated('Use EntranceBookTable.t instead.')
EntranceBookTable tEntranceBook = EntranceBookTable();

class EntranceBookInclude extends _i1.IncludeObject {
  EntranceBookInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => EntranceBook.t;
}

class EntranceBookIncludeList extends _i1.IncludeList {
  EntranceBookIncludeList._({
    _i1.WhereExpressionBuilder<EntranceBookTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(EntranceBook.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => EntranceBook.t;
}

class EntranceBookRepository {
  const EntranceBookRepository._();

  Future<List<EntranceBook>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<EntranceBookTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<EntranceBookTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<EntranceBookTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<EntranceBook>(
      where: where?.call(EntranceBook.t),
      orderBy: orderBy?.call(EntranceBook.t),
      orderByList: orderByList?.call(EntranceBook.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<EntranceBook?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<EntranceBookTable>? where,
    int? offset,
    _i1.OrderByBuilder<EntranceBookTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<EntranceBookTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<EntranceBook>(
      where: where?.call(EntranceBook.t),
      orderBy: orderBy?.call(EntranceBook.t),
      orderByList: orderByList?.call(EntranceBook.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<EntranceBook?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<EntranceBook>(
      id,
      transaction: transaction,
    );
  }

  Future<List<EntranceBook>> insert(
    _i1.Session session,
    List<EntranceBook> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<EntranceBook>(
      rows,
      transaction: transaction,
    );
  }

  Future<EntranceBook> insertRow(
    _i1.Session session,
    EntranceBook row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<EntranceBook>(
      row,
      transaction: transaction,
    );
  }

  Future<List<EntranceBook>> update(
    _i1.Session session,
    List<EntranceBook> rows, {
    _i1.ColumnSelections<EntranceBookTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<EntranceBook>(
      rows,
      columns: columns?.call(EntranceBook.t),
      transaction: transaction,
    );
  }

  Future<EntranceBook> updateRow(
    _i1.Session session,
    EntranceBook row, {
    _i1.ColumnSelections<EntranceBookTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<EntranceBook>(
      row,
      columns: columns?.call(EntranceBook.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<EntranceBook> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<EntranceBook>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    EntranceBook row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<EntranceBook>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<EntranceBookTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<EntranceBook>(
      where: where(EntranceBook.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<EntranceBookTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<EntranceBook>(
      where: where?.call(EntranceBook.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
